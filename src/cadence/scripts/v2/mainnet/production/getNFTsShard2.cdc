import AlchemyMetadataWrapperMainnetShard2 from 0xb9ebc59e88fe0803

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperMainnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids)
}