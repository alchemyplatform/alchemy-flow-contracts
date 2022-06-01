import AlchemyMetadataWrapperMainnetShard1 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard2 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard3 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard4 from 0xb9ebc59e88fe0803

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    let nfts: [AnyStruct?] = []
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard1.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperMainnetShard4.getNFTs(ownerAddress: ownerAddress, ids: ids))
    return nfts
}