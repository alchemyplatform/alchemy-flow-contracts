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
*)
  echo "Unknown contract"
  ;;
esac
