import AlchemyMetadataWrapperTestnetShard3 from 0x05ff2c7b4c40de11

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperTestnetShard3.getNFTIDs(ownerAddress: account)
}
