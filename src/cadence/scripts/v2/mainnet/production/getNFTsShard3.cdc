import AlchemyMetadataWrapperMainnetShard3 from 0xb9ebc59e88fe0803

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperMainnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids)
}