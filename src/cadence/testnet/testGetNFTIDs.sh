CONTRACT=$1

case $CONTRACT in
TheFabricantMysteryBox_FF1)
  echo "TheFabricantMysteryBox_FF1"
  flow scripts execute getNFTIDs.cdc 0x716db717f9240d8a --network testnet
  ;;
ZeedzINO)
  echo "ZeedzINO"
  flow scripts execute getNFTIDs.cdc 0x2dda9145001182e0 --network testnet
  ;;
Kicks)
  echo "ClosedSrc - NFTLX"
  flow scripts execute getNFTIDs.cdc 0xe861e151d3556d70 --network testnet
  ;;
MintStoreItem)
  echo "MintStoreItem"
  flow scripts execute getNFTIDs.cdc 0xb968bbed955def60 --network testnet
  ;;
BarterYard)
  echo "Barter Yard Club"
  flow scripts execute getNFTIDs.cdc 0x4300fc3a11778a9a --network testnet
  ;;
BarterYardClubWerewolf)
  echo "Barter Yard Club"
  flow scripts execute getNFTIDs.cdc 0x195caada038c5806 --network testnet
  ;;
NFTContract)
  echo "NFTContract"
  flow scripts execute getNFTIDs.cdc 0x0add010813a8c23f --network testnet
  ;;
DayNFT)
  echo "DayNFT"
  flow scripts execute getNFTIDs.cdc 0x1d1f11dcbae7f839 --network testnet
  ;;
NowggNFT)
  echo "NowggNFT"
  flow scripts execute getNFTIDs.cdc 0x8cfe54881e5edd9b --network testnet
  ;;
GogoroCollectible)
  echo "GogoroCollectible"
  flow scripts execute getNFTIDs.cdc 0x42bd08a9f3724129 --network testnet
  ;;
YahooCollectible)
  echo "YahooCollectible"
  flow scripts execute getNFTIDs.cdc 0x66ca989c2cd296fb --network testnet
  ;;
YahooPartnersCollectible)
  echo "YahooPartnersCollectible"
  flow scripts execute getNFTIDs.cdc 0x66ca989c2cd296fb --network testnet
  ;;
BlindBoxRedeemVoucher)
  echo "BlindBoxRedeemVoucher"
  flow scripts execute getNFTIDs.cdc 0xeec852ceb51a5fb3 --network testnet
  ;;
SomePlaceCollectible)
  echo "SomePlaceCollectible"
  flow scripts execute getNFTIDs.cdc 0x3b0f2d267cf8c8e9 --network testnet
  ;;
ARTIFACTPack)
  echo "ARTIFACTPack"
  flow scripts execute getNFTIDs.cdc 0x6bc26c5911f3b19d --network testnet
  ;;
ARTIFACT)
  echo "ARTIFACT"
  flow scripts execute getNFTIDs.cdc 0x6bc26c5911f3b19d --network testnet
  ;;
NftReality)
  echo "NftReality"
  flow scripts execute getNFTIDs.cdc 0x73c43b6c0a8a5b5b --network testnet
  ;;
MatrixWorldAssetsNFT)
  echo "MatrixWorldAssetsNFT"
  flow scripts execute getNFTIDs.cdc 0xed2a0254c4130116 --network testnet
  ;;
RacingTime)
  echo "RacingTime"
  flow scripts execute getNFTIDs.cdc 0xe0e251b47ff622ba --network testnet
  ;;
Momentables)
  echo "Momentables"
  flow scripts execute getNFTIDs.cdc 0x9f2eb43b6df02730 --network testnet
  ;;
DropzToken)
  echo "DropzToken"
  flow scripts execute getNFTIDs.cdc 0x439877bf53be43cf --network testnet
  ;;
Necryptolis)
  echo "Necryptolis"
  flow scripts execute getNFTIDs.cdc 0x7116d5dba9264131 --network testnet
  ;;
FLOAT)
  echo "FLOAT"
  flow scripts execute getNFTIDs.cdc 0x0afe396ebc8eee65 --network testnet
  ;;
BreakingT_NFT)
  echo "BreakingT_NFT"
  flow scripts execute getNFTIDs.cdc 0x04625c28593d9408 --network testnet
  ;;
Owners)
  echo "Owners"
  flow scripts execute getNFTIDs.cdc 0x890f42a0a872ae77 --network testnet
  ;;
Metaverse)
  echo "Metaverse"
  flow scripts execute getNFTIDs.cdc 0x1500efa9e71dcd23 --network testnet
  ;;
Swaychain)
  echo "Swaychain"
  flow scripts execute getNFTIDs.cdc 0x5dfbd0d5aba6acf7 --network testnet
  ;;
TheFabricantS2ItemNFT)
  echo "TheFabricantS2ItemNFT"
  flow scripts execute getNFTIDs.cdc 0x2bcdfcf5d9e73154 --network testnet
  ;;
VnMiss)
  echo "VnMiss"
  flow scripts execute getNFTIDs.cdc 0x4bab9fe5c1ff69f6 --network testnet
  ;;
AvatarArt)
  echo "AvatarArt"
  flow scripts execute getNFTIDs.cdc 0xae12a483d2db4a63 --network testnet
  ;;
Dooverse)
  echo "Dooverse"
  flow scripts execute getNFTIDs.cdc 0x8f4ef32a0ffb99a6 --network testnet
  ;;
Gear)
  echo "Gear"
  flow scripts execute getNFTIDs.cdc 0x8c7e52f597aa6117 --network testnet
  ;;
ProShop_5)
  echo "ProShop_5"
  flow scripts execute getNFTIDs.cdc 0x8c7e52f597aa6117 --network testnet
  ;;
TrartContractNFT)
  echo "TrartContractNFT"
  flow scripts execute getNFTIDs.cdc 0x3e100699f7218d1d --network testnet
  ;;
SturdyItems)
  echo "SturdyItems"
  flow scripts execute getNFTIDs.cdc 0x87ff916f3bbcf518 --network testnet
  ;;
TuneGO)
  echo "TuneGO"
  flow scripts execute getNFTIDs.cdc 0xb30ec2319df2aa30 --network testnet
  ;;
TicalUniverse)
  echo "TicalUniverse"
  flow scripts execute getNFTIDs.cdc 0x5511546363e3daa2 --network testnet
  ;;
QRL)
  echo "QRL"
  flow scripts execute getNFTIDs.cdc 0x5dfbd0d5aba6acf7 --network testnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
