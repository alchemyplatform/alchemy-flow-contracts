import AlchemyMetadataWrapperTestnetShard1 from 0x05ff2c7b4c40de11

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperTestnetShard1.getNFTs(ownerAddress: ownerAddress, ids: ids)
}