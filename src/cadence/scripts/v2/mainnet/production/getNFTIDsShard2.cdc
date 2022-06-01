import AlchemyMetadataWrapperMainnetShard2 from 0xb9ebc59e88fe0803

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperMainnetShard2.getNFTIDs(ownerAddress: account)
}
