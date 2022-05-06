import AlchemyMetadataWrapperEmulator from "../../../contracts/AlchemyMetadataWrapperEmulator.cdc"

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperEmulator.getNFTIDs(ownerAddress: account)
}
