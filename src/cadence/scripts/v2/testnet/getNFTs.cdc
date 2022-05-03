import AlchemyMetadataWrapperTestnet from "../../../contracts/AlchemyMetadataWrapperTestnet.cdc"

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperTestnet.NFTData?] {
    return AlchemyMetadataWrapperTestnet.getNFTs(ownerAddress: ownerAddress, ids: ids)
}