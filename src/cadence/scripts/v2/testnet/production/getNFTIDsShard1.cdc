import AlchemyMetadataWrapperTestnetShard1 from 0x89f6326ec81c244d

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperTestnetShard1.getNFTIDs(ownerAddress: account)
}
