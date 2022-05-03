import AlchemyMetadataWrapperEmulator from "../../../contracts/AlchemyMetadataWrapperEmulator.cdc"

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [AlchemyMetadataWrapperEmulator.NFTData?] {
    return AlchemyMetadataWrapperEmulator.getNFTs(ownerAddress: ownerAddress, ids: ids)
}