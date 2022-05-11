import AlchemyMetadataWrapperMainnet from "../../../contracts/AlchemyMetadataWrapperMainnet.cdc"

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperMainnet.getNFTIDs(ownerAddress: account)
}
