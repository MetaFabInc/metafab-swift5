# Swift5 API client for MetaFabSwift5

Complete MetaFab API references and guides can be found at: https://trymetafab.com

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.5.1
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://trymetafab.com](https://trymetafab.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.trymetafab.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ContractsAPI* | [**createContract**](docs/ContractsAPI.md#createcontract) | **POST** /v1/contracts | Create custom contract
*ContractsAPI* | [**getContracts**](docs/ContractsAPI.md#getcontracts) | **GET** /v1/contracts | Get contracts
*ContractsAPI* | [**readContract**](docs/ContractsAPI.md#readcontract) | **GET** /v1/contracts/{contractId}/reads | Read contract data
*ContractsAPI* | [**transferContractOwnership**](docs/ContractsAPI.md#transfercontractownership) | **POST** /v1/contracts/{contractId}/owners | Transfer contract ownership
*ContractsAPI* | [**upgradeContractTrustedForwarder**](docs/ContractsAPI.md#upgradecontracttrustedforwarder) | **POST** /v1/contracts/{contractId}/forwarders | Upgrade contract trusted forwarder
*ContractsAPI* | [**writeContract**](docs/ContractsAPI.md#writecontract) | **POST** /v1/contracts/{contractId}/writes | Write contract data
*CurrenciesAPI* | [**batchTransferCurrency**](docs/CurrenciesAPI.md#batchtransfercurrency) | **POST** /v1/currencies/{currencyId}/batchTransfers | Batch transfer currency
*CurrenciesAPI* | [**burnCurrency**](docs/CurrenciesAPI.md#burncurrency) | **POST** /v1/currencies/{currencyId}/burns | Burn currency
*CurrenciesAPI* | [**createCurrency**](docs/CurrenciesAPI.md#createcurrency) | **POST** /v1/currencies | Create currency
*CurrenciesAPI* | [**getCurrencies**](docs/CurrenciesAPI.md#getcurrencies) | **GET** /v1/currencies | Get currencies
*CurrenciesAPI* | [**getCurrencyBalance**](docs/CurrenciesAPI.md#getcurrencybalance) | **GET** /v1/currencies/{currencyId}/balances | Get currency balance
*CurrenciesAPI* | [**getCurrencyFees**](docs/CurrenciesAPI.md#getcurrencyfees) | **GET** /v1/currencies/{currencyId}/fees | Get currency fees
*CurrenciesAPI* | [**getCurrencyRole**](docs/CurrenciesAPI.md#getcurrencyrole) | **GET** /v1/currencies/{currencyId}/roles | Get currency role
*CurrenciesAPI* | [**grantCurrencyRole**](docs/CurrenciesAPI.md#grantcurrencyrole) | **POST** /v1/currencies/{currencyId}/roles | Grant currency role
*CurrenciesAPI* | [**mintCurrency**](docs/CurrenciesAPI.md#mintcurrency) | **POST** /v1/currencies/{currencyId}/mints | Mint currency
*CurrenciesAPI* | [**revokeCurrencyRole**](docs/CurrenciesAPI.md#revokecurrencyrole) | **DELETE** /v1/currencies/{currencyId}/roles | Revoke currency role
*CurrenciesAPI* | [**setCurrencyFees**](docs/CurrenciesAPI.md#setcurrencyfees) | **POST** /v1/currencies/{currencyId}/fees | Set currency fees
*CurrenciesAPI* | [**transferCurrency**](docs/CurrenciesAPI.md#transfercurrency) | **POST** /v1/currencies/{currencyId}/transfers | Transfer currency
*EcosystemsAPI* | [**approveEcosystemGame**](docs/EcosystemsAPI.md#approveecosystemgame) | **POST** /v1/ecosystems/{ecosystemId}/games | Approve ecosystem game
*EcosystemsAPI* | [**authEcosystem**](docs/EcosystemsAPI.md#authecosystem) | **GET** /v1/ecosystems/auth | Authenticate ecosystem
*EcosystemsAPI* | [**authProfile**](docs/EcosystemsAPI.md#authprofile) | **GET** /v1/profiles/auth | Authenticate profile
*EcosystemsAPI* | [**authProfilePlayer**](docs/EcosystemsAPI.md#authprofileplayer) | **GET** /v1/profiles/{profileId}/games/{gameId}/players/auth | Authenticate profile player
*EcosystemsAPI* | [**createEcosystem**](docs/EcosystemsAPI.md#createecosystem) | **POST** /v1/ecosystems | Create ecosystem
*EcosystemsAPI* | [**createProfile**](docs/EcosystemsAPI.md#createprofile) | **POST** /v1/profiles | Create profile
*EcosystemsAPI* | [**createProfilePlayer**](docs/EcosystemsAPI.md#createprofileplayer) | **POST** /v1/profiles/{profileId}/games/{gameId}/players | Create profile player
*EcosystemsAPI* | [**getEcosystem**](docs/EcosystemsAPI.md#getecosystem) | **GET** /v1/ecosystems/{ecosystemId} | Get ecosystem
*EcosystemsAPI* | [**getEcosystemGame**](docs/EcosystemsAPI.md#getecosystemgame) | **GET** /v1/ecosystems/{ecosystemId}/games/{gameId} | Get ecosystem game
*EcosystemsAPI* | [**getEcosystemGames**](docs/EcosystemsAPI.md#getecosystemgames) | **GET** /v1/ecosystems/{ecosystemId}/games | Get ecosystem games
*EcosystemsAPI* | [**getProfileGame**](docs/EcosystemsAPI.md#getprofilegame) | **GET** /v1/profiles/{profileId}/games/{gameId} | Get profile game
*EcosystemsAPI* | [**getProfileGames**](docs/EcosystemsAPI.md#getprofilegames) | **GET** /v1/profiles/{profileId}/games | Get profile games
*EcosystemsAPI* | [**unapproveEcosystemGame**](docs/EcosystemsAPI.md#unapproveecosystemgame) | **DELETE** /v1/ecosystems/{ecosystemId}/games/{gameId} | Unapprove ecosystem game
*EcosystemsAPI* | [**updateEcosystem**](docs/EcosystemsAPI.md#updateecosystem) | **PATCH** /v1/ecosystems/{ecosystemId} | Update ecosystem
*EcosystemsAPI* | [**updateProfile**](docs/EcosystemsAPI.md#updateprofile) | **PATCH** /v1/profiles/{profileId} | Update profile
*EcosystemsAPI* | [**updateProfilePlayer**](docs/EcosystemsAPI.md#updateprofileplayer) | **PATCH** /v1/profiles/{profileId}/games/{gameId}/players/{playerId} | Update profile player
*GamesAPI* | [**authGame**](docs/GamesAPI.md#authgame) | **GET** /v1/games/auth | Authenticate game
*GamesAPI* | [**createGame**](docs/GamesAPI.md#creategame) | **POST** /v1/games | Create game
*GamesAPI* | [**getGame**](docs/GamesAPI.md#getgame) | **GET** /v1/games/{gameId} | Get game
*GamesAPI* | [**updateGame**](docs/GamesAPI.md#updategame) | **PATCH** /v1/games/{gameId} | Update game
*ItemsAPI* | [**batchMintCollectionItems**](docs/ItemsAPI.md#batchmintcollectionitems) | **POST** /v1/collections/{collectionId}/batchMints | Batch mint collection items
*ItemsAPI* | [**batchTransferCollectionItems**](docs/ItemsAPI.md#batchtransfercollectionitems) | **POST** /v1/collections/{collectionId}/batchTransfers | Batch transfer collection items
*ItemsAPI* | [**burnCollectionItem**](docs/ItemsAPI.md#burncollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/burns | Burn collection item
*ItemsAPI* | [**createCollection**](docs/ItemsAPI.md#createcollection) | **POST** /v1/collections | Create collection
*ItemsAPI* | [**createCollectionItem**](docs/ItemsAPI.md#createcollectionitem) | **POST** /v1/collections/{collectionId}/items | Create collection item
*ItemsAPI* | [**getCollectionApproval**](docs/ItemsAPI.md#getcollectionapproval) | **GET** /v1/collections/{collectionId}/approvals | Get collection approval
*ItemsAPI* | [**getCollectionItem**](docs/ItemsAPI.md#getcollectionitem) | **GET** /v1/collections/{collectionId}/items/{collectionItemId} | Get collection item
*ItemsAPI* | [**getCollectionItemBalance**](docs/ItemsAPI.md#getcollectionitembalance) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/balances | Get collection item balance
*ItemsAPI* | [**getCollectionItemBalances**](docs/ItemsAPI.md#getcollectionitembalances) | **GET** /v1/collections/{collectionId}/balances | Get collection item balances
*ItemsAPI* | [**getCollectionItemSupplies**](docs/ItemsAPI.md#getcollectionitemsupplies) | **GET** /v1/collections/{collectionId}/supplies | Get collection item supplies
*ItemsAPI* | [**getCollectionItemSupply**](docs/ItemsAPI.md#getcollectionitemsupply) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/supplies | Get collection item supply
*ItemsAPI* | [**getCollectionItemTimelock**](docs/ItemsAPI.md#getcollectionitemtimelock) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/timelocks | Get collection item timelock
*ItemsAPI* | [**getCollectionItems**](docs/ItemsAPI.md#getcollectionitems) | **GET** /v1/collections/{collectionId}/items | Get collection items
*ItemsAPI* | [**getCollectionRole**](docs/ItemsAPI.md#getcollectionrole) | **GET** /v1/collections/{collectionId}/roles | Get collection role
*ItemsAPI* | [**getCollections**](docs/ItemsAPI.md#getcollections) | **GET** /v1/collections | Get collections
*ItemsAPI* | [**grantCollectionRole**](docs/ItemsAPI.md#grantcollectionrole) | **POST** /v1/collections/{collectionId}/roles | Grant collection role
*ItemsAPI* | [**mintCollectionItem**](docs/ItemsAPI.md#mintcollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/mints | Mint collection item
*ItemsAPI* | [**revokeCollectionRole**](docs/ItemsAPI.md#revokecollectionrole) | **DELETE** /v1/collections/{collectionId}/roles | Revoke collection role
*ItemsAPI* | [**setCollectionApproval**](docs/ItemsAPI.md#setcollectionapproval) | **POST** /v1/collections/{collectionId}/approvals | Set collection approval
*ItemsAPI* | [**setCollectionItemTimelock**](docs/ItemsAPI.md#setcollectionitemtimelock) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/timelocks | Set collection item timelock
*ItemsAPI* | [**transferCollectionItem**](docs/ItemsAPI.md#transfercollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/transfers | Transfer collection item
*LootboxesAPI* | [**createLootboxManager**](docs/LootboxesAPI.md#createlootboxmanager) | **POST** /v1/lootboxManagers | Create lootbox manager
*LootboxesAPI* | [**getLootboxManagerLootbox**](docs/LootboxesAPI.md#getlootboxmanagerlootbox) | **GET** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId} | Get lootbox manager lootbox
*LootboxesAPI* | [**getLootboxManagerLootboxes**](docs/LootboxesAPI.md#getlootboxmanagerlootboxes) | **GET** /v1/lootboxManagers/{lootboxManagerId}/lootboxes | Get lootbox manager lootboxes
*LootboxesAPI* | [**getLootboxManagers**](docs/LootboxesAPI.md#getlootboxmanagers) | **GET** /v1/lootboxManagers | Get lootbox managers
*LootboxesAPI* | [**openLootboxManagerLootbox**](docs/LootboxesAPI.md#openlootboxmanagerlootbox) | **POST** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId}/opens | Open lootbox manager lootbox
*LootboxesAPI* | [**removeLootboxManagerLootbox**](docs/LootboxesAPI.md#removelootboxmanagerlootbox) | **DELETE** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId} | Remove lootbox manager lootbox
*LootboxesAPI* | [**setLootboxManagerLootbox**](docs/LootboxesAPI.md#setlootboxmanagerlootbox) | **POST** /v1/lootboxManagers/{lootboxManagerId}/lootboxes | Set lootbox manager lootbox
*PlayersAPI* | [**authPlayer**](docs/PlayersAPI.md#authplayer) | **GET** /v1/players/auth | Authenticate player
*PlayersAPI* | [**createPlayer**](docs/PlayersAPI.md#createplayer) | **POST** /v1/players | Create player
*PlayersAPI* | [**getPlayer**](docs/PlayersAPI.md#getplayer) | **GET** /v1/players/{playerId} | Get player
*PlayersAPI* | [**getPlayerData**](docs/PlayersAPI.md#getplayerdata) | **GET** /v1/players/{playerId}/data | Get player data
*PlayersAPI* | [**getPlayers**](docs/PlayersAPI.md#getplayers) | **GET** /v1/players | Get players
*PlayersAPI* | [**removePlayerConnectedWallet**](docs/PlayersAPI.md#removeplayerconnectedwallet) | **DELETE** /v1/players/{playerId}/wallets/{playerWalletId} | Remove player connected wallet
*PlayersAPI* | [**setPlayerConnectedWallet**](docs/PlayersAPI.md#setplayerconnectedwallet) | **POST** /v1/players/{playerId}/wallets | Set player connected wallet
*PlayersAPI* | [**setPlayerData**](docs/PlayersAPI.md#setplayerdata) | **POST** /v1/players/{playerId}/data | Set player data
*PlayersAPI* | [**updatePlayer**](docs/PlayersAPI.md#updateplayer) | **PATCH** /v1/players/{playerId} | Update player
*ShopsAPI* | [**createShop**](docs/ShopsAPI.md#createshop) | **POST** /v1/shops | Create shop
*ShopsAPI* | [**getShopOffer**](docs/ShopsAPI.md#getshopoffer) | **GET** /v1/shops/{shopId}/offers/{shopOfferId} | Get shop offer
*ShopsAPI* | [**getShopOffers**](docs/ShopsAPI.md#getshopoffers) | **GET** /v1/shops/{shopId}/offers | Get shop offers
*ShopsAPI* | [**getShops**](docs/ShopsAPI.md#getshops) | **GET** /v1/shops | Get shops
*ShopsAPI* | [**removeShopOffer**](docs/ShopsAPI.md#removeshopoffer) | **DELETE** /v1/shops/{shopId}/offers/{shopOfferId} | Remove shop offer
*ShopsAPI* | [**setShopOffer**](docs/ShopsAPI.md#setshopoffer) | **POST** /v1/shops/{shopId}/offers | Set shop offer
*ShopsAPI* | [**useShopOffer**](docs/ShopsAPI.md#useshopoffer) | **POST** /v1/shops/{shopId}/offers/{shopOfferId}/uses | Use shop offer
*ShopsAPI* | [**withdrawFromShop**](docs/ShopsAPI.md#withdrawfromshop) | **POST** /v1/shops/{shopId}/withdrawals | Withdraw from shop
*TransactionsAPI* | [**getTransaction**](docs/TransactionsAPI.md#gettransaction) | **GET** /v1/transactions/{transactionId} | Get transaction
*WalletsAPI* | [**createWalletSignature**](docs/WalletsAPI.md#createwalletsignature) | **POST** /v1/wallets/{walletId}/signatures | Create wallet signature
*WalletsAPI* | [**getWallet**](docs/WalletsAPI.md#getwallet) | **GET** /v1/wallets/{walletId} | Get wallet
*WalletsAPI* | [**getWalletBalances**](docs/WalletsAPI.md#getwalletbalances) | **GET** /v1/wallets/{walletId}/balances | Get wallet balances
*WalletsAPI* | [**getWalletTransactions**](docs/WalletsAPI.md#getwallettransactions) | **GET** /v1/wallets/{walletId}/transactions | Get wallet transactions


## Documentation For Models

 - [ApproveEcosystemGameRequest](docs/ApproveEcosystemGameRequest.md)
 - [AuthGame200Response](docs/AuthGame200Response.md)
 - [AuthGame200ResponseAllOf](docs/AuthGame200ResponseAllOf.md)
 - [AuthPlayer200Response](docs/AuthPlayer200Response.md)
 - [AuthPlayer200ResponseAllOf](docs/AuthPlayer200ResponseAllOf.md)
 - [AuthProfile200Response](docs/AuthProfile200Response.md)
 - [BatchMintCollectionItemsRequest](docs/BatchMintCollectionItemsRequest.md)
 - [BatchTransferCollectionItemsRequest](docs/BatchTransferCollectionItemsRequest.md)
 - [BatchTransferCurrencyRequest](docs/BatchTransferCurrencyRequest.md)
 - [BurnCollectionItemRequest](docs/BurnCollectionItemRequest.md)
 - [BurnCurrencyRequest](docs/BurnCurrencyRequest.md)
 - [CollectionItem](docs/CollectionItem.md)
 - [CollectionItemAttributesInner](docs/CollectionItemAttributesInner.md)
 - [CollectionItemAttributesInnerValue](docs/CollectionItemAttributesInnerValue.md)
 - [CollectionModel](docs/CollectionModel.md)
 - [ContractModel](docs/ContractModel.md)
 - [CreateCollection200Response](docs/CreateCollection200Response.md)
 - [CreateCollection200ResponseAllOf](docs/CreateCollection200ResponseAllOf.md)
 - [CreateCollection200ResponseAllOfContract](docs/CreateCollection200ResponseAllOfContract.md)
 - [CreateCollection200ResponseAllOfContractAllOf](docs/CreateCollection200ResponseAllOfContractAllOf.md)
 - [CreateCollectionItemRequest](docs/CreateCollectionItemRequest.md)
 - [CreateCollectionItemRequestAttributesInner](docs/CreateCollectionItemRequestAttributesInner.md)
 - [CreateCollectionRequest](docs/CreateCollectionRequest.md)
 - [CreateContractRequest](docs/CreateContractRequest.md)
 - [CreateCurrency200Response](docs/CreateCurrency200Response.md)
 - [CreateCurrencyRequest](docs/CreateCurrencyRequest.md)
 - [CreateEcosystemRequest](docs/CreateEcosystemRequest.md)
 - [CreateGameRequest](docs/CreateGameRequest.md)
 - [CreateLootboxManager200Response](docs/CreateLootboxManager200Response.md)
 - [CreateLootboxManagerRequest](docs/CreateLootboxManagerRequest.md)
 - [CreatePlayerRequest](docs/CreatePlayerRequest.md)
 - [CreateProfilePlayerRequest](docs/CreateProfilePlayerRequest.md)
 - [CreateProfileRequest](docs/CreateProfileRequest.md)
 - [CreateShop200Response](docs/CreateShop200Response.md)
 - [CreateShopRequest](docs/CreateShopRequest.md)
 - [CreateWalletSignatureRequest](docs/CreateWalletSignatureRequest.md)
 - [CurrencyModel](docs/CurrencyModel.md)
 - [EcosystemGameModel](docs/EcosystemGameModel.md)
 - [EcosystemModel](docs/EcosystemModel.md)
 - [GameModel](docs/GameModel.md)
 - [GetCollections200ResponseInner](docs/GetCollections200ResponseInner.md)
 - [GetCollections200ResponseInnerAllOf](docs/GetCollections200ResponseInnerAllOf.md)
 - [GetCurrencies200ResponseInner](docs/GetCurrencies200ResponseInner.md)
 - [GetCurrencyFees200Response](docs/GetCurrencyFees200Response.md)
 - [GetLootboxManagers200ResponseInner](docs/GetLootboxManagers200ResponseInner.md)
 - [GetPlayerData200Response](docs/GetPlayerData200Response.md)
 - [GetProfileGames200ResponseInner](docs/GetProfileGames200ResponseInner.md)
 - [GetShops200ResponseInner](docs/GetShops200ResponseInner.md)
 - [GrantCollectionRoleRequest](docs/GrantCollectionRoleRequest.md)
 - [GrantCurrencyRoleRequest](docs/GrantCurrencyRoleRequest.md)
 - [LootboxManagerLootbox](docs/LootboxManagerLootbox.md)
 - [LootboxManagerModel](docs/LootboxManagerModel.md)
 - [MintCollectionItemRequest](docs/MintCollectionItemRequest.md)
 - [MintCurrencyRequest](docs/MintCurrencyRequest.md)
 - [PlayerModel](docs/PlayerModel.md)
 - [ProfileModel](docs/ProfileModel.md)
 - [ProfilePermissionsValue](docs/ProfilePermissionsValue.md)
 - [PublicEcosystem](docs/PublicEcosystem.md)
 - [PublicGame](docs/PublicGame.md)
 - [PublicPlayer](docs/PublicPlayer.md)
 - [PublicPlayerCustodialWallet](docs/PublicPlayerCustodialWallet.md)
 - [PublicProfile](docs/PublicProfile.md)
 - [RemovePlayerConnectedWalletRequest](docs/RemovePlayerConnectedWalletRequest.md)
 - [RevokeCollectionRoleRequest](docs/RevokeCollectionRoleRequest.md)
 - [SetCollectionApprovalRequest](docs/SetCollectionApprovalRequest.md)
 - [SetCollectionItemTimelockRequest](docs/SetCollectionItemTimelockRequest.md)
 - [SetCurrencyFeesRequest](docs/SetCurrencyFeesRequest.md)
 - [SetLootboxManagerLootboxRequest](docs/SetLootboxManagerLootboxRequest.md)
 - [SetPlayerConnectedWallet200Response](docs/SetPlayerConnectedWallet200Response.md)
 - [SetPlayerConnectedWalletRequest](docs/SetPlayerConnectedWalletRequest.md)
 - [SetPlayerDataRequest](docs/SetPlayerDataRequest.md)
 - [SetShopOfferRequest](docs/SetShopOfferRequest.md)
 - [ShopModel](docs/ShopModel.md)
 - [ShopOffer](docs/ShopOffer.md)
 - [TransactionModel](docs/TransactionModel.md)
 - [TransferCollectionItemRequest](docs/TransferCollectionItemRequest.md)
 - [TransferContractOwnershipRequest](docs/TransferContractOwnershipRequest.md)
 - [TransferCurrencyRequest](docs/TransferCurrencyRequest.md)
 - [UpdateEcosystemRequest](docs/UpdateEcosystemRequest.md)
 - [UpdateGame200Response](docs/UpdateGame200Response.md)
 - [UpdateGame200ResponseAllOf](docs/UpdateGame200ResponseAllOf.md)
 - [UpdateGameRequest](docs/UpdateGameRequest.md)
 - [UpdatePlayer200Response](docs/UpdatePlayer200Response.md)
 - [UpdatePlayerRequest](docs/UpdatePlayerRequest.md)
 - [UpdateProfilePlayer200Response](docs/UpdateProfilePlayer200Response.md)
 - [UpdateProfilePlayer200ResponseAllOf](docs/UpdateProfilePlayer200ResponseAllOf.md)
 - [UpdateProfilePlayerRequest](docs/UpdateProfilePlayerRequest.md)
 - [UpdateProfileRequest](docs/UpdateProfileRequest.md)
 - [UpgradeContractTrustedForwarderRequest](docs/UpgradeContractTrustedForwarderRequest.md)
 - [WalletModel](docs/WalletModel.md)
 - [WithdrawFromShopRequest](docs/WithdrawFromShopRequest.md)
 - [WriteContractRequest](docs/WriteContractRequest.md)
 - [WriteContractRequestArgsInner](docs/WriteContractRequestArgsInner.md)


## Documentation For Authorization


## basicAuth

- **Type**: HTTP basic authentication


## Author

metafabproject@gmail.com

