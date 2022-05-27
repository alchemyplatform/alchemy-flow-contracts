import AlchemyMetadataWrapperMainnet from 0xeb8cb4c3157d5dac

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperMainnet.NFTData?] {
    return AlchemyMetadataWrapperMainnet.getNFTs(ownerAddress: ownerAddress, ids: ids)
}