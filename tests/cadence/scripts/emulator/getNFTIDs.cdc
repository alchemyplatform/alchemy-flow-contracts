import NonFungibleToken from "./NonFungibleToken.cdc"
import TestNFT from "./TestNFT.cdc"
import TestNFTWithViews from "./TestNFTWithViews.cdc"

pub fun main(ownerAddress: Address): {String: [UInt64]} {
    let owner = getAccount(ownerAddress)
    let ids: {String: [UInt64]} = {}

    if let col = owner.getCapability(TestNFT.CollectionPublicPath)
        .borrow<&{TestNFT.TestNFTCollectionPublic}>() {
            ids["TestNFT"] = col.getIDs()
        }
    if let col = owner.getCapability(TestNFTWithViews.CollectionPublicPath)
        .borrow<&{TestNFTWithViews.TestNFTWithViewsCollectionPublic}>() {
            ids["TestNFTWithViews"] = col.getIDs()
        }

    return ids
}
