CONTRACT=$1

case $CONTRACT in
TheFabricantMysteryBox_FF1)
  echo "TheFabricantMysteryBox_FF1"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x716db717f9240d8a" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantMysteryBox_FF1" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network testnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
