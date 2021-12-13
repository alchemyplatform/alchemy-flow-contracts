CONTRACT=$1

case $CONTRACT in

  Gaia)
    echo "Gaia"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9eef2e4511390ce4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gaia" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1129" }] } }] }]' --network mainnet
    ;;

  MatrixWorldFlowFestNFT)
    echo "MatrixWorldFlowFestNFT"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5f14b7e68e0bc3c3" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MatrixWorldFlowFestNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "3296" }] } }] }]' --network mainnet
    ;;

  Starly)
    echo "Starly"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xd88dea66b28c8637" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "StarlyCard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "752" }] } }] }]' --network mainnet
    ;;

  MyNft)
    echo "Eternal"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x1f56a1e665826a52" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Shard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6014" }] } }] }]' --network mainnet
    ;;

  NyatheesOVO)
    echo "NyatheesOVO"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x1a281ada027d19dd" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NyatheesOVO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6042" }] } }] }]' --network mainnet
    ;;

  RaceDay)
    echo "RaceDay"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x61c73078c27d29a8" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "RaceDay_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "14282" }] } }] }]' --network mainnet
    ;;

  EternalShard)
    echo "EternalShard"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x1f56a1e665826a52" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "EternalShard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6014" }] } }] }]' --network mainnet
    ;;

  EternalMoment)
    echo "EternalMoment"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x12d39bbcbd371c43" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "EternalMoment" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "119328" }] } }] }]' --network mainnet
    ;;

  Flowns)
    echo "FlownsDomain"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc0597793abff95ba" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Domains" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "16259" }] } }] }]' --network mainnet
    ;;

  TFCItems)
    echo "TFCItems"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x81e95660ab5308e1" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TFCItems" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "22" }] } }] }]' --network mainnet
  ;;

  Gooberz)
    echo "Gooberz"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x445c3806345e5409" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gooberz" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "116" }] } }] }]' --network mainnet
    ;;

  BiscuitsNGroovy)
    echo "BiscuitsNGroovy"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5a6e3ae559f72121" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "BiscuitsNGroovy" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "68" }] } }] }]' --network mainnet
    ;;

  *)
    echo "Unknown contract"
    ;;
esac
