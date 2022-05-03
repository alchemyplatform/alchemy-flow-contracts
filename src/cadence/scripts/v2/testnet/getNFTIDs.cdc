import AlchemyMetadataWrapperTestnet from "../../../contracts/AlchemyMetadataWrapperTestnet.cdc"

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperTestnet.getNFTIDs(ownerAddress: account)
}
