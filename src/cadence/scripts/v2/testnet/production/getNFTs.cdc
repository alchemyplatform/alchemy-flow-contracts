import AlchemyMetadataWrapperTestnet from 0x89f6326ec81c244d

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperTestnet.NFTData?] {
    return AlchemyMetadataWrapperTestnet.getNFTs(ownerAddress: ownerAddress, ids: ids)
}