@EndUserText.label: 'Error Code'
@AccessControl.authorizationCheck: #CHECK
define view entity ZI_ErrorCode
  as select from ZERRCODE
  association to parent ZI_ErrorCode_S as _ErrorCodeAll on $projection.SingletonID = _ErrorCodeAll.SingletonID
  composition [0..*] of ZI_ErrorCodeText as _ErrorCodeText
{
  key ERROR_CODE as ErrorCode,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _ErrorCodeAll,
  _ErrorCodeText
  
}
