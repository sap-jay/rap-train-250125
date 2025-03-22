@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBusinessPartnerBank'
@ObjectModel.sapObjectNodeType.name: 'ZBusinessPartnerBank'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAB', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerBank01TP
  as select from ZBUT0BANK as BusinessPartnerBank
  association to parent ZR_BusinessPartnerGenXTP as _BusinessPartnerGenX on $projection.Partner = _BusinessPartnerGenX.Partner
  association [1] to ZE_BusinessPartnerBank as _Extension on $projection.Partner = _Extension.Partner and $projection.BankID = _Extension.BankID
  composition [0..*] of ZR_BusinessPartnerBankDTP as _BusinessPartnerBankDetails
{
  key PARTNER as Partner,
  key BANKID as BankID,
  BANK_CTRY as BankCtry,
  BANK_KEY as BankKey,
  BANK_ACCT as BankAcct,
  IBAN as Iban,
  SWIFT_CODE as SwiftCode,
  VALID_FROM as ValidFrom,
  VALID_TO as ValidTo,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  LASTCHANGED as Lastchanged,
  _BusinessPartnerBankDetails,
  _BusinessPartnerGenX,
  _Extension
  
}
