CONTRACT=$1

case $CONTRACT in
Gaia)
  echo "Gaia"
  flow scripts execute getNFTIDs.cdc 0x9eef2e4511390ce4 --network mainnet
  ;;

MatrixWorldFlowFestNFT)
  echo "MatrixWorldFlowFestNFT"
  flow scripts execute getNFTIDs.cdc 0x5f14b7e68e0bc3c3 --network mainnet
  ;;

Starly)
  echo "Starly"
  flow scripts execute getNFTIDs.cdc 0xd88dea66b28c8637 --network mainnet
  ;;

MyNft)
  echo "Eternal"
  flow scripts execute getNFTIDs.cdc 0x1f56a1e665826a52 --network mainnet
  ;;

NyatheesOVO)
  echo "NyatheesOVO"
  flow scripts execute getNFTIDs.cdc 0x1a281ada027d19dd --network mainnet
  ;;

RaceDay_NFT)
  echo "RaceDay_NFT"
  flow scripts execute getNFTIDs.cdc 0x61c73078c27d29a8 --network mainnet
  ;;

RareRooms_NFT)
  echo "RareRooms_NFT"
  flow scripts execute getNFTIDs.cdc 0xc2f0dc51f05dc239 --network mainnet
  ;;

EternalShard)
  echo "EternalShard"
  flow scripts execute getNFTIDs.cdc 0x1f56a1e665826a52 --network mainnet
  ;;

EternalMoment)
  echo "EternalMoment"
  flow scripts execute getNFTIDs.cdc 0x12d39bbcbd371c43 --network mainnet
  ;;

Flowns)
  echo "FlownsDomain"
  flow scripts execute getNFTIDs.cdc 0xc0597793abff95ba --network mainnet
  ;;

TFCItems)
  echo "TFCItems"
  flow scripts execute getNFTIDs.cdc 0x81e95660ab5308e1 --network mainnet
  ;;

Gooberz)
  echo "Gooberz"
  flow scripts execute getNFTIDs.cdc 0x445c3806345e5409 --network mainnet
  ;;

BiscuitsNGroovy)
  echo "BiscuitsNGroovy"
  flow scripts execute getNFTIDs.cdc 0x5a6e3ae559f72121 --network mainnet
  ;;

FantastecNFT)
  echo "FantastecNFT"
  flow scripts execute getNFTIDs.cdc 0x8764f467ac272246 --network mainnet
  ;;

GeniaceNFT)
  echo "GeniaceNFT"
  flow scripts execute getNFTIDs.cdc 0x9d6c1c883973c0b5 --network mainnet
  ;;

Everbloom)
  echo "Everbloom"
  flow scripts execute getNFTIDs.cdc 0x6cced3c020fc5867 --network mainnet
  ;;

CricketMoments)
  echo "CricketMoments"
  flow scripts execute getNFTIDs.cdc 0x9802f89626586479 --network mainnet
  ;;

KlktnNFT)
  echo "KlktnNFT"
  flow scripts execute getNFTIDs.cdc 0xc2f0dc51f05dc239 --network mainnet
  ;;

MusicBlock)
  echo "MusicBlock"
  flow scripts execute getNFTIDs.cdc 0xc2f0dc51f05dc239 --network mainnet
  ;;

Mynft)
  echo "Mynft"
  flow scripts execute getNFTIDs.cdc 0xc2f0dc51f05dc239 --network mainnet
  ;;

SportsIconCollectible)
  echo "SportsIconCollectible"
  flow scripts execute getNFTIDs.cdc 0xc2f0dc51f05dc239 --network mainnet
  ;;

Gooberz)
  echo "Gooberz"
  flow scripts execute getNFTIDs.cdc 0x445c3806345e5409 --network mainnet
  ;;

Xtingles)
  echo "XtinglesNFT"
  flow scripts execute getNFTIDs.cdc 0xf5b0eb433389ac3f --network mainnet
  ;;

Beam)
  echo "Beam"
  flow scripts execute getNFTIDs.cdc 0x13774a0e75c975d4 --network mainnet
  ;;

Crave)
  echo "Crave"
  flow scripts execute getNFTIDs.cdc 0x2a0ed092d77839b3 --network mainnet
  ;;

KOTD)
  echo "KOTD"
  flow scripts execute getNFTIDs.cdc 0xe4bf17ded24f783d --network mainnet
  ;;

InceptionAnimals)
  echo "InceptionAnimals"
  flow scripts execute getNFTIDs.cdc 0x8ea44ab931cac762 --network mainnet
  ;;

ThingFund)
  echo "ThingFund"
  flow scripts execute getNFTIDs.cdc 0x98c9c2e548b84d31 --network mainnet
  ;;

OneFootballCollectible)
  echo "OneFootballCollectible"
  flow scripts execute getNFTIDs.cdc 0x90bd6b4845e310a0 --network mainnet
  ;;

TheFabricantMysteryBox_FF1)
  echo "TheFabricantMysteryBox_FF1"
  flow scripts execute getNFTIDs.cdc 0xe1d5954d03ccb02d --network mainnet
  ;;

DieselNFT)
  echo "DieselNFT"
  flow scripts execute getNFTIDs.cdc 0xe1d5954d03ccb02d --network mainnet
  ;;

MiamiNFT)
  echo "MiamiNFT"
  flow scripts execute getNFTIDs.cdc 0xe1d5954d03ccb02d --network mainnet
  ;;

Bitku)
  echo "Bitku"
    flow scripts execute getNFTIDs.cdc 0xf61e40c19db2a9e2 --network mainnet
    ;;

FlowFans)
  echo "FlowFans"
  flow scripts execute getNFTIDs.cdc 0x99fed1e8da4c3431 --network mainnet
  ;;

AllDay)
  echo "AllDay"
  flow scripts execute getNFTIDs.cdc 0xe4cf4bdc1751c65d --network mainnet
  ;;

PackNFT)
  echo "AllDayPackNFT"
  flow scripts execute getNFTIDs.cdc 0xe4cf4bdc1751c65d --network mainnet
  ;;

ItemNFT)
  echo "ItemNFT"
  flow scripts execute getNFTIDs.cdc 0xfc91de5e6566cc7c --network mainnet
  ;;

TheFabricantS1ItemNFT)
  echo "TheFabricantS1ItemNFT"
  flow scripts execute getNFTIDs.cdc 0x9e03b1f871b3513 --network mainnet
  ;;
ZeedzINO)
  echo "ZeedzINO"
  flow scripts execute getNFTIDs.cdc 0xe1c34bb70fbb5357 --network mainnet
  ;;
*)
  echo "Unknown contract"
  ;;
esac
