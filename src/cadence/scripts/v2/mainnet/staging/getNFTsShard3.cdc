import AlchemyMetadataWrapperMainnetShard3 from 0xeb8cb4c3157d5dac

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperMainnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids)
}