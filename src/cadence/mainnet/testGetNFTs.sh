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

EternalShard)
  echo "EternalShard"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x1f56a1e665826a52" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "EternalShard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6014" }] } }] }]' --network mainnet
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

MintStoreItem)
  echo "MintStoreItem"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x504eb7d5da2c1c4e" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MintStoreItem" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "295" }] } }] }]' --network mainnet
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
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x06193fb3f332748a" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Everbloom" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

CricketMoments)
  echo "CricketMoments"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9802f89626586479" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "CricketMoments" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "2906" }] } }] }]' --network mainnet
  ;;

KlktnNFT)
  echo "KlktnNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xc2f0dc51f05dc239" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "KlktnNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1122" }] } }] }]' --network mainnet
  ;;

KlktnNFT2)
  echo "KlktnNFT2"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x3564d691f3ae6103" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "KlktnNFT2" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "8" }] } }] }]' --network mainnet
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
  flow scripts execute -l debug getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0a2b2b1cdbd59848" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Beam" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "14851" }] } }] }]' --network mainnet
  ;;

Crave)
  echo "Crave"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x2a0ed092d77839b3" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Crave" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "5399" }] } }] }]' --network mainnet
  ;;

KOTD)
  echo "KOTD"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe9731837a1de398f" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "KOTD" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "10066" }] } }] }]' --network mainnet
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
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x09e03b1f871b3513" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantS1ItemNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

Andbox_NFT)
  echo "Andbox_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Andbox_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "720634" }] } }] }]' --network mainnet
  ;;

ZeedzINO)
  echo "ZeedzINO"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x62b3063fbe672fc8" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ZeedzINO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "26209" }] } }] }]' --network mainnet
  ;;

Kicks)
  echo "ClosedSrc - NFTLX"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xf3cc54f4d91c2f6c" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Kicks" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "79" }] } }] }]' --network mainnet
  ;;

BarterYard)
  echo "Barter Yard Club"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xa95b021cf8a30d80" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "BarterYardPack" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "365" }] } }] }]' --network mainnet
  ;;

BarterYardClubWerewolf)
  echo "Barter Yard Club"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x28abb9f291cadaf2" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "BarterYardClubWerewolf" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "3359" }] } }] }]' --network mainnet
  ;;

DayNFT)
  echo "DayNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x72c1174eb3f03380" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "DayNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

CNN)
  echo "CNN"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "CNN" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "115539" }] } }] }]' --network mainnet
  ;;

Costacos_NFT)
  echo "Costacos_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Costacos_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "760459" }] } }] }]' --network mainnet
  ;;

Canes_Vault_NFT)
  echo "Canes_Vault_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Canes_Vault_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "87104" }] } }] }]' --network mainnet
  ;;

AmericanAirlines_NFT)
  echo "AmericanAirlines_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xb07286ac3110ce44" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "AmericanAirlines_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "797069" }] } }] }]' --network mainnet
  ;;

The_Next_Cartel_NFT)
  echo "The_Next_Cartel_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "The_Next_Cartel_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "82979" }] } }] }]' --network mainnet
  ;;

Atheletes_Unlimited_NFT)
  echo "Atheletes_Unlimited_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Atheletes_Unlimited_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "30099" }] } }] }]' --network mainnet
  ;;

Art_NFT)
  echo "Art_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5c8bf6bc6ec6416b" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Art_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "794059" }] } }] }]' --network mainnet
  ;;

DGD_NFT)
  echo "DGD_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "DGD_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "95991" }] } }] }]' --network mainnet
  ;;

NowggNFT)
  echo "NowggNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xb759c620b47621d1" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NowggNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "26514" }] } }] }]' --network mainnet
  ;;

GogoroCollectible)
  echo "GogoroCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0957f404ff7463ed" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "GogoroCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

YahooCollectible)
  echo "YahooCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0957f404ff7463ed" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "YahooCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

YahooPartnersCollectible)
  echo "YahooPartnersCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0957f404ff7463ed" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "YahooPartnersCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

BlindBoxRedeemVoucher)
  echo "BlindBoxRedeemVoucher"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0957f404ff7463ed" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "BlindBoxRedeemVoucher" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

SomePlaceCollectible)
  echo "SomePlaceCollectible"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x4bcda1de73a17d95" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "SomePlaceCollectible" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "164763221" }] } }] }]' --network mainnet
  ;;

RacingTime)
  echo "RacingTime"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x8d4fa88ffa2d9117" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "RacingTime" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

ARTIFACTPack)
  echo "ARTIFACTPack"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xd9cccb588a70de71" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ARTIFACTPack" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

