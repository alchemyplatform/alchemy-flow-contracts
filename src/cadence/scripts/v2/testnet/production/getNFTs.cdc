import AlchemyMetadataWrapperTestnetShard1 from 0x89f6326ec81c244d
import AlchemyMetadataWrapperTestnetShard2 from 0x89f6326ec81c244d
import AlchemyMetadataWrapperTestnetShard3 from 0x89f6326ec81c244d

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    let nfts: [AnyStruct?] = []
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard1.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids))
    return nfts
}