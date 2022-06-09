import AlchemyMetadataWrapperTestnetShard2 from 0x05ff2c7b4c40de11

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AnyStruct?] {
    return AlchemyMetadataWrapperTestnetShard2.getNFTs(ownerAddress: ownerAddress, ids: ids)
}