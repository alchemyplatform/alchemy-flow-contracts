import AlchemyMetadataWrapperTestnetShard2 from 0x89f6326ec81c244d

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperTestnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids)
}