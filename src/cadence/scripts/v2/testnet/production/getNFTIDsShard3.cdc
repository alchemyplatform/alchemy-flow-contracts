import AlchemyMetadataWrapperTestnetShard3 from 0x89f6326ec81c244d

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperTestnetShard3.getNFTIDs(ownerAddress: account)
}
