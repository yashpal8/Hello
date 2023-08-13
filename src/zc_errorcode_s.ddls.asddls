@EndUserText.label: 'Maintain Error Code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_ErrorCode_S
  provider contract transactional_query
  as projection on ZI_ErrorCode_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _ErrorCode : redirected to composition child ZC_ErrorCode
  
}
