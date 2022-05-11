import AlchemyMetadataWrapperMainnet from "../../../contracts/AlchemyMetadataWrapperMainnet.cdc"

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperMainnet.NFTData?] {
    return AlchemyMetadataWrapperMainnet.getNFTs(ownerAddress: ownerAddress, ids: ids)
}