@EndUserText.label: 'Maintain Error Code'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZC_ErrorCode
  as projection on ZI_ErrorCode
{
  key ErrorCode,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _ErrorCodeAll : redirected to parent ZC_ErrorCode_S,
  _ErrorCodeText : redirected to composition child ZC_ErrorCodeText,
  _ErrorCodeText.Description : localized
  
}
