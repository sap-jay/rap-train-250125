@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_BUT000
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_BUT000
{
  key Partner,
  Type,
  Title,
  NameFirst,
  NameLast,
  NameOrg1,
  NameOrg2,
  Searchterm1,
  Searchterm2,
  Birthdate,
  Grouping,
  IsPerson,
  Gender,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby
  
}
