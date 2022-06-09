import AlchemyMetadataWrapperMainnetShard4 from 0xb9ebc59e88fe0803

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperMainnetShard4.getNFTs(ownerAddress: ownerAddress, ids: ids)
}