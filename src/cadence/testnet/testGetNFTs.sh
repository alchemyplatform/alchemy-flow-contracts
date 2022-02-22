CONTRACT=$1

case $CONTRACT in
TheFabricantMysteryBox_FF1)
  echo "TheFabricantMysteryBox_FF1"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x716db717f9240d8a" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantMysteryBox_FF1" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network testnet
  ;;
ZeedzINO)
  echo "ZeedzINO"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x2dda9145001182e0" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ZeedzINO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "5042" }] } }] }]' --network testnet
  ;;
Kicks)
  echo "ClosedSrc - NFTLX"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe861e151d3556d70" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Kicks" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "3" }] } }] }]' --network testnet
  ;;

MintStoreItem)
    echo "MintStoreItem"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xb968bbed955def60" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MintStoreItem" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "283" }] } }] }]' --network testnet
  ;;
NFTContract)
echo "NFTContract"
flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0add010813a8c23f" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NFTContract" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network testnet
  ;; 
*)
  echo "Unknown contract"
  ;;
esac
