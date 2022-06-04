import AlchemyMetadataWrapperTestnetShard1 from 0x05ff2c7b4c40de11
import AlchemyMetadataWrapperTestnetShard2 from 0x05ff2c7b4c40de11
import AlchemyMetadataWrapperTestnetShard3 from 0x05ff2c7b4c40de11

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    let nfts: [AnyStruct?] = []
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard1.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids))
    nfts.appendAll(AlchemyMetadataWrapperTestnetShard3.getNFTs(ownerAddress: ownerAddress, ids: ids))
    return nfts
}