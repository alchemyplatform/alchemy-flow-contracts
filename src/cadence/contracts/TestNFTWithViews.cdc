/*
    A Fake NFT contract for emulator testing.
*/
import NonFungibleToken from "./NonFungibleToken.cdc"
import MetadataViews from "./MetadataViews.cdc"

pub contract TestNFTWithViews: NonFungibleToken {
    // -----------------------------------------------------------------------
    // NonFungibleToken Standard Events
    // -----------------------------------------------------------------------

    pub event ContractInitialized()
    pub event Withdraw(id: UInt64, from: Address?)
    pub event Deposit(id: UInt64, to: Address?)

    // -----------------------------------------------------------------------
    // TestNFTWithViews Events
    // -----------------------------------------------------------------------

    pub event Mint(id: UInt64)
    pub event Burn(id: UInt64)

    // -----------------------------------------------------------------------
    // Named Paths
    // -----------------------------------------------------------------------

    pub let CollectionStoragePath: StoragePath
    pub let CollectionPublicPath: PublicPath

    // -----------------------------------------------------------------------
    // NonFungibleToken Standard Fields
    // -----------------------------------------------------------------------
    pub var totalSupply: UInt64
    // For the sake of testing, making these public.
    pub var collectionMetadata: { String: String }
    pub let idToMetadata: { UInt64: TestNFTWithViewsMetadata }

    pub struct TestNFTWithViewsMetadata {
        pub let metadata: { String: String }

        init(metadata: { String: String }) {
            self.metadata = metadata
        }
    }

    pub resource NFT : NonFungibleToken.INFT, MetadataViews.Resolver {
        pub let id: UInt64

        pub fun getViews(): [Type] { 
            return [
                Type<MetadataViews.Display>()
            ]
        }

        pub fun resolveView(_ view: Type): AnyStruct? {
            switch view {
                case Type<MetadataViews.Display>():
                    var ipfsImage = MetadataViews.IPFSFile(cid: "No thumbnail cid set", path: "No thumbnail pat set")
                    if (self.getMetadata().containsKey("thumbnailCID")) {
                        ipfsImage = MetadataViews.IPFSFile(cid: self.getMetadata()["thumbnailCID"]!, path: self.getMetadata()["thumbnailPath"])
                    }
                    return MetadataViews.Display(
                        name: self.getMetadata()["name"] ?? "Test NFT ".concat(self.id.toString()),
                        description: self.getMetadata()["description"] ?? "No description set",
                        thumbnail: ipfsImage
                    )
            }

            return nil
        }

        pub fun getMetadata(): {String: String} {
            if (TestNFTWithViews.idToMetadata[self.id] != nil) {
                return TestNFTWithViews.idToMetadata[self.id]!.metadata
            } else {
                return {}
            }
        }

        init(id: UInt64) {
            self.id = id
            emit Mint(id: self.id)
        }

        destroy() {
            emit Burn(id: self.id)
        }
    }

    pub resource interface TestNFTWithViewsCollectionPublic {
        pub fun deposit(token: @NonFungibleToken.NFT)
        pub fun getIDs(): [UInt64]
        pub fun borrowNFT(id: UInt64): &NonFungibleToken.NFT
        pub fun borrowTestNFTWithViews(id: UInt64): &TestNFTWithViews.NFT? {
            post {
                (result == nil) || (result?.id == id): 
                    "Cannot borrow TestNFTWithViews reference: The ID of the returned reference is incorrect"
            }
        }
    }

    pub resource Collection: TestNFTWithViewsCollectionPublic, NonFungibleToken.Provider, NonFungibleToken.Receiver, NonFungibleToken.CollectionPublic, MetadataViews.ResolverCollection {
        pub var ownedNFTs: @{UInt64: NonFungibleToken.NFT}

        init () {
            self.ownedNFTs <- {}
        }

        pub fun withdraw(withdrawID: UInt64): @NonFungibleToken.NFT {
            let token <- self.ownedNFTs.remove(key: withdrawID) ?? panic("missing NFT")
            emit Withdraw(id: token.id, from: self.owner?.address)
            return <-token
        }

        pub fun deposit(token: @NonFungibleToken.NFT) {
            let token <- token as! @TestNFTWithViews.NFT
            let id: UInt64 = token.id
            let oldToken <- self.ownedNFTs[id] <- token
            emit Deposit(id: id, to: self.owner?.address)
            destroy oldToken
        }

        pub fun getIDs(): [UInt64] {
            return self.ownedNFTs.keys
        }

        pub fun borrowNFT(id: UInt64): &NonFungibleToken.NFT {
            return &self.ownedNFTs[id] as &NonFungibleToken.NFT
        }

        pub fun borrowTestNFTWithViews(id: UInt64): &TestNFTWithViews.NFT? {
            if self.ownedNFTs[id] != nil {
                let ref = &self.ownedNFTs[id] as auth &NonFungibleToken.NFT
                return ref as! &TestNFTWithViews.NFT
            } else {
                return nil
            }
        }

        pub fun borrowViewResolver(id: UInt64): &AnyResource{MetadataViews.Resolver} {
            let nft = &self.ownedNFTs[id] as auth &NonFungibleToken.NFT
            let test = nft as! &TestNFTWithViews.NFT
            return test as &AnyResource{MetadataViews.Resolver}
        }

        destroy() {
            destroy self.ownedNFTs
        }
    }

    // -----------------------------------------------------------------------
    // Admin Functions
    // For the sake of testing, making these public.
    // -----------------------------------------------------------------------
    pub fun setEditionMetadata(editionNumber: UInt64, metadata: {String: String}) {
        self.idToMetadata[editionNumber] = TestNFTWithViewsMetadata(metadata: metadata)
    }

    pub fun setCollectionMetadata(metadata: {String: String}) {
        self.collectionMetadata = metadata
    }

    pub fun mint(nftID: UInt64) : @NonFungibleToken.NFT {
        self.totalSupply = self.totalSupply + 1
        return <-create NFT(id: nftID)
    }

    // -----------------------------------------------------------------------
    // Public Functions
    // -----------------------------------------------------------------------
    pub fun getTotalSupply(): UInt64 {
        return self.totalSupply
    }

    pub fun getCollectionMetadata(): {String: String} {
        return self.collectionMetadata
    }

    pub fun getEditionMetadata(_ edition: UInt64): {String: String} {
        if (self.idToMetadata[edition] != nil) {
            return self.idToMetadata[edition]!.metadata
        } else {
            return {}
        }
    }

    // -----------------------------------------------------------------------
    // NonFungibleToken Standard Functions
    // -----------------------------------------------------------------------
    pub fun createEmptyCollection(): @NonFungibleToken.Collection {
        return <- create Collection()
    }

    init() {
        self.totalSupply = 0
        self.collectionMetadata = {}
        self.idToMetadata = {}
        self.CollectionStoragePath = /storage/TestNFTWithViewsCollection
        self.CollectionPublicPath = /public/TestNFTWithViewsCollection

        emit ContractInitialized()
    }
}
 