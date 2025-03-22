@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBusinessPartnerBankDetails'
@ObjectModel.sapObjectNodeType.name: 'ZBusinessPartnerBankDetails'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAE', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerBankDTP
  as select from ZBUT0BK as BusinessPartnerBankDetails
  association to parent ZR_BusinessPartnerBank01TP as _BusinessPartnerBank on $projection.Partner = _BusinessPartnerBank.Partner and $projection.BankID = _BusinessPartnerBank.BankID
  association [1] to ZR_BusinessPartnerGenXTP as _BusinessPartnerGenX on $projection.Partner = _BusinessPartnerGenX.Partner
  association [1] to ZE_BusinessPartnerBankD as _Extension on $projection.Partner = _Extension.Partner and $projection.BankID = _Extension.BankID
{
  key PARTNER as Partner,
  key BANKID as BankID,
  BANK_NAME as BankName,
  BRANCH as Branch,
  REGION as Region,
  STREET as Street,
  CITY as City,
  SWIFT_CODE as SwiftCode,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  LASTCHANGED as Lastchanged,
  _BusinessPartnerBank,
  _BusinessPartnerGenX,
  _Extension
  
}
