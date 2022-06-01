import AlchemyMetadataWrapperTestnetShard1 from 0x89f6326ec81c244d
import AlchemyMetadataWrapperTestnetShard2 from 0x89f6326ec81c244d
import AlchemyMetadataWrapperTestnetShard3 from 0x89f6326ec81c244d

pub fun main(account: Address): {String: [UInt64]} {
    let nfts: {String: [UInt64]} = {} 
    let shard1Result = AlchemyMetadataWrapperTestnetShard1.getNFTIDs(ownerAddress: account)
    for key in shard1Result.keys {
        nfts.insert(key: key, shard1Result[key] ?? [])
    }
    let shard2Result = AlchemyMetadataWrapperTestnetShard2.getNFTIDs(ownerAddress: account)
    for key in shard2Result.keys {
        nfts.insert(key: key, shard2Result[key] ?? [])
    }
    let shard3Result = AlchemyMetadataWrapperTestnetShard3.getNFTIDs(ownerAddress: account)
    for key in shard3Result.keys {
        nfts.insert(key: key, shard3Result[key] ?? [])
    }
    return nfts
}
