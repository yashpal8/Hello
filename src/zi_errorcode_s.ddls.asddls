@EndUserText.label: 'Error Code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_ErrorCode_S
  as select from I_Language
    left outer join ZERRCODE on 0 = 0
  composition [0..*] of ZI_ErrorCode as _ErrorCode
{
  key 1 as SingletonID,
  _ErrorCode,
  max( ZERRCODE.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
