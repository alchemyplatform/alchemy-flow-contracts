import AlchemyMetadataWrapperTestnet from 0x05ff2c7b4c40de11

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperTestnet.NFTData?] {
    return AlchemyMetadataWrapperTestnet.getNFTs(ownerAddress: ownerAddress, ids: ids)
}