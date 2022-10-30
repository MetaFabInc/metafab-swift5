# Swift5 API client for MetaFabSwift5

 Complete MetaFab API references and guides can be found at: https://trymetafab.com

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.1.41
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
*ExchangesAPI* | [**createExchange**](docs/ExchangesAPI.md#createexchange) | **POST** /v1/exchanges | Create exchange
*ExchangesAPI* | [**getExchangeOffer**](docs/ExchangesAPI.md#getexchangeoffer) | **GET** /v1/exchanges/{exchangeId}/items/{exchangeOfferId} | Get exchange offer
*ExchangesAPI* | [**getExchangeOffers**](docs/ExchangesAPI.md#getexchangeoffers) | **GET** /v1/exchanges/{exchangeId}/offers | Get exchange offers
*ExchangesAPI* | [**getExchanges**](docs/ExchangesAPI.md#getexchanges) | **GET** /v1/exchanges | Get exchanges
*ExchangesAPI* | [**removeExchangeOffer**](docs/ExchangesAPI.md#removeexchangeoffer) | **DELETE** /v1/exchanges/{exchangeId}/offers/{exchangeOfferId} | Remove exchange offer
*ExchangesAPI* | [**setExchangeOffer**](docs/ExchangesAPI.md#setexchangeoffer) | **POST** /v1/exchanges/{exchangeId}/offers | Set exchange offer
*ExchangesAPI* | [**useExchangeOffer**](docs/ExchangesAPI.md#useexchangeoffer) | **POST** /v1/exchanges/{exchangeId}/offers/{exchangeOfferId}/uses | Use exchange offer
*ExchangesAPI* | [**withdrawFromExchange**](docs/ExchangesAPI.md#withdrawfromexchange) | **POST** /v1/exchanges/{exchangeId}/withdrawals | Withdraw from exchange
*GamesAPI* | [**authGame**](docs/GamesAPI.md#authgame) | **GET** /v1/games | Authenticate game
*GamesAPI* | [**createGame**](docs/GamesAPI.md#creategame) | **POST** /v1/games | Create game
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
*PlayersAPI* | [**authPlayer**](docs/PlayersAPI.md#authplayer) | **GET** /v1/players | Authenticate player
*PlayersAPI* | [**createPlayer**](docs/PlayersAPI.md#createplayer) | **POST** /v1/players | Create player
*PlayersAPI* | [**updatePlayer**](docs/PlayersAPI.md#updateplayer) | **PATCH** /v1/players/{playerId} | Update player
*TransactionsAPI* | [**getTransaction**](docs/TransactionsAPI.md#gettransaction) | **GET** /v1/transactions/{transactionId} | Get transaction
*WalletsAPI* | [**getWalletBalances**](docs/WalletsAPI.md#getwalletbalances) | **GET** /v1/wallets/{walletId}/balances | Get wallet balances
*WalletsAPI* | [**getWalletTransactions**](docs/WalletsAPI.md#getwallettransactions) | **GET** /v1/wallets/{walletId}/transactions | Get wallet transactions


## Documentation For Models

 - [AuthGame200Response](docs/AuthGame200Response.md)
 - [AuthGame200ResponseAllOf](docs/AuthGame200ResponseAllOf.md)
 - [AuthGame200ResponseAllOf1](docs/AuthGame200ResponseAllOf1.md)
 - [AuthPlayer200Response](docs/AuthPlayer200Response.md)
 - [BatchMintCollectionItemsRequest](docs/BatchMintCollectionItemsRequest.md)
 - [BatchTransferCollectionItemsRequest](docs/BatchTransferCollectionItemsRequest.md)
 - [BatchTransferCurrencyRequest](docs/BatchTransferCurrencyRequest.md)
 - [BurnCollectionItemRequest](docs/BurnCollectionItemRequest.md)
 - [BurnCurrencyRequest](docs/BurnCurrencyRequest.md)
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
 - [CreateExchange200Response](docs/CreateExchange200Response.md)
 - [CreateExchangeRequest](docs/CreateExchangeRequest.md)
 - [CreateGameRequest](docs/CreateGameRequest.md)
 - [CreatePlayerRequest](docs/CreatePlayerRequest.md)
 - [CurrencyModel](docs/CurrencyModel.md)
 - [ExchangeModel](docs/ExchangeModel.md)
 - [ExchangeOffer](docs/ExchangeOffer.md)
 - [GameModel](docs/GameModel.md)
 - [GetCollections200ResponseInner](docs/GetCollections200ResponseInner.md)
 - [GetCollections200ResponseInnerAllOf](docs/GetCollections200ResponseInnerAllOf.md)
 - [GetCurrencies200ResponseInner](docs/GetCurrencies200ResponseInner.md)
 - [GetCurrencies200ResponseInnerAllOf](docs/GetCurrencies200ResponseInnerAllOf.md)
 - [GetCurrencyFees200Response](docs/GetCurrencyFees200Response.md)
 - [GetExchanges200ResponseInner](docs/GetExchanges200ResponseInner.md)
 - [GrantCollectionRoleRequest](docs/GrantCollectionRoleRequest.md)
 - [GrantCurrencyRoleRequest](docs/GrantCurrencyRoleRequest.md)
 - [MintCollectionItemRequest](docs/MintCollectionItemRequest.md)
 - [MintCurrencyRequest](docs/MintCurrencyRequest.md)
 - [PlayerModel](docs/PlayerModel.md)
 - [RevokeCollectionRoleRequest](docs/RevokeCollectionRoleRequest.md)
 - [SetCollectionApprovalRequest](docs/SetCollectionApprovalRequest.md)
 - [SetCollectionItemTimelockRequest](docs/SetCollectionItemTimelockRequest.md)
 - [SetCurrencyFeesRequest](docs/SetCurrencyFeesRequest.md)
 - [SetExchangeOfferRequest](docs/SetExchangeOfferRequest.md)
 - [TransactionModel](docs/TransactionModel.md)
 - [TransferCollectionItemRequest](docs/TransferCollectionItemRequest.md)
 - [TransferCurrencyRequest](docs/TransferCurrencyRequest.md)
 - [UpdateGameRequest](docs/UpdateGameRequest.md)
 - [UpdatePlayerRequest](docs/UpdatePlayerRequest.md)
 - [WalletModel](docs/WalletModel.md)
 - [WithdrawFromExchangeRequest](docs/WithdrawFromExchangeRequest.md)
 - [WriteContractRequest](docs/WriteContractRequest.md)


## Documentation For Authorization


## basicAuth

- **Type**: HTTP basic authentication


## Author

metafabproject@gmail.com
