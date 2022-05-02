/*
    A Fake NFT contract for emulator testing.
*/
import NonFungibleToken from "./NonFungibleToken.cdc"

pub contract TestNFT: NonFungibleToken {
    // -----------------------------------------------------------------------
    // NonFungibleToken Standard Events
    // -----------------------------------------------------------------------

    pub event ContractInitialized()
    pub event Withdraw(id: UInt64, from: Address?)
    pub event Deposit(id: UInt64, to: Address?)

    // -----------------------------------------------------------------------
    // TestNFT Events
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

    access(self) var collectionMetadata: { String: String }
    access(self) let idToMetadata: { UInt64: TestNFTMetadata }

    pub struct TestNFTMetadata {
        pub let metadata: { String: String }

        init(metadata: { String: String }) {
            self.metadata = metadata
        }
    }

    pub resource NFT : NonFungibleToken.INFT {
        pub let id: UInt64

        pub fun getMetadata(): {String: String} {
            if (TestNFT.idToMetadata[self.id] != nil) {
                return TestNFT.idToMetadata[self.id]!.metadata
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

    pub resource interface TestNFTCollectionPublic {
        pub fun deposit(token: @NonFungibleToken.NFT)
        pub fun getIDs(): [UInt64]
        pub fun borrowNFT(id: UInt64): &NonFungibleToken.NFT
        pub fun borrowTestNFT(id: UInt64): &TestNFT.NFT? {
            post {
                (result == nil) || (result?.id == id): 
                    "Cannot borrow TestNFT reference: The ID of the returned reference is incorrect"
            }
        }
    }

    pub resource Collection: TestNFTCollectionPublic, NonFungibleToken.Provider, NonFungibleToken.Receiver, NonFungibleToken.CollectionPublic {
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
            let token <- token as! @TestNFT.NFT
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

        pub fun borrowTestNFT(id: UInt64): &TestNFT.NFT? {
            if self.ownedNFTs[id] != nil {
                let ref = &self.ownedNFTs[id] as auth &NonFungibleToken.NFT
                return ref as! &TestNFT.NFT
            } else {
                return nil
            }
        }

        destroy() {
            destroy self.ownedNFTs
        }
    }

    // -----------------------------------------------------------------------
    // Admin Functions
    // -----------------------------------------------------------------------
    access(account) fun setEditionMetadata(editionNumber: UInt64, metadata: {String: String}) {
        self.idToMetadata[editionNumber] = TestNFTMetadata(metadata: metadata)
    }

    access(account) fun setCollectionMetadata(metadata: {String: String}) {
        self.collectionMetadata = metadata
    }

    access(account) fun mint(nftID: UInt64) : @NonFungibleToken.NFT {
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
        self.CollectionStoragePath = /storage/TestNFTCollection
        self.CollectionPublicPath = /public/TestNFTCollection

        emit ContractInitialized()
    }
}
 