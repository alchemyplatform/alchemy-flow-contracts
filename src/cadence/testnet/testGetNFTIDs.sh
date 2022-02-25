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
<<<<<<< HEAD
=======
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
>>>>>>> fc382acce9a06f445dfeb713f4e3b905de8889a9
*)
  echo "Unknown contract"
  ;;
esac
