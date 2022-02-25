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
GogoroCollectible)
  echo "GogoroCollectible"
  flow scripts execute getNFTIDs.cdc 0x42bd08a9f3724129 --network testnet
  ;;
YahooCollectible)
  echo "YahooCollectible"
  flow scripts execute getNFTIDs.cdc 0x66ca989c2cd296fb --network testnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
