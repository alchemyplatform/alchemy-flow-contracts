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
*)
  echo "Unknown contract"
  ;;
esac
