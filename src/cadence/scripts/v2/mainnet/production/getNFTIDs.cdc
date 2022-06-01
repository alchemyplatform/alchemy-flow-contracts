import AlchemyMetadataWrapperMainnetShard1 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard2 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard3 from 0xb9ebc59e88fe0803
import AlchemyMetadataWrapperMainnetShard4 from 0xb9ebc59e88fe0803

pub fun main(account: Address): {String: [UInt64]} {
    let nfts: {String: [UInt64]} = {} 
    let shard1Result = AlchemyMetadataWrapperMainnetShard1.getNFTIDs(ownerAddress: account)
    for key in shard1Result.keys {
        nfts.insert(key: key, shard1Result[key] ?? [])
    }
    let shard2Result = AlchemyMetadataWrapperMainnetShard2.getNFTIDs(ownerAddress: account)
    for key in shard2Result.keys {
        nfts.insert(key: key, shard2Result[key] ?? [])
    }
    let shard3Result = AlchemyMetadataWrapperMainnetShard3.getNFTIDs(ownerAddress: account)
    for key in shard3Result.keys {
        nfts.insert(key: key, shard3Result[key] ?? [])
    }
    let shard4Result = AlchemyMetadataWrapperMainnetShard4.getNFTIDs(ownerAddress: account)
    for key in shard4Result.keys {
        nfts.insert(key: key, shard4Result[key] ?? [])
    }
    return nfts
}
