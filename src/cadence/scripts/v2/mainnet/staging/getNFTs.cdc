import AlchemyMetadataWrapperMainnetShard1 from 0xeb8cb4c3157d5dac
import AlchemyMetadataWrapperMainnetShard2 from 0xeb8cb4c3157d5dac
import AlchemyMetadataWrapperMainnetShard3 from 0xeb8cb4c3157d5dac
import AlchemyMetadataWrapperMainnetShard4 from 0xeb8cb4c3157d5dac

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    let nfts: [AnyStruct?] = []
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard1.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard4.getNFTs(ownerAddress: ownerAddress, ids: ids))
    return nfts
}