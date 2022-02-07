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

RaceDay_NFT)
  echo "RaceDay_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x61c73078c27d29a8" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "RaceDay_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "14282" }] } }] }]' --network mainnet
  ;;

RareRooms_NFT)
  echo "RareRooms_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "RareRooms_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "50720" }] } }] }]' --network mainnet
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

FantastecNFT)
  echo "FantastecNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x8764f467ac272246" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "FantastecNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6247" }] } }] }]' --network mainnet
  ;;

GeniaceNFT)
  echo "GeniaceNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9d6c1c883973c0b5" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "GeniaceNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

Everbloom)
  echo "Everbloom"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x6cced3c020fc5867" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Everbloom" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "5809" }] } }] }]' --network mainnet
  ;;

CricketMoments)
  echo "CricketMoments"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9802f89626586479" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "CricketMoments" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "2906" }] } }] }]' --network mainnet
  ;;

KlktnNFT)
  echo "KlktnNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "KlktnNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1122" }] } }] }]' --network mainnet
  ;;

MusicBlock)
  echo "MusicBlock"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MusicBlock" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "101342" }] } }] }]' --network mainnet
  ;;

Mynft)
  echo "Mynft"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Mynft" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "31682" }] } }] }]' --network mainnet
  ;;

SportsIconCollectible)
  echo "SportsIconCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "SportsIconCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "61529083" }] } }] }]' --network mainnet
  ;;

Gooberz)
  echo "Gooberz"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x445c3806345e5409" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gooberz" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "116" }] } }] }]' --network mainnet
  ;;

Xtingles)
  echo "XtinglesNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xf5b0eb433389ac3f" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Xtingles" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "78463" }] } }] }]' --network mainnet
  ;;

Beam)
  echo "Beam"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x13774a0e75c975d4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Beam" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "14685" }] } }] }]' --network mainnet
  ;;

Crave)
  echo "Crave"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x2a0ed092d77839b3" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Crave" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "5399" }] } }] }]' --network mainnet
  ;;

KOTD)
  echo "KOTD"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe4bf17ded24f783d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "KOTD" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "4877" }] } }] }]' --network mainnet
  ;;

InceptionAnimals)
  echo "InceptionAnimals"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x8ea44ab931cac762" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "InceptionAnimals" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

ThingFund)
  echo "ThingFund"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x98c9c2e548b84d31" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ThingFund" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

OneFootballCollectible)
  echo "OneFootballCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x90bd6b4845e310a0" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "OneFootballCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "90" }] } }] }]' --network mainnet
  ;;

TheFabricantMysteryBox_FF1)
  echo "TheFabricantMysteryBox_FF1"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe1d5954d03ccb02d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantMysteryBox_FF1" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "425" }] } }] }]' --network mainnet
  ;;

DieselNFT)
  echo "DieselNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe1d5954d03ccb02d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "DieselNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

MiamiNFT)
  echo "MiamiNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe1d5954d03ccb02d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MiamiNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

Bitku)
  echo "Bitku"
    flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xf61e40c19db2a9e2" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Bitku" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
    ;;

FlowFans)
  echo "FlowFans"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x99fed1e8da4c3431" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "FlowFans" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

AllDay)
  echo "AllDay"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe4cf4bdc1751c65d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "AllDay" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "50" }] } }] }]' --network mainnet
  ;;

PackNFT)
  echo "AllDayPackNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe4cf4bdc1751c65d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "PackNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

ItemNFT)
  echo "ItemNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xfc91de5e6566cc7c" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ItemNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "48" }] } }] }]' --network mainnet
  ;;

TheFabricantS1ItemNFT)
  echo "TheFabricantS1ItemNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9e03b1f871b3513" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantS1ItemNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;
ZeedzINO)
  echo "ZeedzINO"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe1c34bb70fbb5357" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ZeedzINO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
