DECLARE @SOURCE_SYSTEM_CD VARCHAR(50) = (SELECT ShortPrefix FROM tz_dwh.Business);
MERGE dbo.SOURCE_SYSTEM_TABLE AS trg
USING
(
              SELECT '$(TZ_BKI_DB).dbo.AccountInit' AS SourceTableName,           @SOURCE_SYSTEM_CD AS SOURCE_SYSTEM_CD, 'conv.APPLICATION' AS ConvTableName,       'ApplicationId' AS SourceIdColumnName, 'Account_RK' AS SourceRKColumnName
    UNION ALL SELECT '$(TZ_BKI_DB).dbo.AccountInit',                              @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK' 
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_BKI_DB).dbo.Task',                                     @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_BKI_DB).dbo.Task',                                     @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.PRODUCT',                            'ProductId',                           'Product_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_STATUS',                 'StatusId',                            'ApplicationStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.MARITAL_STATUS',                     'ContactMaritalStatusId',              'MaritalStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.EDUCATION',                          'ContactEducationId',                  'Education_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.GENDER',                             'ContactGenderId',                     'Gender_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.BUSYNESS',                           'BusinessId',                          'Busyness_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT',               'FinancingInstrumentId',               'FinancingInstrument_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_DECISION',               'DecisionId',                          'ApplicationDecision_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.DECISION_REASON',                    'DecisionReasonId',                    'DecisionReason_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Application',                                  @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT_TYPE',          'IssuanceTypeId',                      'IssuanceType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Contact',                                      @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Contact',                                      @SOURCE_SYSTEM_CD,                     'conv.GENDER',                             'GenderId',                            'Gender_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Contact',                                      @SOURCE_SYSTEM_CD,                     'conv.BUSYNESS',                           'BusynessId',                          'Busyness_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Contact',                                      @SOURCE_SYSTEM_CD,                     'conv.MARITAL_STATUS',                     'MaritalStatusId',                     'MaritalStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Contact',                                      @SOURCE_SYSTEM_CD,                     'conv.EDUCATION',                          'EducationId',                         'Education_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ProductType',                                  @SOURCE_SYSTEM_CD,                     'conv.PRODUCT_TYPE',                       'ProductTypeId',                       'ProductType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Product',                                      @SOURCE_SYSTEM_CD,                     'conv.PRODUCT',                            'ProductId',                           'Product_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Product',                                      @SOURCE_SYSTEM_CD,                     'conv.PRODUCT_TYPE',                       'TypeId',                              'ProductType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationStatus',                            @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_STATUS',                 'ApplicationStatusId',                 'ApplicationStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.MaritalStatus',                                @SOURCE_SYSTEM_CD,                     'conv.MARITAL_STATUS',                     'MaritalStatusId',                     'MaritalStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Education',                                    @SOURCE_SYSTEM_CD,                     'conv.EDUCATION',                          'EducationId',                         'Education_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Gender',                                       @SOURCE_SYSTEM_CD,                     'conv.GENDER',                             'GenderId',                            'Gender_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Busyness',                                     @SOURCE_SYSTEM_CD,                     'conv.BUSYNESS',                           'BusynessId',                          'Busyness_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationDecision',                          @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_DECISION',               'ApplicationDecisionId',               'ApplicationDecision_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.DecisionReasons',                              @SOURCE_SYSTEM_CD,                     'conv.DECISION_REASON',                    'DecisionReasonsId',                   'DecisionReason_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAudit',                             @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAudit',                             @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_STATUS',                 'StatusId_New',                        'Status_New_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAudit',                             @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_STATUS',                 'StatusId_Old',                        'Status_Old_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrumentType',                      @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT_TYPE',          'FinancingInstrumentTypeId',           'FinancingInstrumentType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrumentStatus',                    @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT_STATUS',        'FinancingInstrumentStatusId',         'FinancingInstrumentStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrument',                          @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT',               'FinancingInstrumentId',               'FinancingInstrument_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrument',                          @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrument',                          @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT_TYPE',          'TypeId',                              'FinancingInstrumentType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.FinancingInstrument',                          @SOURCE_SYSTEM_CD,                     'conv.FINANCING_INSTRUMENT_STATUS',        'StatusId',                            'FinancingInstrumentStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.VwCheckBankScoringValue',                      @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.VerificationListItem',                         @SOURCE_SYSTEM_CD,                     'conv.VERIFICATION_LIST_ITEM',             'VerificationListItemId',              'VerificationListItem_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.VerificationListResult',                       @SOURCE_SYSTEM_CD,                     'conv.VERIFICATION_LIST_RESULT',           'VerificationListResultId',            'VerificationListResult_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Verification',                                 @SOURCE_SYSTEM_CD,                     'conv.VERIFICATION',                       'VerificationId',                      'Verification_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Verification',                                 @SOURCE_SYSTEM_CD,                     'conv.VERIFICATION_LIST_RESULT',           'ResultId',                            'VerificationListResult_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Verification',                                 @SOURCE_SYSTEM_CD,                     'conv.VERIFICATION_LIST_ITEM',             'VerificationListItemId',              'VerificationListItem_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Verification',                                 @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW',                           'CashflowId',                          'Cashflow_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_CATEGORY',                  'CategoryId',                          'CashflowCategory_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_SOURCE',                    'CashflowSourceId',                    'CashflowSource_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_STATUS',                    'StatusId',                            'CashflowStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Cashflow',                                     @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_TYPE',                      'TypeId',                              'CashflowType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.CashflowCategory',                             @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_CATEGORY',                  'CashflowCategoryId',                  'CashflowCategory_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.CashflowSource',                               @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_SOURCE',                    'CashflowSourceId',                    'CashflowSource_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.CashflowStatus',                               @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_STATUS',                    'CashflowStatusId',                    'CashflowStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.CashflowTypes',                                @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_TYPE',                      'CashflowTypesId',                     'CashflowType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).risk_spr.Application_final',                      @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).risk_spr.Application_final',                      @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.BALANCE',                            'BalanceId',                           'Balance_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW',                           'CashflowId',                          'Cashflow_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.PAYMENT_SCHEDULE',                   'PaymentScheduleId',                   'PaymentSchedule_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_CATEGORY',                  'OperationCategoryId',                 'OperationCategory_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_TYPE',                      'OperationTypeId',                     'OperationType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Balance',                                      @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.PaymentSchedule',                              @SOURCE_SYSTEM_CD,                     'conv.PAYMENT_SCHEDULE',                   'PaymentScheduleId',                   'PaymentSchedule_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.PaymentSchedule',                              @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationFile',                              @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ContactIntegration',                           @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AgredatorServiceLog',                          @SOURCE_SYSTEM_CD,                     'conv.AGREDATOR_SERVICE_LOG',              'AgredatorServiceLogId',               'AgredatorServiceLog_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AgredatorServiceLog',                          @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AgredatorRequestLog',                          @SOURCE_SYSTEM_CD,                     'conv.AGREDATOR_REQUEST_LOG',              'AgredatorRequestLogId',               'AgredatorRequestLog_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AgredatorRequestLog',                          @SOURCE_SYSTEM_CD,                     'conv.AGREDATOR_SERVICE_LOG',              'ServiceLogId',                        'AgredatorServiceLog_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApprovalStatus',                               @SOURCE_SYSTEM_CD,                     'conv.APPROVAL_STATUS',                    'ApprovalStatusId',                    'ApprovalStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationApproval',                          @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_APPROVAL',               'ApplicationApprovalId',               'ApplicationApproval_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationApproval',                          @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationApproval',                          @SOURCE_SYSTEM_CD,                     'conv.APPROVAL_STATUS',                    'StatusId',                            'ApprovalStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationApproval',                          @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'SetId',                               'SetCustomer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AddressType',                                  @SOURCE_SYSTEM_CD,                     'conv.ADDRESS_TYPE',                       'AddressTypeId',                       'AddressType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ContactAddress',                               @SOURCE_SYSTEM_CD,                     'conv.CONTACT_ADDRESS',                    'ContactAddressId',                    'ContactAddress_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ContactAddress',                               @SOURCE_SYSTEM_CD,                     'conv.ADDRESS_TYPE',                       'AddressTypeId',                       'AddressType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ContactAddress',                               @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ContactAddress',                               @SOURCE_SYSTEM_CD,                     'conv.REGION',                             'RegionId',                            'Region_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.SandboxInputLog',                              @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.PersCabFile',                                  @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.PersCabFile',                                  @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.TinkoffIDResponseTrace',                       @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalProductType',                        @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT_TYPE',            'AdditionalProductTypeId',             'AdditionalProductType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalProductStatus',                      @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT_STATUS',          'AdditionalProductStatusId',           'AdditionalProductStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalProduct',                            @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT',                 'AdditionalProductId',                 'AdditionalProduct_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalProduct',                            @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT_TYPE',            'TypeId',                              'AdditionalProductType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreementStatus',                    @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_AGREEMENT_STATUS',        'AdditionalAgreementStatusId',         'AdditionalAgreementStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreementType',                      @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_AGREEMENT_TYPE',          'AdditionalAgreementTypeId',           'AdditionalAgreementType_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreement',                          @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_AGREEMENT',               'AdditionalAgreementId',               'AdditionalAgreement_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreement',                          @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreement',                          @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_AGREEMENT_TYPE',          'TypeId',                              'AdditionalAgreementType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreement',                          @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW',                           'CashflowId',                          'Cashflow_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.AdditionalAgreement',                          @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_AGREEMENT_STATUS',        'StatusId',                            'AdditionalAgreementStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAdditionalProduct',                 @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_ADDITIONAL_PRODUCT',     'ApplicationAdditionalProductId',      'ApplicationAdditionalProduct_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAdditionalProduct',                 @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAdditionalProduct',                 @SOURCE_SYSTEM_CD,                     'conv.PAY_SYSTEM_ORDER',                   'PaySystemOrderId',                    'PaySystemOrder_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAdditionalProduct',                 @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT',                 'AdditionalProductId',                 'AdditionalProduct_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAdditionalProduct',                 @SOURCE_SYSTEM_CD,                     'conv.ADDITIONAL_PRODUCT_STATUS',          'StatusId',                            'AdditionalProductStatus_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.PaySystemOrder',                               @SOURCE_SYSTEM_CD,                     'conv.PAY_SYSTEM_ORDER',                   'PaySystemOrderId',                    'PaySystemOrder_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.PaySystemOrder',                               @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.PaySystemOrder',                               @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.PaySystemOrder',                               @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_SOURCE',                    'CashflowSourceId',                    'CashflowSource_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).sandbox.TestClient',                              @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
                                                                                                                                                    
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationTestParameters',                    @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
                                                                               
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContractStatus',                @SOURCE_SYSTEM_CD,                     'conv.LEGAL_COLLECTION_CONTRACT_STATUS',   'LegalCollectionContractStatusId',     'LegalCollectionContractStatus_RK'
                                                                               
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContract',                      @SOURCE_SYSTEM_CD,                     'conv.LEGAL_COLLECTION_CONTRACT',          'LegalCollectionContractId',           'LegalCollectionContract_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContract',                      @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContract',                      @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContract',                      @SOURCE_SYSTEM_CD,                     'conv.LEGAL_COLLECTION_CONTRACT_STATUS',   'StatusId',                            'LegalCollectionContractStatus_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContractStatusHistory',         @SOURCE_SYSTEM_CD,                     'conv.LEGAL_COLLECTION_CONTRACT',          'ContractId',                          'LegalCollectionContract_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.LegalCollectionContractStatusHistory',         @SOURCE_SYSTEM_CD,                     'conv.LEGAL_COLLECTION_CONTRACT_STATUS',   'StatusId',                            'LegalCollectionContractStatus_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationIntegration',                       @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationIntegration',                       @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_INTEGRATION',            'ApplicationIntegrationId',            'ApplicationIntegration_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.Region',                                       @SOURCE_SYSTEM_CD,                     'conv.REGION',                             'RegionId',                            'Region_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.Accrual',                                      @SOURCE_SYSTEM_CD,                     'conv.PAYMENT_SCHEDULE',                   'PaymentScheduleId',                   'PaymentSchedule_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Accrual',                                      @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW_CATEGORY',                  'TypeId',                              'AccrualType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Accrual',                                      @SOURCE_SYSTEM_CD,                     'conv.ACCRUAL_STATUS',                     'StatusId',                            'AccrualStatus_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Accrual',                                      @SOURCE_SYSTEM_CD,                     'conv.ACCRUAL',                            'AccrualId',                           'Accrual_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.Accrual',                                      @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.AccrualStatus',                                @SOURCE_SYSTEM_CD,                     'conv.ACCRUAL_STATUS',                     'AccrualStatusId',                     'AccrualStatus_RK'

    UNION ALL SELECT '$(TZ_MARTS_DB).mart.ReportFund',                            @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_MARTS_DB).mart.ReportFund',                            @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'

    UNION ALL SELECT '$(TZ_MARTS_DB).mart.FraudulentCard',                        @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAddress',                           @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAddress',                           @SOURCE_SYSTEM_CD,                     'conv.APPLICATION_ADDRESS',                'ApplicationAddressId',                'ApplicationAddress_RK' 
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAddress',                           @SOURCE_SYSTEM_CD,                     'conv.ADDRESS_TYPE',                       'AddressTypeId',                       'AddressType_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAddress',                           @SOURCE_SYSTEM_CD,                     'conv.REGION',                             'RegionId',                            'Region_RK'   
    UNION ALL SELECT '$(TZ_DDS).tz.ApplicationAddress',                           @SOURCE_SYSTEM_CD,                     'conv.CONTACT_ADDRESS',                    'ContactAddressId',                    'ContactAddress_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimit',                                  @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT',                       'CreditLimitId',                       'CreditLimit_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitContractStatus',                    @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_CONTRACT_STATUS',       'CreditLimitContractStatusId',         'CreditLimitContractStatus_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitContract',                          @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_CONTRACT',              'CreditLimitContractId',               'CreditLimitContract_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitContract',                          @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT',                       'CreditLimitId',                       'CreditLimit_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitContract',                          @SOURCE_SYSTEM_CD,                     'conv.CUSTOMER',                           'ContactId',                           'Customer_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitContract',                          @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_CONTRACT_STATUS',       'CreditLimitContractStatusId',         'CreditLimitContractStatus_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitTransh',                            @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_TRANSH',                'CreditLimitTranshId',                 'CreditLimitTransh_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitTransh',                            @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.CreditLimitTransh',                            @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_CONTRACT',              'CreditLimitContractId',               'CreditLimitContractId_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.APSKHistory',                                  @SOURCE_SYSTEM_CD,                     'conv.APSK_HISTORY',                       'APSKHistoryId',                       'APSKHistory_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.APSKHistory',                                  @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.APSKHistory',                                  @SOURCE_SYSTEM_CD,                     'conv.CREDIT_LIMIT_CONTRACT',              'CreditLimitContractId',               'CreditLimitContractId_RK'
    UNION ALL SELECT '$(TZ_DDS).tz.APSKHistory',                                  @SOURCE_SYSTEM_CD,                     'conv.APSK_CALCULATION_EVENT',             'CalculationEventId',                  'CalculationEvent_RK'

    UNION ALL SELECT '$(TZ_MARTS_DB).mart.Portfolio1C',                           @SOURCE_SYSTEM_CD,                     'conv.APPLICATION',                        'ApplicationId',                       'Account_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.APSKCalculationEvent',                         @SOURCE_SYSTEM_CD,                     'conv.APSK_CALCULATION_EVENT',             'APSKCalculationEventId',              'APSKCalculationEvent_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.AccrualCancel',                                @SOURCE_SYSTEM_CD,                     'conv.ACCRUAL',                            'AccrualId',                           'Accrual_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.CashflowCancel',                               @SOURCE_SYSTEM_CD,                     'conv.CASHFLOW',                           'CashflowId',                          'Cashflow_RK'

    UNION ALL SELECT '$(TZ_DDS).tz.BalanceCancel',                                @SOURCE_SYSTEM_CD,                     'conv.BALANCE',                            'BalanceId',                           'Balance_RK'
)  AS src (SourceTableName, SOURCE_SYSTEM_CD, ConvTableName, SourceIdColumnName, SourceRKColumnName)
ON      src.SourceTableName    = trg.SourceTableName
    AND src.SourceIdColumnName = trg.SourceIdColumnName
WHEN NOT MATCHED BY TARGET THEN
    INSERT (SourceTableName, SOURCE_SYSTEM_CD, ConvTableName, SourceIdColumnName, SourceRKColumnName)
    VALUES (src.SourceTableName, src.SOURCE_SYSTEM_CD, src.ConvTableName, src.SourceIdColumnName, src.SourceRKColumnName)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.SourceTableName    = src.SourceTableName      
        , trg.SOURCE_SYSTEM_CD   = src.SOURCE_SYSTEM_CD  
        , trg.ConvTableName      = src.ConvTableName      
        , trg.SourceIdColumnName = src.SourceIdColumnName
        , trg.SourceRKColumnName = src.SourceRKColumnName;