ARTIFACT)
  echo "ARTIFACT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xd9cccb588a70de71" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "ARTIFACT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

NftReality)
  echo "NftReality"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5892036f9111fbb8" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NftReality" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

MatrixWorldAssetsNFT)
  echo "MatrixWorldAssetsNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x70f9008528cf2a10" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MatrixWorldAssetsNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "306" }] } }] }]' --network mainnet
  ;;
Momentables)
  echo "Momentables"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xee54ca541c7b4893" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Momentables" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "83" }] } }] }]' --network mainnet
  ;;

TopShot)
  echo "TopShot"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x7e53480dbbac19b4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TopShot" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "19102634" }] } }] }]' --network mainnet
  ;;

GoatedGoats)
  echo "GoatedGoats"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x4bcda1de73a17d95" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "GoatedGoats" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "4471" }] } }] }]' --network mainnet
  ;;

GoatedGoatsTrait)
  echo "GoatedGoatsTrait"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x4bcda1de73a17d95" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "GoatedGoatsTrait" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "22256" }] } }] }]' --network mainnet
  ;;

DropzToken)
  echo "DropzToken"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x675d0b4a68754b6d" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "DropzToken" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

Necryptolis)
  echo "Necryptolis"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xa8faf3edb270f24e" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Necryptolis" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "16" }] } }] }]' --network mainnet
  ;;

FLOAT)
  echo "FLOAT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x92ba5cba77fc1e87" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "FLOAT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "185466660" }] } }] }]' --network mainnet
  ;;

BreakingT_NFT)
  echo "BreakingT_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x329feb3ab062d289" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "BreakingT_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

Owners)
  echo "Owners"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x41cad19decccdf25" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Owners" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

Metaverse)
  echo "Metaverse"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x256599e1b091be12" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Metaverse" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "0" }] } }] }]' --network mainnet
  ;;

Swaychain)
  echo "Swaychain"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xa4e9020ad21eb30b" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Swaychain" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "336" }] } }] }]' --network mainnet
  ;;

QRL)
  echo "QRL"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xa4e9020ad21eb30b" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "QRL" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "336" }] } }] }]' --network mainnet
  ;;

NFTContract)
  echo "NFTContract"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xcb5b64e4ae34e3ba" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NFTContract" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "13" }] } }] }]' --network mainnet
  ;;

TheFabricantS2ItemNFT)
  echo "TheFabricantS2ItemNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe413ceddca372042" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TheFabricantS1ItemNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "4" }] } }] }]' --network mainnet
  ;;

VnMiss)
  echo "VnMiss"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x80fd317af00c29fd" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "VnMiss" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

AvatarArt)
  echo "AvatarArt"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x80fd317af00c29fd" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "AvatarArt" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "103" }] } }] }]' --network mainnet
  ;;
Dooverse)
  echo "Dooverse"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe2da33edc1c98983" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Dooverse" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "4566" }] } }] }]' --network mainnet
  ;;
CryptoPiggo)
  echo "CryptoPiggo"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x8f6bf7a919bf4edb" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "CryptoPiggo" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "5607" }] } }] }]' --network mainnet
  ;;
TrartContractNFT)
  echo "TrartContractNFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x1c7ee996c28e0651" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TrartContractNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "110010300093" }] } }] }]' --network mainnet
  ;;

Evolution)
  echo "Evolution"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5159075e4cd4324c" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Evolution" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "8460" }] } }] }]' --network mainnet
  ;;

SturdyItems)
echo "SturdyItems"
flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x53cebd602474741e" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "SturdyItems" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "9069" }] } }] }]' --network mainnet
;;

TuneGO)
echo "TuneGO"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x0d9bc5af3fc0c2e3" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TuneGO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

TicalUniverse)
  echo "TicalUniverse"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xfef48806337aabf1" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "TicalUniverse" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1" }] } }] }]' --network mainnet
  ;;

PartyMansionDrinksContract)
  echo "PartyMansionDrinksContract"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xd575156f50620f91" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "PartyMansionDrinksContract" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "21" }] } }] }]' --network mainnet
  ;;

Moments)
  echo "Moments"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0xe8f02654e1a75428" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Moments" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "102723" }] } }] }]' --network mainnet
  ;;

MotoGPCard)
  echo "MotoGPCard"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x5deee05d29fb867c" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MotoGPCard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "37966" }] } }] }]' --network mainnet
  ;;
UFC_NFT)
  echo "UFC_NFT"
  flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x32441817bc2bbe9c" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "UFC_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "269720" }] } }] }]' --network mainnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
