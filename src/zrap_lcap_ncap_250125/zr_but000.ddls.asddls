@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_BUT000
  as select from ZBUT000 as gen1
{
  key partner as Partner,
  type as Type,
  title as Title,
  name_first as NameFirst,
  name_last as NameLast,
  name_org1 as NameOrg1,
  name_org2 as NameOrg2,
  searchterm1 as Searchterm1,
  searchterm2 as Searchterm2,
  birthdate as Birthdate,
  grouping as Grouping,
  is_person as IsPerson,
  gender as Gender,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
  
}
