CREATE TABLE [dbo].[Application](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[ProcessListeners] [int] NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[ClientTypeId] [uniqueidentifier] NULL,
	[AccountId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[Debtor] [nvarchar](250) NOT NULL,
	[StatusId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[FillingDate] [datetime2](7) NULL,
	[ProceededOn] [datetime2](7) NULL,
	[DecisionId] [uniqueidentifier] NULL,
	[CampaignId] [uniqueidentifier] NULL,
	[IsAgreeProcessingCRB] [bit] NOT NULL,
	[OfferNumber] [nvarchar](250) NOT NULL,
	[OfferSum] [decimal](18, 2) NULL,
	[FullOfferSum] [decimal](18, 2) NOT NULL,
	[OfferPeriod] [int] NOT NULL,
	[DecisionReasonId] [uniqueidentifier] NULL,
	[CityId] [uniqueidentifier] NULL,
	[OfferText] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[ContactTypeId] [uniqueidentifier] NULL,
	[PIN] [nvarchar](50) NOT NULL,
	[Birthplace] [nvarchar](500) NOT NULL,
	[IsAgreedTerms] [bit] NOT NULL,
	[IsAgreedPersonalDataProcessing] [bit] NOT NULL,
	[DivisionCode] [nvarchar](50) NOT NULL,
	[DocumentExpiredOn] [date] NULL,
	[BusinessId] [uniqueidentifier] NULL,
	[JobId] [uniqueidentifier] NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[ProfitSourceId] [uniqueidentifier] NULL,
	[SumAverageMonthEarning] [decimal](18, 2) NOT NULL,
	[EarningDate] [date] NULL,
	[PrepaymentDate] [date] NULL,
	[CreditRate] [decimal](18, 2) NOT NULL,
	[ScoringRate] [decimal](18, 2) NOT NULL,
	[DoesHaveAuto] [bit] NOT NULL,
	[AutoPrice] [decimal](18, 2) NOT NULL,
	[AutoTypeId] [uniqueidentifier] NULL,
	[AutoBirthDate] [nvarchar](250) NOT NULL,
	[DoesHaveHouse] [bit] NOT NULL,
	[HousePrice] [decimal](18, 2) NOT NULL,
	[IsAddressRegister] [bit] NOT NULL,
	[IsAddressActual] [bit] NOT NULL,
	[PrintStatusId] [uniqueidentifier] NULL,
	[ContactSourceId] [uniqueidentifier] NULL,
	[ContactPersonTypeId] [uniqueidentifier] NULL,
	[ContactPersonFIO] [nvarchar](500) NOT NULL,
	[AdditionalContactPersonTypeId] [uniqueidentifier] NULL,
	[AdditionalContactPersonFIO] [nvarchar](500) NOT NULL,
	[CreditFrequencyId] [uniqueidentifier] NULL,
	[LoanNeedId] [uniqueidentifier] NULL,
	[PrincipalDebt] [decimal](18, 2) NOT NULL,
	[InterestDebt] [decimal](18, 2) NOT NULL,
	[PenaltyDebt] [decimal](18, 2) NOT NULL,
	[FineDebt] [decimal](18, 2) NOT NULL,
	[SummaryDebt] [decimal](18, 2) NOT NULL,
	[ContactMobilePhone] [nvarchar](250) NOT NULL,
	[ContactFamilyName] [nvarchar](250) NOT NULL,
	[ContactFirstName] [nvarchar](250) NOT NULL,
	[ContactFatherName] [nvarchar](250) NOT NULL,
	[ContactMaritalStatusId] [uniqueidentifier] NULL,
	[ContactEducationId] [uniqueidentifier] NULL,
	[ContactSocialStatusId] [uniqueidentifier] NULL,
	[ContactChildrenNumber] [int] NOT NULL,
	[ContactGenderId] [uniqueidentifier] NULL,
	[ContactBirthDate] [date] NULL,
	[ContactDocumentSeries] [nvarchar](50) NOT NULL,
	[ContactDocumentNumber] [nvarchar](50) NOT NULL,
	[ContactDocumentIssuedBy] [nvarchar](250) NOT NULL,
	[ContactDocumentIssuedOn] [date] NULL,
	[ContactFamilyMembersNumber] [int] NOT NULL,
	[ContactEmployedFamilyMembers] [int] NOT NULL,
	[ContactDependantsNumber] [int] NOT NULL,
	[ContactJobTitle] [nvarchar](250) NOT NULL,
	[ContactLastSeniorityYears] [int] NOT NULL,
	[ContactLastSeniorityMonths] [int] NOT NULL,
	[ContactTotalSeniorityYears] [int] NOT NULL,
	[ContactTotalSeniorityMonths] [int] NOT NULL,
	[AccountEmployeesNumberId] [uniqueidentifier] NULL,
	[AccountOwnershipId] [uniqueidentifier] NULL,
	[AccountIndustryId] [uniqueidentifier] NULL,
	[ContactCompanyName] [nvarchar](500) NULL,
	[VerificationRate] [decimal](18, 2) NOT NULL,
	[ValidationRate] [decimal](18, 2) NOT NULL,
	[FinancingInstrumentId] [uniqueidentifier] NULL,
	[PaymentDate] [datetime2](7) NULL,
	[ReturnDate] [datetime2](7) NULL,
	[PassportSeriesNumber] [nvarchar](250) NOT NULL,
	[DeviceID] [nvarchar](250) NOT NULL,
	[CurrentApplicationFormPage] [int] NOT NULL,
	[FillingTimeGroup1] [int] NOT NULL,
	[FillingTimeGroup2] [int] NOT NULL,
	[FillingTimeGroup3] [int] NOT NULL,
	[FillingTimeGroup4] [int] NOT NULL,
	[FillingTimeGroup5] [int] NOT NULL,
	[FillingTimeGroup6] [int] NOT NULL,
	[FillingTimeGroup7] [int] NOT NULL,
	[ContactPersonPhone] [nvarchar](50) NOT NULL,
	[AdditionalContactPersonPhone] [nvarchar](50) NOT NULL,
	[BossFIO] [nvarchar](500) NOT NULL,
	[BossPhoneNumber] [nvarchar](50) NOT NULL,
	[RegisterAddress] [nvarchar](500) NOT NULL,
	[ActualAddress] [nvarchar](500) NOT NULL,
	[ContactDocumentExpiresOn] [date] NULL,
	[ContactCitizenshipId] [uniqueidentifier] NULL,
	[IsNotResident] [bit] NOT NULL,
	[AccountInContactId] [uniqueidentifier] NULL,
	[ContactPersonRelationTypeId] [uniqueidentifier] NULL,
	[ContactPersonFamilyName] [nvarchar](250) NOT NULL,
	[ContactPersonFirstName] [nvarchar](250) NOT NULL,
	[ContactPersonFatherName] [nvarchar](250) NOT NULL,
	[ContactPersonMobilePhone] [nvarchar](250) NOT NULL,
	[ContactPersonBirthDate] [date] NULL,
	[ContactPersonId] [uniqueidentifier] NULL,
	[AccountPhone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[StagePeriodId] [uniqueidentifier] NULL,
	[IPRegion] [nvarchar](250) NOT NULL,
	[OfferFileId] [uniqueidentifier] NULL,
	[RequestedOfferSum] [decimal](18, 2) NOT NULL,
	[PreviousReturnDate] [datetime2](7) NULL,
	[CurrentReturnDate] [datetime2](7) NULL,
	[WorkAddress] [nvarchar](max) NOT NULL,
	[WaitingTime] [int] NOT NULL,
	[ProcessingTime] [int] NOT NULL,
	[SourceURL] [nvarchar](max) NOT NULL,
	[SecondStageStatusId] [uniqueidentifier] NULL,
	[SentOnConsiderationById] [uniqueidentifier] NULL,
	[ChangeByCustomerDate] [datetime2](7) NULL,
	[SecondStageReturnDate] [datetime2](7) NULL,
	[IsAgreeWithGeneralRules] [bit] NOT NULL,
	[FailedSSVerificationStep] [nvarchar](max) NOT NULL,
	[Cookie] [nvarchar](max) NOT NULL,
	[AnswerURL] [nvarchar](max) NOT NULL,
	[RequestSentToLead] [bit] NOT NULL,
	[ContactTransferCode] [nvarchar](250) NOT NULL,
	[ContactSendTransfer] [date] NULL,
	[ContactReceiveTransfer] [date] NULL,
	[IssuanceTypeId] [uniqueidentifier] NULL,
	[ApplicationFreezeId] [uniqueidentifier] NULL,
	[SaleSum] [decimal](18, 2) NOT NULL,
	[SaleDate] [date] NULL,
	[CngDocumentId] [uniqueidentifier] NULL,
	[Maturity] [decimal](18, 2) NOT NULL,
	[RepaymentDate] [datetime2](7) NULL,
	[RepaymentCount] [int] NOT NULL,
	[LimitSandbox] [decimal](18, 2) NOT NULL,
	[CommentSandbox] [nvarchar](250) NOT NULL,
	[PaymentSystemAccountInfo] [nvarchar](250) NOT NULL,
	[NoContactFatherName] [bit] NOT NULL,
	[CashflowSourceId] [uniqueidentifier] NULL,
	[FrozenForever] [bit] NOT NULL,
	[ContactSourceGroupId] [uniqueidentifier] NULL,
	[AnswerURL2] [nvarchar](max) NOT NULL,
	[AnswerURL3] [nvarchar](max) NOT NULL,
	[clientOrderId] [nvarchar](50) NOT NULL,
	[PromoCode] [nvarchar](50) NOT NULL,
	[DayProlongation] [int] NOT NULL,
	[IsSendDC] [bit] NOT NULL,
	[DateSendDC] [datetime2](7) NULL,
	[AppId] [uniqueidentifier] NULL,
	[CessionAgencyId] [uniqueidentifier] NULL,
	[InterestOverpaymentFull] [decimal](18, 2) NOT NULL,
	[InterestOverpaymentUnpaid] [decimal](18, 2) NOT NULL,
	[LimitAccrualProc] [bit] NOT NULL,
	[AgreeConnect3face] [bit] NOT NULL,
	[AgreeDateConnect3face] [datetime2](7) NULL,
	[AgreeNotDateConnect3face] [datetime2](7) NULL,
	[AgreeCommentConnect3face] [nvarchar](250) NOT NULL,
	[AgreeTransfer3face] [bit] NOT NULL,
	[AgreeDateTransfer3face] [datetime2](7) NULL,
	[AgreeNotDateTransfer3face] [datetime2](7) NULL,
	[AgreeCommentTransfer3face] [nvarchar](250) NOT NULL,
	[AgreeConnectTel] [bit] NOT NULL,
	[AgreeDateConnectTel] [datetime2](7) NULL,
	[AgreeNotDateConnectTel] [datetime2](7) NULL,
	[AgreeCommentConnectTel] [nvarchar](250) NOT NULL,
	[AgreeConnect] [bit] NOT NULL,
	[AgreeDateConnect] [datetime2](7) NULL,
	[AgreeNotDateConnect] [datetime2](7) NULL,
	[AgreeCommentConnect] [nvarchar](250) NOT NULL,
	[AgreeConnectMFO] [bit] NOT NULL,
	[AgreeDateConnectMFO] [datetime2](7) NULL,
	[AgreeNotDateConnectMFO] [datetime2](7) NULL,
	[AgreeCommentConnectMFO] [nvarchar](250) NOT NULL,
	[CourtJudgementNumber] [nvarchar](250) NOT NULL,
	[JudicialAgencyName] [nvarchar](250) NOT NULL,
	[CourtJudgementDate] [date] NULL,
	[Resolution] [nvarchar](max) NOT NULL,
	[Insolvent] [bit] NOT NULL,
	[SNILS] [nvarchar](50) NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[INNCheckLogId] [uniqueidentifier] NULL,
	[WantToGetBystrokarta] [bit] NOT NULL,
	[HasErrorsDC] [bit] NOT NULL,
	[SourceCompanyId] [uniqueidentifier] NULL,
	[GeneratedSnils] [nvarchar](50) NOT NULL,
	[isSentResponceToLead] [bit] NOT NULL,
	[AgreeNumberCommunication] [bit] NOT NULL,
	[AgreeDateNumberCommunication] [datetime2](7) NULL,
	[AgreeNotDateNumberCommunication] [datetime2](7) NULL,
	[AgreeCommentNumberCommunication] [nvarchar](250) NOT NULL,
	[NoSnils] [bit] NOT NULL,
	[MarketingEventId] [uniqueidentifier] NULL,
	[StreamId] [nvarchar](50) NOT NULL,
	[OkbPurpOfFinanceId] [uniqueidentifier] NULL,
	[RelationToInsolventId] [uniqueidentifier] NULL,
	[InformationOnLitigation] [nvarchar](250) NOT NULL,
	[OtherSourceIncome] [nvarchar](250) NOT NULL,
	[APSK] [decimal](18, 3) NOT NULL,
	[ChangeAccrueProc] [bit] NOT NULL,
	[GeneratedINN] [nvarchar](50) NOT NULL,
	[RequestedOfferPeriod] [decimal](18, 2) NOT NULL,
	[FullIdentificationId] [uniqueidentifier] NULL,
	[PaymentScheduleFileId] [uniqueidentifier] NULL,
	[PreviousPaymentAmount] [decimal](18, 2) NOT NULL,
	[CurrentPaymentAmount] [decimal](18, 2) NOT NULL,
	[UnpaidPeriod] [int] NOT NULL,
	[RegularPaymentDate] [date] NULL,
	[LegalOrganizationalFormId] [uniqueidentifier] NULL,
	[ContactPreviousFamilyName] [nvarchar](250) NOT NULL,
	[PartnerId] [uniqueidentifier] NULL,
	[RequestToApplicationId] [uniqueidentifier] NULL,
	[CollectionStartDate] [datetime2](7) NULL,
	[CollectionEndDate] [datetime2](7) NULL,
	[SaleCancelDate] [datetime2](7) NULL,
	[InternallySold] [bit] NOT NULL,
	[ContractSaleId] [uniqueidentifier] NULL,
	[StateDutyDebt] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PKJ3BnOuNMdyH0tYsGQ2m9tSA9MZU] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFJ3BnOuNMdyH0tYsGQ2m9tSA9MZU]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF7jfSjB2jfmlaDgpjeIzUQq38noE]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFL4BAnSD4AuUW8EjkYkPdzRMCgNI]  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFZh9jHqLNV0iTpJfuqrQcOrdSW5Y]  DEFAULT ('') FOR [Notes]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFDyoCfpD6SfAhnJavF8PPwR4Sdo]  DEFAULT ((0)) FOR [ProcessListeners]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFkeXQOYfUxMVuv37eKVvh9WcLCQ]  DEFAULT ('') FOR [Number]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFU7SPhST7CxJjnlDPLxbWZKbSNs]  DEFAULT ('') FOR [Debtor]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF6yxOupJTBNChh3wEH273UYKbFBs]  DEFAULT ((0)) FOR [IsAgreeProcessingCRB]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF5i7QXU0smeYDGQyPFfFm2t8oiI]  DEFAULT ('') FOR [OfferNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFznaDCNFhDs9ZT4LsPvOSUUsJrY]  DEFAULT ((0)) FOR [OfferSum]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFTclOjZWdgmaLLHmfy0Fm486D2ZA]  DEFAULT ((0)) FOR [FullOfferSum]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF5e5H1h69e3opzlPqDwFlhRRa5Y]  DEFAULT ((0)) FOR [OfferPeriod]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFSwpUJSL1ejOyueqh7ZlDwFmeDg]  DEFAULT ('') FOR [OfferText]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF1O8hsVUkUDoSvWAdTzeP76jOIk]  DEFAULT ('') FOR [Comment]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFr9FOHVBiymYv2UKcNrQ2AqF7y5c]  DEFAULT ('') FOR [PIN]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFKPMwC60NfXMfKFD9Y8jb6vX53ro]  DEFAULT ('') FOR [Birthplace]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF4LqhU6DqGc1j2QNhu4wAxkCzOo]  DEFAULT ((0)) FOR [IsAgreedTerms]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF2kOJZhKdOZtZ4jkMjukagaWQLUk]  DEFAULT ((0)) FOR [IsAgreedPersonalDataProcessing]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFxGi94PAqNnIU6r2ST9F1MeO3Lg]  DEFAULT ('') FOR [DivisionCode]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFYwydBPJd2WjN2Vdcw8Mevwz0Ys8]  DEFAULT ((0)) FOR [SumAverageMonthEarning]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFpjOrOJl2PJBhnymaSr7HfVyQBiQ]  DEFAULT ((0)) FOR [CreditRate]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFEQdKJ0SIsHTpvcV3x8CuLoJzvEo]  DEFAULT ((0)) FOR [ScoringRate]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFqgdmgjWwsTKVnd4gsLgF61836E]  DEFAULT ((0)) FOR [DoesHaveAuto]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFRvT4OplbVILysk8NkZgTD9ZuY]  DEFAULT ((0)) FOR [AutoPrice]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFxhp6wDk9llrMBQdG8BZZgeeE8N4]  DEFAULT ('') FOR [AutoBirthDate]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFd6NcFcC5zPJXHUUxV9J1WLzGX4]  DEFAULT ((0)) FOR [DoesHaveHouse]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFILurIrniMLNa8KbIP8nAX1RIo]  DEFAULT ((0)) FOR [HousePrice]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFrdltvgCZDS9SsdhRJU53j7ryG8]  DEFAULT ((0)) FOR [IsAddressRegister]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFIkhiqwT6BQQfewxSzECTOBhnF74]  DEFAULT ((0)) FOR [IsAddressActual]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFUVMSpEnN4CBoxccrIYCYTzq2w]  DEFAULT ('') FOR [ContactPersonFIO]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF4fzMFH2usP2QjgDud3zwdqEaLEc]  DEFAULT ('') FOR [AdditionalContactPersonFIO]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFNIiMBaBWUYL71J8fJICAIB7RY]  DEFAULT ((0)) FOR [PrincipalDebt]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFdue221LvI50JkoSsk5QgIrJQJc]  DEFAULT ((0)) FOR [InterestDebt]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFCmAzaucOO9eP9wgbHBwQbgJKek]  DEFAULT ((0)) FOR [PenaltyDebt]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFJ3UmDji6Ocak7vNmanVJ3oQzjyk]  DEFAULT ((0)) FOR [FineDebt]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFB7D5I5nXKLSRfMiW50dfo8E]  DEFAULT ((0)) FOR [SummaryDebt]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF54D1KrDYKUKW5BmT5XVuwJDG66Y]  DEFAULT ('') FOR [ContactMobilePhone]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFXXkClEKSVs5gUppgeWW4Tsjs]  DEFAULT ('') FOR [ContactFamilyName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFAyDnd5NKZttbNZQZestgydC6GKU]  DEFAULT ('') FOR [ContactFirstName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFbWqY4ED4jzSjayAKeoAurgEbFY]  DEFAULT ('') FOR [ContactFatherName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFLmep2b49dhrY2KhBmddnYclFv3M]  DEFAULT ((0)) FOR [ContactChildrenNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFPZ6j8ect4na3DdID8W1pGCByoI]  DEFAULT ('') FOR [ContactDocumentSeries]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFodkzRssI2YHblyDVSK0Oa7aBLo]  DEFAULT ('') FOR [ContactDocumentNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFxKfJKRf3qf4mb0gmfh58o2PAtn0]  DEFAULT ('') FOR [ContactDocumentIssuedBy]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFwUWKmEGiLcpUDMUcinfSeGxCgMo]  DEFAULT ((0)) FOR [ContactFamilyMembersNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF13CUW0Luz3sIHRpJdDDlzimL4uw]  DEFAULT ((0)) FOR [ContactEmployedFamilyMembers]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFEoha1urXJGWUNwLi5kt3VcGlzGU]  DEFAULT ((0)) FOR [ContactDependantsNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFr9z6Z5dE91xVTAIBoYFLfwMNUPo]  DEFAULT ('') FOR [ContactJobTitle]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFtR02JbHFrSoxL91qQ6OpwQyjg2Y]  DEFAULT ((0)) FOR [ContactLastSeniorityYears]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFQI1JZ4qr0WU9zAxXQrN2ZWrc3zs]  DEFAULT ((0)) FOR [ContactLastSeniorityMonths]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFhXailfMP438PGNChIIdobBVS8]  DEFAULT ((0)) FOR [ContactTotalSeniorityYears]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF1fRgG1OagzE2N2bifHPSVDuuylY]  DEFAULT ((0)) FOR [ContactTotalSeniorityMonths]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF6yEZAIihgdDv9dlEweVysDtIlmU]  DEFAULT ('') FOR [ContactCompanyName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFJpSgLT0tpwO9q82n6IZ2eaVgNQ]  DEFAULT ((0)) FOR [VerificationRate]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFika2VdlW6jOZ6xHfmSlVzW8anYs]  DEFAULT ((0)) FOR [ValidationRate]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFLdGwKlGYC6XC1Lwgyoz69Xjfb3o]  DEFAULT ('') FOR [PassportSeriesNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFOsqBfYSw3p9xX0to3jPiyNzEY]  DEFAULT ('') FOR [DeviceID]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFibiR0oFYiMtvdRrLCrn7McRv6tE]  DEFAULT ((0)) FOR [CurrentApplicationFormPage]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFcwWLpOlHF43w9ylO2Cwg6gMJ8M]  DEFAULT ((0)) FOR [FillingTimeGroup1]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFHQ6qT3SP1flBCUBUM5Tez5fqrXI]  DEFAULT ((0)) FOR [FillingTimeGroup2]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFxHSqFljUMcHDnxACGKwRlMrxA]  DEFAULT ((0)) FOR [FillingTimeGroup3]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFUH1cmlcO0TxTfgei9BWqWWm3Ie8]  DEFAULT ((0)) FOR [FillingTimeGroup4]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFsV5dweglBEg9oxVenV1WQnSQQA]  DEFAULT ((0)) FOR [FillingTimeGroup5]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFCWzWfupEa7fobtFNDp0Ex9WWyLE]  DEFAULT ((0)) FOR [FillingTimeGroup6]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFASBknpSNDbzrFJW1ofb4Wkyan4]  DEFAULT ((0)) FOR [FillingTimeGroup7]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF7GNjZ1YOjQ78JWuqvmJcZbuQiu0]  DEFAULT ('') FOR [ContactPersonPhone]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFSy64H8ZFfW9965fnSBKlaKRp0]  DEFAULT ('') FOR [AdditionalContactPersonPhone]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFw2MnKzmIOBQAzI7FYcWHS8NedtU]  DEFAULT ('') FOR [BossFIO]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFI9yr9DDk9zpdTmWe2pep245WcD0]  DEFAULT ('') FOR [BossPhoneNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFSNcby2sMAu7lTmZ2mxG57d2tMUY]  DEFAULT ('') FOR [RegisterAddress]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFcFGyR2E018c5m3NtW10tJt0tOWM]  DEFAULT ('') FOR [ActualAddress]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFu23GmRL844rZG6vgkW9BZx9mGfQ]  DEFAULT ((0)) FOR [IsNotResident]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFJowrFA6iLl1fda8JcMDD4vZrfc]  DEFAULT ('') FOR [ContactPersonFamilyName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFIeCj1yVPezfidpVzchtKGtkBA7c]  DEFAULT ('') FOR [ContactPersonFirstName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF9C4m6pvth2heU3KJ04GzbldWI]  DEFAULT ('') FOR [ContactPersonFatherName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFV6vA0lju1Tz8QiupgeWVJpYENS8]  DEFAULT ('') FOR [ContactPersonMobilePhone]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFAq3FAM5WtFSOrupvgHXRzUS3ck]  DEFAULT ('') FOR [AccountPhone]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFS0rqxf6cOuPhnqE1nDr7l25qQwc]  DEFAULT ('') FOR [Email]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF0bqmR5VsKhe1OtjfuBQrbWVRDA8]  DEFAULT ('') FOR [IPRegion]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFbbr7BrFos0YgS0IDznxKWvE0mNs]  DEFAULT ((0)) FOR [RequestedOfferSum]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFTWNMQXWdMcwzHhUntVptTGlaZfU]  DEFAULT ('') FOR [WorkAddress]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFwZIXP0gQ61wrtS3CxUrDDYIcM]  DEFAULT ((0)) FOR [WaitingTime]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFojHdiLhVG7FguQMgjVinshCpOYU]  DEFAULT ((0)) FOR [ProcessingTime]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFCiXC9ITQ7VWkqKPrACdv1CXrWc4]  DEFAULT ('') FOR [SourceURL]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFfjHMmPbjl4WtyuotkAEIvrmM9Bo]  DEFAULT ((0)) FOR [IsAgreeWithGeneralRules]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFuBPh2DgTEH4kNIe6CO4zFmrU2s]  DEFAULT ('') FOR [FailedSSVerificationStep]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFLfCqfLXknPAQ6ob98BBjxxL04Q]  DEFAULT ('') FOR [Cookie]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFc2OuC5BRA1waaNPGNAdxs94iQ]  DEFAULT ('') FOR [AnswerURL]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF6JbHqyKfaqgm92wr0slajk7GtI]  DEFAULT ((0)) FOR [RequestSentToLead]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFOnSR82s2FpVGFHGPU6xZ6FRpnzY]  DEFAULT ('') FOR [ContactTransferCode]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFM5Vcmcpk8z2Arp9hAddEls4ikU]  DEFAULT ((0)) FOR [SaleSum]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF3nDZRk22Mv2r7LCfEgG1Oxg9A]  DEFAULT ((0)) FOR [Maturity]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF5kJYZqyGmZe2fBkYNTVZLoepo]  DEFAULT ((0)) FOR [RepaymentCount]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFMbTnX5yzZiPWQzRul6dIzntv5Y]  DEFAULT ((0)) FOR [LimitSandbox]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFOMkg3aAMVuZSpLC7Tk7XtJk9GhU]  DEFAULT ('') FOR [CommentSandbox]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFfxwenJbxfKa8VTgjfpkJmOQQ]  DEFAULT ('') FOR [PaymentSystemAccountInfo]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFQ4hEtHJ57OPoFsQUDKfwc19CoA]  DEFAULT ((0)) FOR [NoContactFatherName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFTTllQP32y5OVA3BPJhPtADORGk]  DEFAULT ((0)) FOR [FrozenForever]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF1nMYo1ybbYJ53rph4x4v9rp1xU]  DEFAULT ('') FOR [AnswerURL2]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFQKTGLAdBddWlbojgMFQHgb6tQU]  DEFAULT ('') FOR [AnswerURL3]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFAfJWvhpIG2kKx1IXx1RsJcjzZW0]  DEFAULT ('') FOR [clientOrderId]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFaAj69xYb8C2CeplxsKldOl50uG8]  DEFAULT ('') FOR [PromoCode]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFt6pNKhlDXm3PDfNaru9j9KbbGv8]  DEFAULT ((0)) FOR [DayProlongation]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFkwB7mfq3FwgUvhzZjNWKPkR1SEY]  DEFAULT ((0)) FOR [IsSendDC]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFvcymrKuRAQZvPq3u25tCAOorZo]  DEFAULT ((0)) FOR [InterestOverpaymentFull]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFflPfjfVDRdRsXqsuxgqrIWrFRY]  DEFAULT ((0)) FOR [InterestOverpaymentUnpaid]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFh9uN1UWoASZhRvcDAlY4qTj6G1k]  DEFAULT ((0)) FOR [LimitAccrualProc]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFkm0nfWg8Be6auT6BOOWF3NNb4]  DEFAULT ((0)) FOR [AgreeConnect3face]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFr5Fu5M0xHLqNKImc72YkmFAqoX0]  DEFAULT ('') FOR [AgreeCommentConnect3face]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFXa08CKwxw5ZGZG7KwomIN59KKY]  DEFAULT ((0)) FOR [AgreeTransfer3face]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFqtG0bTCkknqkio9QKd8XAY3Dg]  DEFAULT ('') FOR [AgreeCommentTransfer3face]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFOJ3ORAixwITINoOaA1XZWN8prRU]  DEFAULT ((0)) FOR [AgreeConnectTel]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFhWZLYapQV3JKqCat2RZI8ktMD6U]  DEFAULT ('') FOR [AgreeCommentConnectTel]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFuYPi5jIwEAqZcXlvsM1EddcM8]  DEFAULT ((0)) FOR [AgreeConnect]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFPOxX63rWT8bdpfabRnufSur1ks8]  DEFAULT ('') FOR [AgreeCommentConnect]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFUdT0z0djmjQP1KozuXV7V1M6WQw]  DEFAULT ((0)) FOR [AgreeConnectMFO]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFOFCaqjVaF8AAmNJHwQRYEjoqHU]  DEFAULT ('') FOR [AgreeCommentConnectMFO]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF5vZQ1vqKRpDKvhUZebC3YoQ08]  DEFAULT ('') FOR [CourtJudgementNumber]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFg8eoMa4DLC6oMQTCYZz6hZ2UI]  DEFAULT ('') FOR [JudicialAgencyName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFbTbYJKZq9aMci0lHqRl9RuW7aug]  DEFAULT ('') FOR [Resolution]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFHnnLQ9vexGuEuU4BBepY0ur5DA]  DEFAULT ((0)) FOR [Insolvent]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFGkUq3xEsnKtfGXIwB2Es4eASikg]  DEFAULT ('') FOR [SNILS]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFDURpN0qvv2rzSagsaadoG088p4k]  DEFAULT ('') FOR [INN]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFaBq8vFOullnUzYgfoJe9M3CHMs]  DEFAULT ((0)) FOR [WantToGetBystrokarta]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFHZE3dH7q3u66zAMQ4gtWjxd1wdM]  DEFAULT ((0)) FOR [HasErrorsDC]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFtL2Vi3pFdqJ06KULcFdqxfQYgE4]  DEFAULT ('') FOR [GeneratedSnils]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFfmFvDCyo2xEH1Arxj7Wg2iGPfl4]  DEFAULT ((0)) FOR [isSentResponceToLead]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFkH8vUSWhN2F6imtSoIjXlqPaZuI]  DEFAULT ((0)) FOR [AgreeNumberCommunication]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFzf8RzDPJMLU1JzQO5og841l0]  DEFAULT ('') FOR [AgreeCommentNumberCommunication]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFRyZSJUTyLVj7HEIJSg51VggdcTI]  DEFAULT ((0)) FOR [NoSnils]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFKt2UTsyojJIWjOCKzOnPPXrIiM]  DEFAULT ('') FOR [StreamId]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF0GGAglAXtXjUEfVmqzwYVE7kuFk]  DEFAULT ('') FOR [InformationOnLitigation]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFGaUgYNBd3lchEjTUBWiPoHqnrY]  DEFAULT ('') FOR [OtherSourceIncome]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFSLnCbumidsyLWg1djcbhOZlCLFg]  DEFAULT ((0)) FOR [APSK]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFGAz46cy2VpEFiJZy0Fy0PrtHig]  DEFAULT ((0)) FOR [ChangeAccrueProc]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFzrkpUSv2Qos219WIt4flDexSk8]  DEFAULT ('') FOR [GeneratedINN]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFx4eOV7hHiK60iFGH85tRiGVLoI]  DEFAULT ((0)) FOR [RequestedOfferPeriod]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFh7W65ZVKXs4JQuNzDdGkEZZTWE]  DEFAULT ((0)) FOR [PreviousPaymentAmount]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFX1puVzukabTnNVhAPBAV3cuu324]  DEFAULT ((0)) FOR [CurrentPaymentAmount]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFtGbS2CmjL8nvYIpM0pJPCIDQfeQ]  DEFAULT ((0)) FOR [UnpaidPeriod]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFnKl8kcfGWWdMgRXn5ActdJi5Jis]  DEFAULT ('') FOR [ContactPreviousFamilyName]
GO

ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DFpKChoTwF35CJIqqfiR0ca4wuuQg]  DEFAULT ((0)) FOR [InternallySold]
GO

ALTER TABLE [dbo].[Application] ADD  DEFAULT ((0)) FOR [StateDutyDebt]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK2JbpMPsYZNP5g4tAU6xOM9JzNg] FOREIGN KEY([FullIdentificationId])
REFERENCES [dbo].[FullIdentification] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK2JbpMPsYZNP5g4tAU6xOM9JzNg]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK2obTIsQZuMzEOA0EnTG6mfxQ] FOREIGN KEY([CashflowSourceId])
REFERENCES [dbo].[CashflowSource] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK2obTIsQZuMzEOA0EnTG6mfxQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK30q33OrJ4GzGsl0IzYCVeQ] FOREIGN KEY([AccountInContactId])
REFERENCES [dbo].[Account] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK30q33OrJ4GzGsl0IzYCVeQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK3iu7ZR5D7yqYFhoyqc84TF8VxY8] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK3iu7ZR5D7yqYFhoyqc84TF8VxY8]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK4ekVQiLNS80MBEbA3Ag2MPWpi4] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Account] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK4ekVQiLNS80MBEbA3Ag2MPWpi4]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK4kVeKYLtrUdfEuq1RGuE0ifTE] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ApplicationStatus] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK4kVeKYLtrUdfEuq1RGuE0ifTE]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK4xHS6Muq6hOhcrj4w9ym3Ec] FOREIGN KEY([FinancingInstrumentId])
REFERENCES [dbo].[FinancingInstrument] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK4xHS6Muq6hOhcrj4w9ym3Ec]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK72xm1l6SmN9e6Dd67at9iyFBI] FOREIGN KEY([SentOnConsiderationById])
REFERENCES [dbo].[Contact] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK72xm1l6SmN9e6Dd67at9iyFBI]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK82ewWJqfzwDKbaiwIdfcOwhiELg] FOREIGN KEY([SourceCompanyId])
REFERENCES [dbo].[Owner] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK82ewWJqfzwDKbaiwIdfcOwhiELg]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK8Svn3wuWotC1RZ3ABOskhLYgsQ] FOREIGN KEY([ApplicationFreezeId])
REFERENCES [dbo].[ApplicationFreeze] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK8Svn3wuWotC1RZ3ABOskhLYgsQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK9ST8xCMe2MsBdXSDlasEMDTBhHI] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK9ST8xCMe2MsBdXSDlasEMDTBhHI]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKa5lGSPi6sB5Fm5YGrcBz6v9dFM] FOREIGN KEY([RelationToInsolventId])
REFERENCES [dbo].[RelationToInsolvent] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKa5lGSPi6sB5Fm5YGrcBz6v9dFM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKaWuZ5jtnmYiRGSNbPs0P5zo34o] FOREIGN KEY([ContactPersonId])
REFERENCES [dbo].[ContactRelatedPerson] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKaWuZ5jtnmYiRGSNbPs0P5zo34o]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKB6kX45uLhrALvWtYeXGakQXJeo] FOREIGN KEY([ContactCitizenshipId])
REFERENCES [dbo].[Country] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKB6kX45uLhrALvWtYeXGakQXJeo]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKC7qXjX23gSrCroh49DpyBsV1og] FOREIGN KEY([OkbPurpOfFinanceId])
REFERENCES [dbo].[OkbPurpOfFinance] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKC7qXjX23gSrCroh49DpyBsV1og]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKcLuDk7I9JkZ9se9nxl3hqrIHVYg] FOREIGN KEY([AdditionalContactPersonTypeId])
REFERENCES [dbo].[ContactPersonType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKcLuDk7I9JkZ9se9nxl3hqrIHVYg]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKCoNi0OV9t6IL4GkN5RIzpMXW24] FOREIGN KEY([AccountIndustryId])
REFERENCES [dbo].[AccountIndustry] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKCoNi0OV9t6IL4GkN5RIzpMXW24]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKDfFVCWnY6PvpRlBF9CLth7EbPR0] FOREIGN KEY([StagePeriodId])
REFERENCES [dbo].[StagePeriod] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKDfFVCWnY6PvpRlBF9CLth7EbPR0]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKdqyCJKsRIvUgTprKFexAJirHO8] FOREIGN KEY([ContractSaleId])
REFERENCES [dbo].[ContractSale] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKdqyCJKsRIvUgTprKFexAJirHO8]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKDVpaExrzMNFuXswR58eAug5OHyc] FOREIGN KEY([AccountEmployeesNumberId])
REFERENCES [dbo].[AccountEmployeesNumber] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKDVpaExrzMNFuXswR58eAug5OHyc]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKDyOq15OhcUgSt665Tb6WPFWZM8] FOREIGN KEY([LoanNeedId])
REFERENCES [dbo].[LoanNeeds] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKDyOq15OhcUgSt665Tb6WPFWZM8]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKeb4VeXIaBYNyrM8Gfs13q5mIMM] FOREIGN KEY([CngDocumentId])
REFERENCES [dbo].[CngDocument] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKeb4VeXIaBYNyrM8Gfs13q5mIMM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKFMvjRRDWU5lCsM5mCtt4mvsQfWM] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKFMvjRRDWU5lCsM5mCtt4mvsQfWM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKGjDXxXatiuwePNPZuhGBbigimo] FOREIGN KEY([ContactPersonTypeId])
REFERENCES [dbo].[ContactPersonType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKGjDXxXatiuwePNPZuhGBbigimo]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKgjhScHeveIzssLv9Aoyt3gogyE0] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKgjhScHeveIzssLv9Aoyt3gogyE0]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKgLzLndXCKXAvtoEeqN9x38HLyCM] FOREIGN KEY([ContactGenderId])
REFERENCES [dbo].[Gender] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKgLzLndXCKXAvtoEeqN9x38HLyCM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKH47w5WMhxowq4Qz3XnqmTYO4cKM] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Busyness] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKH47w5WMhxowq4Qz3XnqmTYO4cKM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKhiwxDyUOkjO8doR2Fs1nkOb2q8] FOREIGN KEY([AccountOwnershipId])
REFERENCES [dbo].[AccountOwnership] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKhiwxDyUOkjO8doR2Fs1nkOb2q8]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKI8w2kXbdf2uYTsSxcDVrMXSk0y4] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKI8w2kXbdf2uYTsSxcDVrMXSk0y4]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc] FOREIGN KEY([RelationToInsolventId])
REFERENCES [dbo].[RelationToInsolvent] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKigQYth45LKeoxYrBkwE7xhQbM] FOREIGN KEY([PaymentScheduleFileId])
REFERENCES [dbo].[ApplicationFile] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKigQYth45LKeoxYrBkwE7xhQbM]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKinevFWKu7QJkQfObuIqNA9m1gU] FOREIGN KEY([CessionAgencyId])
REFERENCES [dbo].[CessionAgency] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKinevFWKu7QJkQfObuIqNA9m1gU]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKjEZ22ei3UjR3a2N4eQM7onxUDrE] FOREIGN KEY([ClientTypeId])
REFERENCES [dbo].[ClientType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKjEZ22ei3UjR3a2N4eQM7onxUDrE]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKjJkn1ZC2M04pbzqLisB8YPRc3M] FOREIGN KEY([IssuanceTypeId])
REFERENCES [dbo].[FinancingInstrumentType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKjJkn1ZC2M04pbzqLisB8YPRc3M]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKjuuNWdEku04Se5YqC2zYDt7J8zQ] FOREIGN KEY([ContactMaritalStatusId])
REFERENCES [dbo].[MaritalStatus] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKjuuNWdEku04Se5YqC2zYDt7J8zQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKldpah3rTgAA7xROLn82NrMufBo] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKldpah3rTgAA7xROLn82NrMufBo]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKlGro0n0eH10bLzU4Z0i8VAC2M] FOREIGN KEY([ProfitSourceId])
REFERENCES [dbo].[IncomeSource] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKlGro0n0eH10bLzU4Z0i8VAC2M]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKlPfJ9nScB8CEclGWCw2fdUOe1j4] FOREIGN KEY([DecisionId])
REFERENCES [dbo].[ApplicationDecision] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKlPfJ9nScB8CEclGWCw2fdUOe1j4]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE] FOREIGN KEY([LegalOrganizationalFormId])
REFERENCES [dbo].[LegalOrganizationalForm] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKmlOIOSc1QMMfIlwS2xRddObSBo] FOREIGN KEY([PrintStatusId])
REFERENCES [dbo].[PrintStatus] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKmlOIOSc1QMMfIlwS2xRddObSBo]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKmVFMWjyqfSo3twYDnjX12S6R31I] FOREIGN KEY([ContactEducationId])
REFERENCES [dbo].[Education] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKmVFMWjyqfSo3twYDnjX12S6R31I]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o] FOREIGN KEY([ContactSocialStatusId])
REFERENCES [dbo].[SocialStatus] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKnpyE5XyFVvCAgTmpqhETfatUHUU] FOREIGN KEY([OfferFileId])
REFERENCES [dbo].[ApplicationFile] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKnpyE5XyFVvCAgTmpqhETfatUHUU]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKO4JSwkS6SnaAWnjR18obLR2jsQ] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Contact] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKO4JSwkS6SnaAWnjR18obLR2jsQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKoC7jSvVNjMz5bpiJNXN1H9AEzq8] FOREIGN KEY([CreditFrequencyId])
REFERENCES [dbo].[CreditFrequency] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKoC7jSvVNjMz5bpiJNXN1H9AEzq8]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKSOfRdYBR92Fqo8bRI50Mf3OGJ0] FOREIGN KEY([RequestToApplicationId])
REFERENCES [dbo].[RequestToApplication] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKSOfRdYBR92Fqo8bRI50Mf3OGJ0]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKSZku8i6xvIhZiGYxemPmFhwZs] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ContactDecisionRole] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKSZku8i6xvIhZiGYxemPmFhwZs]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKTOwaipZb1f1laCO9Bh8fFuEzLaY] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKTOwaipZb1f1laCO9Bh8fFuEzLaY]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKU0uogzvyWXJyawk2IY0rYBHXdg] FOREIGN KEY([ContactSourceId])
REFERENCES [dbo].[ContactSource] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKU0uogzvyWXJyawk2IY0rYBHXdg]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKughHm0C0h9fShw0ZWb5rmVh6Xj0] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKughHm0C0h9fShw0ZWb5rmVh6Xj0]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKUr8NrhFZa2a96x6ckwjtGVN0] FOREIGN KEY([OkbPurpOfFinanceId])
REFERENCES [dbo].[OkbPurpOfFinance] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKUr8NrhFZa2a96x6ckwjtGVN0]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKUTflzOvOlZsOs798wBUgwdZef4] FOREIGN KEY([INNCheckLogId])
REFERENCES [dbo].[INNCheckLog] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKUTflzOvOlZsOs798wBUgwdZef4]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKUW5RXk6snZ6K370cPdr07Yyn0A] FOREIGN KEY([ContactPersonRelationTypeId])
REFERENCES [dbo].[RelationType] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKUW5RXk6snZ6K370cPdr07Yyn0A]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKuZL1P7F2Cl0IV23DtsokNVnKI] FOREIGN KEY([DecisionReasonId])
REFERENCES [dbo].[DecisionReasons] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKuZL1P7F2Cl0IV23DtsokNVnKI]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKV2YprgChMsXwzM656ep0AbL6rU] FOREIGN KEY([SecondStageStatusId])
REFERENCES [dbo].[SecondStageStatus] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKV2YprgChMsXwzM656ep0AbL6rU]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKwQHiRcZmIiwqKgT0rwWggzZx7BQ] FOREIGN KEY([AutoTypeId])
REFERENCES [dbo].[CarBrands] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKwQHiRcZmIiwqKgT0rwWggzZx7BQ]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKypQ9wC69eVj1YYwYWbAwZYSi4w] FOREIGN KEY([MarketingEventId])
REFERENCES [dbo].[MarketingEvent] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKypQ9wC69eVj1YYwYWbAwZYSi4w]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI] FOREIGN KEY([ContactSourceGroupId])
REFERENCES [dbo].[ContactSourceGroup] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI]
GO

ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FKz1EL81bHAPPoHMYHCnLGkxNGA] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO

ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FKz1EL81bHAPPoHMYHCnLGkxNGA]
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Id,en-GB|Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AE0E45CA-C495-4FE7-A39D-3AB7278E1617}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFJ3BnOuNMdyH0tYsGQ2m9tSA9MZU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AE0E45CA-C495-4FE7-A39D-3AB7278E1617}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CreatedOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата создания,en-GB|Created On' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E80190A5-03B2-4095-90F7-A193A960ADEE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7jfSjB2jfmlaDgpjeIzUQq38noE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF7jfSjB2jfmlaDgpjeIzUQq38noE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7jfSjB2jfmlaDgpjeIzUQq38noE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E80190A5-03B2-4095-90F7-A193A960ADEE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7jfSjB2jfmlaDgpjeIzUQq38noE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CreatedById' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Создал,en-GB|Created By' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{16BE3651-8FE2-4159-8DD0-A803D4683DD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EBF6BB93-8AA6-4A01-900D-C6EA67AFFE21}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ModifiedOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата изменения,en-GB|Modified On' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9928EDEC-4272-425A-93BB-48743FEE4B04}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFL4BAnSD4AuUW8EjkYkPdzRMCgNI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFL4BAnSD4AuUW8EjkYkPdzRMCgNI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFL4BAnSD4AuUW8EjkYkPdzRMCgNI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9928EDEC-4272-425A-93BB-48743FEE4B04}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFL4BAnSD4AuUW8EjkYkPdzRMCgNI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ModifiedById' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Изменил,en-GB|Modified By' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{16BE3651-8FE2-4159-8DD0-A803D4683DD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3015559E-CBC6-406A-88AF-07F7930BE832}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Заметки,en-GB|Notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{A22B1E79-7FC1-4FE5-ABA0-538E9DF96F17}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ABC96728-FAF6-451D-91F6-35BC53EA9745}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Notes'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFZh9jHqLNV0iTpJfuqrQcOrdSW5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFZh9jHqLNV0iTpJfuqrQcOrdSW5Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFZh9jHqLNV0iTpJfuqrQcOrdSW5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ABC96728-FAF6-451D-91F6-35BC53EA9745}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFZh9jHqLNV0iTpJfuqrQcOrdSW5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ProcessListeners' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Активны процессы,en-GB|Active Processes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1BAB9DCF-17D5-49F8-9536-8E0064F1DCE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3FABD836-6A53-4D8D-9069-6DF88D9DAE1E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessListeners'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDyoCfpD6SfAhnJavF8PPwR4Sdo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFDyoCfpD6SfAhnJavF8PPwR4Sdo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDyoCfpD6SfAhnJavF8PPwR4Sdo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3FABD836-6A53-4D8D-9069-6DF88D9DAE1E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDyoCfpD6SfAhnJavF8PPwR4Sdo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Номер,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0F365235-6242-4644-8451-C59B4EF2BDC2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkeXQOYfUxMVuv37eKVvh9WcLCQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFkeXQOYfUxMVuv37eKVvh9WcLCQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkeXQOYfUxMVuv37eKVvh9WcLCQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0F365235-6242-4644-8451-C59B4EF2BDC2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkeXQOYfUxMVuv37eKVvh9WcLCQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ClientTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Тип клиента,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{150DEDB5-FFF3-42E5-B7A3-91A999EA222C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AC9D27A6-D645-48C0-9078-84C84F5094C1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ClientTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Контрагент,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{25D7C1AB-1DE0-4501-B402-02E0E5A72D6E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{51BB4B8A-EA5E-47A0-973B-BE0DE1B95FC3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Контакт,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{16BE3651-8FE2-4159-8DD0-A803D4683DD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{11FFF3FD-1494-4702-9A0D-7C879DDAF142}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ProductId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Продукт,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{4C7A6EAD-4EB8-4FC0-863E-98A664569FED}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C9EF64EB-30CC-435B-A4CF-E6D3A3896799}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProductId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Debtor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Заемщик,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{983C6E7D-2DE9-4F60-8E3D-BDC3FB347FEA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Debtor'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFU7SPhST7CxJjnlDPLxbWZKbSNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFU7SPhST7CxJjnlDPLxbWZKbSNs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFU7SPhST7CxJjnlDPLxbWZKbSNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{983C6E7D-2DE9-4F60-8E3D-BDC3FB347FEA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFU7SPhST7CxJjnlDPLxbWZKbSNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'StatusId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Состояние,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{403243A0-B1F1-43A9-9C7D-15955EFBF6F5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3C0D4AEC-8E43-440F-8362-B54341D33C7C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OwnerId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Ответственный,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{16BE3651-8FE2-4159-8DD0-A803D4683DD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7604A1B3-41AA-4E17-A149-2993BD55A622}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DivisionId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Отделение,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{25D7C1AB-1DE0-4501-B402-02E0E5A72D6E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{24A2E287-493F-47E2-96D3-4E1B33A6E178}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата подачи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0D7D9388-D507-430C-B865-A8417D40DA02}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ProceededOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата решения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D244DD48-5917-4047-B520-D89EB7F36E27}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProceededOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DecisionId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Решение,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{38B563D4-07D7-44ED-8B21-F5A559E21E16}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C74C028A-05CB-4CAD-9E1F-61B73686DB70}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CampaignId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Кампания,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{A7DC714C-45A7-4971-9E1E-CFE64D5CD410}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C0BCF0D4-F94A-4047-A9CB-902165365880}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CampaignId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAgreeProcessingCRB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на обработку БКИ,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3C60A68B-C1A7-4B37-97F9-C5BB144545D7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeProcessingCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yxOupJTBNChh3wEH273UYKbFBs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF6yxOupJTBNChh3wEH273UYKbFBs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yxOupJTBNChh3wEH273UYKbFBs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3C60A68B-C1A7-4B37-97F9-C5BB144545D7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yxOupJTBNChh3wEH273UYKbFBs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OfferNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Номер договора,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{26E80ED1-E7F5-4A49-A2F7-D2819485518E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5i7QXU0smeYDGQyPFfFm2t8oiI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF5i7QXU0smeYDGQyPFfFm2t8oiI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5i7QXU0smeYDGQyPFfFm2t8oiI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{26E80ED1-E7F5-4A49-A2F7-D2819485518E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5i7QXU0smeYDGQyPFfFm2t8oiI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OfferSum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3ACC8349-2864-4251-877B-BE68FEFFBBF8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFznaDCNFhDs9ZT4LsPvOSUUsJrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFznaDCNFhDs9ZT4LsPvOSUUsJrY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFznaDCNFhDs9ZT4LsPvOSUUsJrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3ACC8349-2864-4251-877B-BE68FEFFBBF8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFznaDCNFhDs9ZT4LsPvOSUUsJrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FullOfferSum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Полная стоимость займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E3B2D954-A800-42F6-90B7-F166E4DB4B10}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTclOjZWdgmaLLHmfy0Fm486D2ZA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFTclOjZWdgmaLLHmfy0Fm486D2ZA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTclOjZWdgmaLLHmfy0Fm486D2ZA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E3B2D954-A800-42F6-90B7-F166E4DB4B10}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTclOjZWdgmaLLHmfy0Fm486D2ZA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OfferPeriod' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Срок займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9392EC4F-B698-4381-A4D9-D0EAA53DDC96}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5e5H1h69e3opzlPqDwFlhRRa5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF5e5H1h69e3opzlPqDwFlhRRa5Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5e5H1h69e3opzlPqDwFlhRRa5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9392EC4F-B698-4381-A4D9-D0EAA53DDC96}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5e5H1h69e3opzlPqDwFlhRRa5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DecisionReasonId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Причина решения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{A58F2F2D-22F6-4E5C-A8F9-8531EC12AF8F}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5C54774D-87C5-48E3-9E51-4B55D7858CD8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DecisionReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CityId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Регион (по IP),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{5CA90B6A-93E7-4448-BEFE-AB5166EC2CFE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BBFA025C-D6D5-427C-B564-A19E26E3F563}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CityId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OfferText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Текст оферты,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A272B4B7-F0F2-401F-8B17-80A856C5CB84}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferText'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSwpUJSL1ejOyueqh7ZlDwFmeDg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFSwpUJSL1ejOyueqh7ZlDwFmeDg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSwpUJSL1ejOyueqh7ZlDwFmeDg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A272B4B7-F0F2-401F-8B17-80A856C5CB84}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSwpUJSL1ejOyueqh7ZlDwFmeDg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарии,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D4BF5EA-870F-4A72-A354-4EBFED7E6A42}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Comment'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1O8hsVUkUDoSvWAdTzeP76jOIk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF1O8hsVUkUDoSvWAdTzeP76jOIk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1O8hsVUkUDoSvWAdTzeP76jOIk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D4BF5EA-870F-4A72-A354-4EBFED7E6A42}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1O8hsVUkUDoSvWAdTzeP76jOIk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Тип,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{0B5FF414-E00A-4115-AF0C-FE872E826F07}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4862F1B8-9AA6-4E63-805C-3042564D131B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PIN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|ИНН,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D96A15ED-E522-4BF8-A5BA-39792752B58D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PIN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9FOHVBiymYv2UKcNrQ2AqF7y5c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFr9FOHVBiymYv2UKcNrQ2AqF7y5c' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9FOHVBiymYv2UKcNrQ2AqF7y5c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D96A15ED-E522-4BF8-A5BA-39792752B58D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9FOHVBiymYv2UKcNrQ2AqF7y5c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Birthplace' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Место рождения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{981AC9BB-3579-4D79-94B9-B6464D88E63A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKPMwC60NfXMfKFD9Y8jb6vX53ro'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFKPMwC60NfXMfKFD9Y8jb6vX53ro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKPMwC60NfXMfKFD9Y8jb6vX53ro'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{981AC9BB-3579-4D79-94B9-B6464D88E63A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKPMwC60NfXMfKFD9Y8jb6vX53ro'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAgreedTerms' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие с Условиями,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{930D1737-67C4-4639-B7CB-8E370D8AE80E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedTerms'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4LqhU6DqGc1j2QNhu4wAxkCzOo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF4LqhU6DqGc1j2QNhu4wAxkCzOo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4LqhU6DqGc1j2QNhu4wAxkCzOo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{930D1737-67C4-4639-B7CB-8E370D8AE80E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4LqhU6DqGc1j2QNhu4wAxkCzOo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAgreedPersonalDataProcessing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на обработку персональных данных,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{22B772AB-7AE5-42D9-A0DE-D7BF385E17C7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreedPersonalDataProcessing'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF2kOJZhKdOZtZ4jkMjukagaWQLUk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF2kOJZhKdOZtZ4jkMjukagaWQLUk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF2kOJZhKdOZtZ4jkMjukagaWQLUk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{22B772AB-7AE5-42D9-A0DE-D7BF385E17C7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF2kOJZhKdOZtZ4jkMjukagaWQLUk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DivisionCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Код подразделения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F2543691-D3D5-404D-878A-21A2BAE09505}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DivisionCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxGi94PAqNnIU6r2ST9F1MeO3Lg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFxGi94PAqNnIU6r2ST9F1MeO3Lg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxGi94PAqNnIU6r2ST9F1MeO3Lg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F2543691-D3D5-404D-878A-21A2BAE09505}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxGi94PAqNnIU6r2ST9F1MeO3Lg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DocumentExpiredOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Действителен до,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{40CC80C1-9547-43E5-91D6-037192DAEAF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DocumentExpiredOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'BusinessId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Занятость,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{8D133E45-6FC9-40B5-A128-973668432CE7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{204338AF-F3D1-4D2F-84B5-689D55E80766}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BusinessId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'JobId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Должность,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{C82AB6F0-0E36-4376-9AB3-C583D714B7B6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{CF0D80F6-C4FB-4834-B23C-5AE8D9B42D08}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JobId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DepartmentId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Департамент,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{7A269220-A657-4B5F-BFB4-EBE596E419D8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5C3AA7B4-FF87-4E5A-A7A0-557787A7AB44}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RoleId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Роль,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{54AA771F-FBA6-4D76-9239-BFF3F00EE3E5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{59AD679E-3C79-4723-84CC-C3DC76EDF912}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ProfitSourceId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Источник доходов,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{51338778-73E2-4632-BE3C-154EE44823EA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{42D5DFEF-2E50-4E52-8563-4973CF3FB094}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProfitSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SumAverageMonthEarning' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Суммарный средний месячный заработок,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0804018E-C7CF-4768-A631-163576AC3BED}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SumAverageMonthEarning'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFYwydBPJd2WjN2Vdcw8Mevwz0Ys8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFYwydBPJd2WjN2Vdcw8Mevwz0Ys8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFYwydBPJd2WjN2Vdcw8Mevwz0Ys8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0804018E-C7CF-4768-A631-163576AC3BED}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFYwydBPJd2WjN2Vdcw8Mevwz0Ys8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'EarningDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|День выплаты зарплаты,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4217CC2F-ACAB-4A22-8AF0-6F7016C9E5D5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'EarningDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PrepaymentDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|День выплаты аванса,en-GB|Column 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7DE1B215-9F61-4F27-968F-B9212F4B5BB6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CreditRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Кредитный рейтинг,en-GB|Column 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{309A9F04-8D1B-4032-B682-C2D988872BDB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpjOrOJl2PJBhnymaSr7HfVyQBiQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFpjOrOJl2PJBhnymaSr7HfVyQBiQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpjOrOJl2PJBhnymaSr7HfVyQBiQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{309A9F04-8D1B-4032-B682-C2D988872BDB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpjOrOJl2PJBhnymaSr7HfVyQBiQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ScoringRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Скоринговый бал,en-GB|Column 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EC5EDACD-4DFD-45C7-BED6-EF75DDEF51A7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ScoringRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEQdKJ0SIsHTpvcV3x8CuLoJzvEo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFEQdKJ0SIsHTpvcV3x8CuLoJzvEo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEQdKJ0SIsHTpvcV3x8CuLoJzvEo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EC5EDACD-4DFD-45C7-BED6-EF75DDEF51A7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEQdKJ0SIsHTpvcV3x8CuLoJzvEo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DoesHaveAuto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Автомобиль в наличии,en-GB|Column 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0FB26B65-FEC8-4DD1-A3C4-425BFCD46C9B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveAuto'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqgdmgjWwsTKVnd4gsLgF61836E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFqgdmgjWwsTKVnd4gsLgF61836E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqgdmgjWwsTKVnd4gsLgF61836E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0FB26B65-FEC8-4DD1-A3C4-425BFCD46C9B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqgdmgjWwsTKVnd4gsLgF61836E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AutoPrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Стоимость автомобиля,en-GB|Column 7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D3A66DA-B5F3-4453-B69D-8A418BB567D1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRvT4OplbVILysk8NkZgTD9ZuY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFRvT4OplbVILysk8NkZgTD9ZuY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRvT4OplbVILysk8NkZgTD9ZuY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D3A66DA-B5F3-4453-B69D-8A418BB567D1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRvT4OplbVILysk8NkZgTD9ZuY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AutoTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Марка автомобиля,en-GB|Column 8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{532CD95D-23F4-4C19-AA5D-4915E3AD641D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4BDBDBFC-B65E-4C44-8A7B-D845CB5A3243}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AutoBirthDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Год выпуска авто,en-GB|Column 9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0FFD8419-9EE6-4826-8FA2-354EC34C1EB5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AutoBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxhp6wDk9llrMBQdG8BZZgeeE8N4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFxhp6wDk9llrMBQdG8BZZgeeE8N4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxhp6wDk9llrMBQdG8BZZgeeE8N4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0FFD8419-9EE6-4826-8FA2-354EC34C1EB5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxhp6wDk9llrMBQdG8BZZgeeE8N4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DoesHaveHouse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Квартира/Комната в наличии,en-GB|Column 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F835A5FC-7DB2-4D5F-A891-6707217D36A8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DoesHaveHouse'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFd6NcFcC5zPJXHUUxV9J1WLzGX4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFd6NcFcC5zPJXHUUxV9J1WLzGX4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFd6NcFcC5zPJXHUUxV9J1WLzGX4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F835A5FC-7DB2-4D5F-A891-6707217D36A8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFd6NcFcC5zPJXHUUxV9J1WLzGX4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'HousePrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Стоимость квартиры,en-GB|Column 11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2F1E1011-5A29-44F7-A927-A048F93CA9D5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HousePrice'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFILurIrniMLNa8KbIP8nAX1RIo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFILurIrniMLNa8KbIP8nAX1RIo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFILurIrniMLNa8KbIP8nAX1RIo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2F1E1011-5A29-44F7-A927-A048F93CA9D5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFILurIrniMLNa8KbIP8nAX1RIo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAddressRegister' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Адрес квартиры в собственности совпадает с адресом регистрации,en-GB|Column 12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DE15F858-E564-4940-9258-99B7C248CCAC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressRegister'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFrdltvgCZDS9SsdhRJU53j7ryG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFrdltvgCZDS9SsdhRJU53j7ryG8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFrdltvgCZDS9SsdhRJU53j7ryG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DE15F858-E564-4940-9258-99B7C248CCAC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFrdltvgCZDS9SsdhRJU53j7ryG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAddressActual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Адрес квартиры в собственности совпадает с адресом фактического проживания,en-GB|Column 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E26C5576-2371-4FD2-92BD-23065B38779E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAddressActual'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIkhiqwT6BQQfewxSzECTOBhnF74'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFIkhiqwT6BQQfewxSzECTOBhnF74' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIkhiqwT6BQQfewxSzECTOBhnF74'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E26C5576-2371-4FD2-92BD-23065B38779E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIkhiqwT6BQQfewxSzECTOBhnF74'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PrintStatusId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Печать досье,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{7A47BD7D-8C64-4E89-A79C-BCFDE50811A1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FC531B2E-1D8D-48C0-A437-C709DE9A7D40}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrintStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactSourceId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Источник заявки,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{A54D8F47-DD13-4D8F-B29E-4394FFF21E6C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E727CF7C-F40D-46A8-BEF2-24C76649F047}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Контактное лицо,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{4E01F347-EA1E-4043-97E6-A1D5ACF92631}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{73C831B1-D885-482A-B62A-311554459C5B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonFIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|ФИО контактного лица,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B1C77967-7C66-4EB6-9EA7-588CEC89717A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUVMSpEnN4CBoxccrIYCYTzq2w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFUVMSpEnN4CBoxccrIYCYTzq2w' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUVMSpEnN4CBoxccrIYCYTzq2w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B1C77967-7C66-4EB6-9EA7-588CEC89717A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUVMSpEnN4CBoxccrIYCYTzq2w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AdditionalContactPersonTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Доп. Контактное лицо,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{4E01F347-EA1E-4043-97E6-A1D5ACF92631}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B608E4D0-981A-400C-906B-8F644DB0AAE7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AdditionalContactPersonFIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|ФИО доп. контактного лица,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0A660E52-6022-43FA-8016-DB0A64B39898}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4fzMFH2usP2QjgDud3zwdqEaLEc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF4fzMFH2usP2QjgDud3zwdqEaLEc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4fzMFH2usP2QjgDud3zwdqEaLEc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0A660E52-6022-43FA-8016-DB0A64B39898}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF4fzMFH2usP2QjgDud3zwdqEaLEc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CreditFrequencyId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Количество кредитов,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{96D2658F-0530-4226-A395-9E1B60C3379E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BC9A70E6-7589-420D-A253-3D4204F2847B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreditFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'LoanNeedId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Цель займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{DB686A84-C32E-44F9-AD61-AEAB5FE047FF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C560CEC3-9610-411C-BF23-0F922018BDB9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LoanNeedId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PrincipalDebt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма основной задолженности,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3F79C09A-0759-4616-92CF-9526D900B47E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PrincipalDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFNIiMBaBWUYL71J8fJICAIB7RY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFNIiMBaBWUYL71J8fJICAIB7RY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFNIiMBaBWUYL71J8fJICAIB7RY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3F79C09A-0759-4616-92CF-9526D900B47E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFNIiMBaBWUYL71J8fJICAIB7RY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'InterestDebt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма задолженности по процентам,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2E1C18A0-58CE-48F4-B86F-7DE401BAA8FA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFdue221LvI50JkoSsk5QgIrJQJc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFdue221LvI50JkoSsk5QgIrJQJc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFdue221LvI50JkoSsk5QgIrJQJc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2E1C18A0-58CE-48F4-B86F-7DE401BAA8FA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFdue221LvI50JkoSsk5QgIrJQJc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PenaltyDebt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма задолженности по штрафам,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9FB90D1B-60CF-46E5-A55D-978D1E8F39F4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PenaltyDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCmAzaucOO9eP9wgbHBwQbgJKek'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFCmAzaucOO9eP9wgbHBwQbgJKek' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCmAzaucOO9eP9wgbHBwQbgJKek'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9FB90D1B-60CF-46E5-A55D-978D1E8F39F4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCmAzaucOO9eP9wgbHBwQbgJKek'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FineDebt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма задолженности по пеням,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4405F51A-4845-4157-827F-F3A15BC33ED8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FineDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3UmDji6Ocak7vNmanVJ3oQzjyk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFJ3UmDji6Ocak7vNmanVJ3oQzjyk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3UmDji6Ocak7vNmanVJ3oQzjyk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4405F51A-4845-4157-827F-F3A15BC33ED8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJ3UmDji6Ocak7vNmanVJ3oQzjyk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SummaryDebt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Итоговая задолженность,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DB0B4AC5-C3F8-46DA-AED6-FB8B78A718BB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SummaryDebt'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFB7D5I5nXKLSRfMiW50dfo8E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFB7D5I5nXKLSRfMiW50dfo8E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFB7D5I5nXKLSRfMiW50dfo8E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DB0B4AC5-C3F8-46DA-AED6-FB8B78A718BB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFB7D5I5nXKLSRfMiW50dfo8E'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactMobilePhone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Мобильный телефон контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9CEF1A94-CF31-4A41-B238-9A5D37F03C26}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF54D1KrDYKUKW5BmT5XVuwJDG66Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF54D1KrDYKUKW5BmT5XVuwJDG66Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF54D1KrDYKUKW5BmT5XVuwJDG66Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9CEF1A94-CF31-4A41-B238-9A5D37F03C26}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF54D1KrDYKUKW5BmT5XVuwJDG66Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactFamilyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Фамилия контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2A457729-4B80-4935-9CB9-2878D85C9162}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXXkClEKSVs5gUppgeWW4Tsjs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFXXkClEKSVs5gUppgeWW4Tsjs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXXkClEKSVs5gUppgeWW4Tsjs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2A457729-4B80-4935-9CB9-2878D85C9162}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXXkClEKSVs5gUppgeWW4Tsjs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactFirstName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Имя контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B009F8D9-23FD-402C-B544-250A66A14E24}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAyDnd5NKZttbNZQZestgydC6GKU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFAyDnd5NKZttbNZQZestgydC6GKU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAyDnd5NKZttbNZQZestgydC6GKU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B009F8D9-23FD-402C-B544-250A66A14E24}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAyDnd5NKZttbNZQZestgydC6GKU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactFatherName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Отчество контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{1B1603E8-A0E7-43FE-8E11-B76747022A95}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbWqY4ED4jzSjayAKeoAurgEbFY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFbWqY4ED4jzSjayAKeoAurgEbFY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbWqY4ED4jzSjayAKeoAurgEbFY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{1B1603E8-A0E7-43FE-8E11-B76747022A95}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbWqY4ED4jzSjayAKeoAurgEbFY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactMaritalStatusId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Семейное положение контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{1A699E49-C1BC-4EE9-B2BB-F11B973FA51E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2672502A-0F81-4EEE-B495-E2A4840CF82B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactMaritalStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactEducationId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Образование контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{40FD1626-350B-4960-9872-A94C6326B5E3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{33FCB420-E7C7-439A-83CB-6E17C9FFA877}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEducationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactSocialStatusId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Социальный статус контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{FD720CCC-1B69-4D5F-B284-5B7A9EF76AE1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F3044301-EFB4-45DA-A267-CE20E3C4DF3A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSocialStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactChildrenNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Детей у контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{CC4E71A8-A4F9-42C3-BF35-1FB431A1D093}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactChildrenNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLmep2b49dhrY2KhBmddnYclFv3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFLmep2b49dhrY2KhBmddnYclFv3M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLmep2b49dhrY2KhBmddnYclFv3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{CC4E71A8-A4F9-42C3-BF35-1FB431A1D093}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLmep2b49dhrY2KhBmddnYclFv3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactGenderId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Пол контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{0BC5D826-8E8F-48CD-B087-30B33D133120}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0A70F6D0-E002-420D-9F04-A4C6EB1B5653}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactGenderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactBirthDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата рождения контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BAF0BDD0-8795-4943-9CB6-874C019FAB11}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDocumentSeries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Серия паспорта контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{496F0667-0B11-43D5-A290-FDC8776A96F0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentSeries'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPZ6j8ect4na3DdID8W1pGCByoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFPZ6j8ect4na3DdID8W1pGCByoI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPZ6j8ect4na3DdID8W1pGCByoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{496F0667-0B11-43D5-A290-FDC8776A96F0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPZ6j8ect4na3DdID8W1pGCByoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDocumentNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Номер паспорта контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8906B34B-A4C2-4330-AB03-7B1294C05862}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFodkzRssI2YHblyDVSK0Oa7aBLo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFodkzRssI2YHblyDVSK0Oa7aBLo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFodkzRssI2YHblyDVSK0Oa7aBLo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8906B34B-A4C2-4330-AB03-7B1294C05862}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFodkzRssI2YHblyDVSK0Oa7aBLo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDocumentIssuedBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Кем выдан паспорт контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DC1D80FD-3000-4EDF-978D-341653F244DE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxKfJKRf3qf4mb0gmfh58o2PAtn0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFxKfJKRf3qf4mb0gmfh58o2PAtn0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxKfJKRf3qf4mb0gmfh58o2PAtn0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DC1D80FD-3000-4EDF-978D-341653F244DE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxKfJKRf3qf4mb0gmfh58o2PAtn0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDocumentIssuedOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата выдачи паспорта контакта,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{35AD906B-5062-4F71-BBD6-991684B52963}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentIssuedOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactFamilyMembersNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Членов семьи у контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C36C16D4-D3AC-42A8-8D67-12F01C3648CF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactFamilyMembersNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwUWKmEGiLcpUDMUcinfSeGxCgMo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFwUWKmEGiLcpUDMUcinfSeGxCgMo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwUWKmEGiLcpUDMUcinfSeGxCgMo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C36C16D4-D3AC-42A8-8D67-12F01C3648CF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwUWKmEGiLcpUDMUcinfSeGxCgMo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactEmployedFamilyMembers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Работающих членов семьи у контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{507EEC63-2ED8-4271-9B71-727889BB9395}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactEmployedFamilyMembers'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF13CUW0Luz3sIHRpJdDDlzimL4uw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF13CUW0Luz3sIHRpJdDDlzimL4uw' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF13CUW0Luz3sIHRpJdDDlzimL4uw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{507EEC63-2ED8-4271-9B71-727889BB9395}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF13CUW0Luz3sIHRpJdDDlzimL4uw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDependantsNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Иждивенцев у контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2C237EA4-4366-4CA3-B984-33C7477CC7F1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDependantsNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEoha1urXJGWUNwLi5kt3VcGlzGU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFEoha1urXJGWUNwLi5kt3VcGlzGU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEoha1urXJGWUNwLi5kt3VcGlzGU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2C237EA4-4366-4CA3-B984-33C7477CC7F1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFEoha1urXJGWUNwLi5kt3VcGlzGU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactJobTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Полное название должности контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{869DC99C-59EF-41F5-B94A-1CE668C3A8D4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactJobTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9z6Z5dE91xVTAIBoYFLfwMNUPo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFr9z6Z5dE91xVTAIBoYFLfwMNUPo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9z6Z5dE91xVTAIBoYFLfwMNUPo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{869DC99C-59EF-41F5-B94A-1CE668C3A8D4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr9z6Z5dE91xVTAIBoYFLfwMNUPo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactLastSeniorityYears' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Стаж контакта на последнем месте работы, лет,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{77AF7CF1-324C-45A4-8C01-8C77F31887BE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtR02JbHFrSoxL91qQ6OpwQyjg2Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFtR02JbHFrSoxL91qQ6OpwQyjg2Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtR02JbHFrSoxL91qQ6OpwQyjg2Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{77AF7CF1-324C-45A4-8C01-8C77F31887BE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtR02JbHFrSoxL91qQ6OpwQyjg2Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactLastSeniorityMonths' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Стаж контакта на последнем месте работы, мес.,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6C990769-DAF3-4CC8-AB7E-1480A5A56898}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactLastSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQI1JZ4qr0WU9zAxXQrN2ZWrc3zs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFQI1JZ4qr0WU9zAxXQrN2ZWrc3zs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQI1JZ4qr0WU9zAxXQrN2ZWrc3zs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6C990769-DAF3-4CC8-AB7E-1480A5A56898}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQI1JZ4qr0WU9zAxXQrN2ZWrc3zs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactTotalSeniorityYears' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Общий стаж работы контакта, лет,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8CC03F3-3428-4D4A-B6AD-084B2805175E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityYears'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhXailfMP438PGNChIIdobBVS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFhXailfMP438PGNChIIdobBVS8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhXailfMP438PGNChIIdobBVS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8CC03F3-3428-4D4A-B6AD-084B2805175E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhXailfMP438PGNChIIdobBVS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactTotalSeniorityMonths' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Общий стаж работы контакта, мес.,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AD9A000A-E432-4331-B902-1A07CA8445F9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTotalSeniorityMonths'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1fRgG1OagzE2N2bifHPSVDuuylY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF1fRgG1OagzE2N2bifHPSVDuuylY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1fRgG1OagzE2N2bifHPSVDuuylY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AD9A000A-E432-4331-B902-1A07CA8445F9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1fRgG1OagzE2N2bifHPSVDuuylY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountEmployeesNumberId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Количество сотрудников в компании,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{CCF7D7BF-B4B7-4EB3-A191-3F47D6C4EE8D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{576B1C84-C012-4E3A-9349-B3F9AC1113DF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountEmployeesNumberId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountOwnershipId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Форма собственности компании,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{CE243C2C-B7D3-4DC4-B474-AB24C677801B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8278572-451D-4008-8DE1-0BFF963A53EA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountOwnershipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountIndustryId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Отрасль компании,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{95DE3D3B-B909-40D9-A3FA-E80D38EC208E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2AC3F3FC-6362-4662-8C7C-9C680FAB626E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountIndustryId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactCompanyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Название компании контакта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E71D4117-749C-4D7E-B7FF-F298825E95FC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCompanyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yEZAIihgdDv9dlEweVysDtIlmU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF6yEZAIihgdDv9dlEweVysDtIlmU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yEZAIihgdDv9dlEweVysDtIlmU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E71D4117-749C-4D7E-B7FF-F298825E95FC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6yEZAIihgdDv9dlEweVysDtIlmU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'VerificationRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Балл верификации,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D11B80C3-864D-475F-A760-1ED04A2483F1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'VerificationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJpSgLT0tpwO9q82n6IZ2eaVgNQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFJpSgLT0tpwO9q82n6IZ2eaVgNQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJpSgLT0tpwO9q82n6IZ2eaVgNQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D11B80C3-864D-475F-A760-1ED04A2483F1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJpSgLT0tpwO9q82n6IZ2eaVgNQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ValidationRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Балл валидации,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BBBE76C6-7749-4F0B-99B0-6B9E4B1F1F71}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ValidationRate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFika2VdlW6jOZ6xHfmSlVzW8anYs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFika2VdlW6jOZ6xHfmSlVzW8anYs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFika2VdlW6jOZ6xHfmSlVzW8anYs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BBBE76C6-7749-4F0B-99B0-6B9E4B1F1F71}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFika2VdlW6jOZ6xHfmSlVzW8anYs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FinancingInstrumentId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Финансовый инструмент,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{45530E4F-C5EA-43FA-8744-611477EBB4C1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5F3D0544-A116-42D5-8433-74CAF847F6EA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FinancingInstrumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PaymentDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата выдачи,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7C8C225F-1A03-4EAF-8E13-E25A22094A73}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ReturnDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата погашения,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C5B2CFE4-F86E-420D-A363-6BBAC0350F4A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PassportSeriesNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Серия номер паспорта,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D493598C-A0BC-44BC-A146-C1B603AB3A88}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PassportSeriesNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLdGwKlGYC6XC1Lwgyoz69Xjfb3o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFLdGwKlGYC6XC1Lwgyoz69Xjfb3o' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLdGwKlGYC6XC1Lwgyoz69Xjfb3o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D493598C-A0BC-44BC-A146-C1B603AB3A88}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLdGwKlGYC6XC1Lwgyoz69Xjfb3o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DeviceID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Идентификатор устройства,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F631969F-5AD9-4AF8-B9A0-78A192271BC7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOsqBfYSw3p9xX0to3jPiyNzEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFOsqBfYSw3p9xX0to3jPiyNzEY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOsqBfYSw3p9xX0to3jPiyNzEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F631969F-5AD9-4AF8-B9A0-78A192271BC7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOsqBfYSw3p9xX0to3jPiyNzEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CurrentApplicationFormPage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Текущая страница анкеты,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{FFC1AB71-B31F-4E84-BECB-65AFAFBF001D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{387995F8-66C8-4BD0-A751-DB7FCC7AC048}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentApplicationFormPage'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFibiR0oFYiMtvdRrLCrn7McRv6tE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFibiR0oFYiMtvdRrLCrn7McRv6tE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFibiR0oFYiMtvdRrLCrn7McRv6tE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{387995F8-66C8-4BD0-A751-DB7FCC7AC048}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFibiR0oFYiMtvdRrLCrn7McRv6tE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Контактная информация",en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{93FD862F-1D59-4EFE-AA84-E81378E81360}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup1'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcwWLpOlHF43w9ylO2Cwg6gMJ8M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFcwWLpOlHF43w9ylO2Cwg6gMJ8M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcwWLpOlHF43w9ylO2Cwg6gMJ8M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{93FD862F-1D59-4EFE-AA84-E81378E81360}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcwWLpOlHF43w9ylO2Cwg6gMJ8M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Личные данные",en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{48AE246E-FCF1-48DF-8465-9D6B96AECFF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHQ6qT3SP1flBCUBUM5Tez5fqrXI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFHQ6qT3SP1flBCUBUM5Tez5fqrXI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHQ6qT3SP1flBCUBUM5Tez5fqrXI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{48AE246E-FCF1-48DF-8465-9D6B96AECFF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHQ6qT3SP1flBCUBUM5Tez5fqrXI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Занятость и доходы",en-GB|Колонка 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A2A345DE-A26B-4317-BBBE-683E82430D1A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxHSqFljUMcHDnxACGKwRlMrxA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFxHSqFljUMcHDnxACGKwRlMrxA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxHSqFljUMcHDnxACGKwRlMrxA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A2A345DE-A26B-4317-BBBE-683E82430D1A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFxHSqFljUMcHDnxACGKwRlMrxA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Контактные лица",en-GB|Колонка 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0622775B-5A67-4108-87FA-7BC4102E6AD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUH1cmlcO0TxTfgei9BWqWWm3Ie8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFUH1cmlcO0TxTfgei9BWqWWm3Ie8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUH1cmlcO0TxTfgei9BWqWWm3Ie8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0622775B-5A67-4108-87FA-7BC4102E6AD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUH1cmlcO0TxTfgei9BWqWWm3Ie8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Способ выдачи займа",en-GB|Колонка 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DED760D1-199F-4F35-99CD-67EF694F6E50}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup5'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFsV5dweglBEg9oxVenV1WQnSQQA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFsV5dweglBEg9oxVenV1WQnSQQA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFsV5dweglBEg9oxVenV1WQnSQQA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DED760D1-199F-4F35-99CD-67EF694F6E50}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFsV5dweglBEg9oxVenV1WQnSQQA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы "Информация о кредитах",en-GB|Колонка 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AE22A6E1-B1D3-4335-A062-F9046CE73FB8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup6'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCWzWfupEa7fobtFNDp0Ex9WWyLE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFCWzWfupEa7fobtFNDp0Ex9WWyLE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCWzWfupEa7fobtFNDp0Ex9WWyLE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AE22A6E1-B1D3-4335-A062-F9046CE73FB8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCWzWfupEa7fobtFNDp0Ex9WWyLE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FillingTimeGroup7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время заполнения группы 7,en-GB|Колонка 7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FF9997E1-16C2-4BCF-8487-120E2FB82EC9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FillingTimeGroup7'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFASBknpSNDbzrFJW1ofb4Wkyan4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFASBknpSNDbzrFJW1ofb4Wkyan4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFASBknpSNDbzrFJW1ofb4Wkyan4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FF9997E1-16C2-4BCF-8487-120E2FB82EC9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFASBknpSNDbzrFJW1ofb4Wkyan4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonPhone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Телефон контактного лица,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B57317A2-8832-43B6-8153-F63C07345CE3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7GNjZ1YOjQ78JWuqvmJcZbuQiu0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF7GNjZ1YOjQ78JWuqvmJcZbuQiu0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7GNjZ1YOjQ78JWuqvmJcZbuQiu0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B57317A2-8832-43B6-8153-F63C07345CE3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF7GNjZ1YOjQ78JWuqvmJcZbuQiu0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AdditionalContactPersonPhone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Телефон доп. контактного лица,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{03BE8A9E-99AD-41AA-8572-159CC7832520}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AdditionalContactPersonPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSy64H8ZFfW9965fnSBKlaKRp0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFSy64H8ZFfW9965fnSBKlaKRp0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSy64H8ZFfW9965fnSBKlaKRp0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{03BE8A9E-99AD-41AA-8572-159CC7832520}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSy64H8ZFfW9965fnSBKlaKRp0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'BossFIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|ФИО Руководителя,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D0F2171A-9489-489A-8746-14F19B604CA6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossFIO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFw2MnKzmIOBQAzI7FYcWHS8NedtU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFw2MnKzmIOBQAzI7FYcWHS8NedtU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFw2MnKzmIOBQAzI7FYcWHS8NedtU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D0F2171A-9489-489A-8746-14F19B604CA6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFw2MnKzmIOBQAzI7FYcWHS8NedtU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'BossPhoneNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Телефон работодателя,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9CD714C0-FA70-47A2-AEAB-4DDDBBC7B99C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'BossPhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFI9yr9DDk9zpdTmWe2pep245WcD0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFI9yr9DDk9zpdTmWe2pep245WcD0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFI9yr9DDk9zpdTmWe2pep245WcD0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9CD714C0-FA70-47A2-AEAB-4DDDBBC7B99C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFI9yr9DDk9zpdTmWe2pep245WcD0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RegisterAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Адрес регистрации,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8BE04C7-2AC8-47AE-B800-1C305CCE2D10}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSNcby2sMAu7lTmZ2mxG57d2tMUY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFSNcby2sMAu7lTmZ2mxG57d2tMUY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSNcby2sMAu7lTmZ2mxG57d2tMUY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8BE04C7-2AC8-47AE-B800-1C305CCE2D10}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSNcby2sMAu7lTmZ2mxG57d2tMUY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ActualAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Адрес фактического местожительства,en-GB|Колонка 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'LongText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ED373AE2-9FE8-4CDC-B8B6-525F2EB517B0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ActualAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcFGyR2E018c5m3NtW10tJt0tOWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFcFGyR2E018c5m3NtW10tJt0tOWM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcFGyR2E018c5m3NtW10tJt0tOWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ED373AE2-9FE8-4CDC-B8B6-525F2EB517B0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFcFGyR2E018c5m3NtW10tJt0tOWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactDocumentExpiresOn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Паспорт действителен до,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7C8987C4-DEA4-4E7E-9212-DEDF7397ADD7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactDocumentExpiresOn'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactCitizenshipId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Гражданство контакта,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{09FCE1F8-515C-4296-95CD-8CD93F79A6CF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D7574BE4-DAD8-4DC0-B7D8-F545D8C1E747}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactCitizenshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsNotResident' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Нерезидент,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9A31B0AD-ECEF-446A-8C76-6D0BBEAAB5E3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsNotResident'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFu23GmRL844rZG6vgkW9BZx9mGfQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFu23GmRL844rZG6vgkW9BZx9mGfQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFu23GmRL844rZG6vgkW9BZx9mGfQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9A31B0AD-ECEF-446A-8C76-6D0BBEAAB5E3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFu23GmRL844rZG6vgkW9BZx9mGfQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountInContactId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Контрагент,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{25D7C1AB-1DE0-4501-B402-02E0E5A72D6E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C5718EC6-B968-4560-81B4-E4D319E4FE70}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountInContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonRelationTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Тип контактного лица,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{FD62EA78-5401-4CBC-8A6C-C87D0C097E23}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{10204529-A37A-4871-8981-81B797ABB96B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonRelationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonFamilyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Фамилия контактного лица,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{617DDDA8-839F-41DC-9305-1B1DE3DF20DB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJowrFA6iLl1fda8JcMDD4vZrfc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFJowrFA6iLl1fda8JcMDD4vZrfc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJowrFA6iLl1fda8JcMDD4vZrfc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{617DDDA8-839F-41DC-9305-1B1DE3DF20DB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFJowrFA6iLl1fda8JcMDD4vZrfc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonFirstName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Имя контактного лица,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8F7B1BC2-36C8-45F3-98F7-4D645BDD9C37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIeCj1yVPezfidpVzchtKGtkBA7c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFIeCj1yVPezfidpVzchtKGtkBA7c' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIeCj1yVPezfidpVzchtKGtkBA7c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8F7B1BC2-36C8-45F3-98F7-4D645BDD9C37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFIeCj1yVPezfidpVzchtKGtkBA7c'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonFatherName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Отчество контактного лица,en-GB|Column 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D9629BF1-7351-45FA-B8F8-AA6A5818A7E1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF9C4m6pvth2heU3KJ04GzbldWI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF9C4m6pvth2heU3KJ04GzbldWI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF9C4m6pvth2heU3KJ04GzbldWI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D9629BF1-7351-45FA-B8F8-AA6A5818A7E1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF9C4m6pvth2heU3KJ04GzbldWI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonMobilePhone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Мобильный телефон контактного лица,en-GB|Column 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DE80124F-52B9-48E8-BB77-3F64F2516874}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonMobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFV6vA0lju1Tz8QiupgeWVJpYENS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFV6vA0lju1Tz8QiupgeWVJpYENS8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFV6vA0lju1Tz8QiupgeWVJpYENS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DE80124F-52B9-48E8-BB77-3F64F2516874}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFV6vA0lju1Tz8QiupgeWVJpYENS8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonBirthDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата рождения контактного лица,en-GB|Column 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D89E6CE7-CCFD-4AC0-A6B4-C5DD98BC8245}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonBirthDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPersonId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Контактное лицо,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{67E02C89-2CCD-411B-93C5-07D1AFBFA8A7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{31024294-5EFC-4E1C-85B2-AEA80A76EF5F}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AccountPhone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Телефон аккаунта,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ED3015AD-C7A7-4419-81EB-052BDADBC521}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AccountPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAq3FAM5WtFSOrupvgHXRzUS3ck'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFAq3FAM5WtFSOrupvgHXRzUS3ck' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAq3FAM5WtFSOrupvgHXRzUS3ck'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ED3015AD-C7A7-4419-81EB-052BDADBC521}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAq3FAM5WtFSOrupvgHXRzUS3ck'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Email,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9534E450-AB75-4A5E-9F90-0965061C8D3C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFS0rqxf6cOuPhnqE1nDr7l25qQwc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFS0rqxf6cOuPhnqE1nDr7l25qQwc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFS0rqxf6cOuPhnqE1nDr7l25qQwc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9534E450-AB75-4A5E-9F90-0965061C8D3C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFS0rqxf6cOuPhnqE1nDr7l25qQwc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'StagePeriodId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Стаж на последнем месте работы,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{592BFD5F-1FE6-4BC4-B1F0-D2D7C00BFAA8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F1489CA8-F3D2-4001-90C7-E4F4BD03982A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StagePeriodId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IPRegion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Регион по IP,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F68C6C91-4D78-488E-902D-F1646AFD1179}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IPRegion'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0bqmR5VsKhe1OtjfuBQrbWVRDA8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF0bqmR5VsKhe1OtjfuBQrbWVRDA8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0bqmR5VsKhe1OtjfuBQrbWVRDA8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F68C6C91-4D78-488E-902D-F1646AFD1179}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0bqmR5VsKhe1OtjfuBQrbWVRDA8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OfferFileId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Документ оферты,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{4B968B25-7B6C-43A0-ADBE-35CB9D44E130}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C1FEE55C-B2B3-4C1D-A130-52381357F7C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OfferFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RequestedOfferSum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Запрашиваемая сумма займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{07857A32-4E3E-47F3-9F79-C61850DAF881}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbbr7BrFos0YgS0IDznxKWvE0mNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFbbr7BrFos0YgS0IDznxKWvE0mNs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbbr7BrFos0YgS0IDznxKWvE0mNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{07857A32-4E3E-47F3-9F79-C61850DAF881}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbbr7BrFos0YgS0IDznxKWvE0mNs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PreviousReturnDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Предыдущая дата планового погашения,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E645A149-EABE-46FB-B172-E484737623FC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CurrentReturnDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Текущая дата планового погашения,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A3C14E59-C492-4527-B037-38912FBA4DE3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'WorkAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Адрес места работы,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{699BFB1F-4D50-4380-99C7-15C897BEFCB6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WorkAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTWNMQXWdMcwzHhUntVptTGlaZfU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFTWNMQXWdMcwzHhUntVptTGlaZfU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTWNMQXWdMcwzHhUntVptTGlaZfU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{699BFB1F-4D50-4380-99C7-15C897BEFCB6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTWNMQXWdMcwzHhUntVptTGlaZfU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'WaitingTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время ожидания в очереди,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6938889A-8A72-42E9-A134-CD16118EA3AE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WaitingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwZIXP0gQ61wrtS3CxUrDDYIcM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFwZIXP0gQ61wrtS3CxUrDDYIcM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwZIXP0gQ61wrtS3CxUrDDYIcM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6938889A-8A72-42E9-A134-CD16118EA3AE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFwZIXP0gQ61wrtS3CxUrDDYIcM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ProcessingTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Время обработки оператором,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2A738F62-F7A4-4C77-9B16-C0485AE32F5D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ProcessingTime'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFojHdiLhVG7FguQMgjVinshCpOYU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFojHdiLhVG7FguQMgjVinshCpOYU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFojHdiLhVG7FguQMgjVinshCpOYU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2A738F62-F7A4-4C77-9B16-C0485AE32F5D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFojHdiLhVG7FguQMgjVinshCpOYU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SourceURL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|URL Источника,en-GB|Колонка 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3FD553B9-5FBB-4278-A347-49F7815BA000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCiXC9ITQ7VWkqKPrACdv1CXrWc4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFCiXC9ITQ7VWkqKPrACdv1CXrWc4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCiXC9ITQ7VWkqKPrACdv1CXrWc4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3FD553B9-5FBB-4278-A347-49F7815BA000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFCiXC9ITQ7VWkqKPrACdv1CXrWc4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SecondStageStatusId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Статус во второй очереди,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{51036604-FCAF-41C0-8C7C-AB2D439C09FA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5461DC18-56D3-4AA7-B641-F18EB8A8FC38}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SentOnConsiderationById' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Отправил на рассмотрение,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{16BE3651-8FE2-4159-8DD0-A803D4683DD3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F735C071-CE14-46E0-895A-D0EF5E23053A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SentOnConsiderationById'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ChangeByCustomerDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата изменения заемщиком,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{973E03C7-2681-4BCD-AB95-10428A8A04BA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeByCustomerDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SecondStageReturnDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата возврата во вторую очередь,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0F40217A-721A-4E63-85FC-0ADD4D1A6900}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SecondStageReturnDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsAgreeWithGeneralRules' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Принимаю общие условия потребительского займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{591F438F-1E1D-42D7-9A60-2AB197CC5AA0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsAgreeWithGeneralRules'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfjHMmPbjl4WtyuotkAEIvrmM9Bo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFfjHMmPbjl4WtyuotkAEIvrmM9Bo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfjHMmPbjl4WtyuotkAEIvrmM9Bo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{591F438F-1E1D-42D7-9A60-2AB197CC5AA0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfjHMmPbjl4WtyuotkAEIvrmM9Bo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FailedSSVerificationStep' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Не пройденный этап проверки,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D990E26-150F-4D27-9E31-CC65E971BF86}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FailedSSVerificationStep'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuBPh2DgTEH4kNIe6CO4zFmrU2s'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFuBPh2DgTEH4kNIe6CO4zFmrU2s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuBPh2DgTEH4kNIe6CO4zFmrU2s'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D990E26-150F-4D27-9E31-CC65E971BF86}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuBPh2DgTEH4kNIe6CO4zFmrU2s'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Cookie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Cookie,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{1CD86BC9-BA1B-45B8-886B-E9E2E92EC17C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Cookie'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLfCqfLXknPAQ6ob98BBjxxL04Q'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFLfCqfLXknPAQ6ob98BBjxxL04Q' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLfCqfLXknPAQ6ob98BBjxxL04Q'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{1CD86BC9-BA1B-45B8-886B-E9E2E92EC17C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFLfCqfLXknPAQ6ob98BBjxxL04Q'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AnswerURL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|URL Ответа лидогенератору,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BFC04CD2-9F8E-44EA-BF4D-1FB1CBE3DC8B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFc2OuC5BRA1waaNPGNAdxs94iQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFc2OuC5BRA1waaNPGNAdxs94iQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFc2OuC5BRA1waaNPGNAdxs94iQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BFC04CD2-9F8E-44EA-BF4D-1FB1CBE3DC8B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFc2OuC5BRA1waaNPGNAdxs94iQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RequestSentToLead' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Запрос отправлялся лидогенератору,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6D46C4FA-C653-4EF8-99CC-EE5EEAD24055}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestSentToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6JbHqyKfaqgm92wr0slajk7GtI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF6JbHqyKfaqgm92wr0slajk7GtI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6JbHqyKfaqgm92wr0slajk7GtI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6D46C4FA-C653-4EF8-99CC-EE5EEAD24055}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF6JbHqyKfaqgm92wr0slajk7GtI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactTransferCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Код перевода,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{48A06BBF-D268-4338-A05A-F2AD4E407126}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactTransferCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOnSR82s2FpVGFHGPU6xZ6FRpnzY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFOnSR82s2FpVGFHGPU6xZ6FRpnzY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOnSR82s2FpVGFHGPU6xZ6FRpnzY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{48A06BBF-D268-4338-A05A-F2AD4E407126}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOnSR82s2FpVGFHGPU6xZ6FRpnzY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactSendTransfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отправки перевода,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C417CF5F-6F33-4FCE-91CD-888A874FA944}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSendTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactReceiveTransfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата возврата перевода,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B3D6F2F0-FF8B-4E30-A143-FC9DDBD0942A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactReceiveTransfer'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IssuanceTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Способ получение кредита,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{AA65FB94-96F6-4498-B8F4-0F80FA7759EB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B53E8B94-5C1C-44FD-9DEB-4B694FA66DE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IssuanceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ApplicationFreezeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Операция по заморозке,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{DFAFE68C-BC8D-450D-BFD8-BC7D004EAE40}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{911F6D1A-020E-44E1-972F-AC9A88037B63}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ApplicationFreezeId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SaleSum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма продажи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D8173F8-EC0F-4051-9878-BA6E6A210762}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleSum'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFM5Vcmcpk8z2Arp9hAddEls4ikU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFM5Vcmcpk8z2Arp9hAddEls4ikU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFM5Vcmcpk8z2Arp9hAddEls4ikU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5D8173F8-EC0F-4051-9878-BA6E6A210762}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFM5Vcmcpk8z2Arp9hAddEls4ikU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SaleDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата продажи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C5251762-E03B-4614-9B6D-74D73B4F1A14}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CngDocumentId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Перевод системы Контакт,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{0F7CE890-7568-4001-999A-B1DBF1DE9F18}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DF11FAFB-E805-43ED-ADD8-BE2C1FA10910}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CngDocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Maturity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сумма погашения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{1DAAFE2A-11D9-4AD4-954C-0DF059F98610}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Money' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8161781B-EEA0-4F0F-8BC0-173F03D63F88}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Maturity'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF3nDZRk22Mv2r7LCfEgG1Oxg9A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF3nDZRk22Mv2r7LCfEgG1Oxg9A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF3nDZRk22Mv2r7LCfEgG1Oxg9A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8161781B-EEA0-4F0F-8BC0-173F03D63F88}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF3nDZRk22Mv2r7LCfEgG1Oxg9A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RepaymentDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Текущая дата автопогашения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B3EF1114-C514-46D8-9F96-8F21F5236083}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RepaymentCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Количество шагов погашения за интервал,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{95AB297E-A070-4921-B098-B69B8A9023E6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RepaymentCount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5kJYZqyGmZe2fBkYNTVZLoepo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF5kJYZqyGmZe2fBkYNTVZLoepo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5kJYZqyGmZe2fBkYNTVZLoepo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{95AB297E-A070-4921-B098-B69B8A9023E6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5kJYZqyGmZe2fBkYNTVZLoepo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'LimitSandbox' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Лимит (Sandbox),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Money' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7FCD6BC3-913F-4ED9-A966-4F466A89FA4C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFMbTnX5yzZiPWQzRul6dIzntv5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFMbTnX5yzZiPWQzRul6dIzntv5Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFMbTnX5yzZiPWQzRul6dIzntv5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7FCD6BC3-913F-4ED9-A966-4F466A89FA4C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFMbTnX5yzZiPWQzRul6dIzntv5Y'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CommentSandbox' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий (Sandbox),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{78C67666-C620-42AA-B8B2-31623272B978}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CommentSandbox'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOMkg3aAMVuZSpLC7Tk7XtJk9GhU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFOMkg3aAMVuZSpLC7Tk7XtJk9GhU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOMkg3aAMVuZSpLC7Tk7XtJk9GhU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{78C67666-C620-42AA-B8B2-31623272B978}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOMkg3aAMVuZSpLC7Tk7XtJk9GhU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PaymentSystemAccountInfo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Кошелек,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D1F7DB3B-29C5-429A-A842-AB3979955FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentSystemAccountInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfxwenJbxfKa8VTgjfpkJmOQQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFfxwenJbxfKa8VTgjfpkJmOQQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfxwenJbxfKa8VTgjfpkJmOQQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D1F7DB3B-29C5-429A-A842-AB3979955FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfxwenJbxfKa8VTgjfpkJmOQQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'NoContactFatherName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Нет отчества,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6C51A72D-FE1B-4131-8877-F4FD1903919C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoContactFatherName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQ4hEtHJ57OPoFsQUDKfwc19CoA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFQ4hEtHJ57OPoFsQUDKfwc19CoA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQ4hEtHJ57OPoFsQUDKfwc19CoA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6C51A72D-FE1B-4131-8877-F4FD1903919C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQ4hEtHJ57OPoFsQUDKfwc19CoA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CashflowSourceId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Источник выдачи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{0E73723C-BFA7-43CA-8B79-CBFD318ABB2D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{CFDAC58A-F561-42D3-AF36-2BF19230A383}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ACFE3EEC-5E1E-4C9A-886B-F41104B8F870}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CashflowSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FrozenForever' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Заморожен бессрочно,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{98556783-87A7-4772-8C78-E0E83C969391}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FrozenForever'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTTllQP32y5OVA3BPJhPtADORGk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFTTllQP32y5OVA3BPJhPtADORGk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTTllQP32y5OVA3BPJhPtADORGk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{98556783-87A7-4772-8C78-E0E83C969391}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFTTllQP32y5OVA3BPJhPtADORGk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactSourceGroupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Группа источника контакта,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{282445F6-E4CC-4442-BD23-04AA684C9AAB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B3806ED4-ADF5-4DA6-AF0B-BDF161A72B37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactSourceGroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AnswerURL2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|URL ответа для одобренного займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{55CEC9DC-D3B4-49C1-8DB2-19A6C1FDF659}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL2'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1nMYo1ybbYJ53rph4x4v9rp1xU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF1nMYo1ybbYJ53rph4x4v9rp1xU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1nMYo1ybbYJ53rph4x4v9rp1xU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{55CEC9DC-D3B4-49C1-8DB2-19A6C1FDF659}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF1nMYo1ybbYJ53rph4x4v9rp1xU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AnswerURL3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|URL ответа выданного займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0C51FCBC-0EEE-47D4-AD35-795BB7E1465A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AnswerURL3'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQKTGLAdBddWlbojgMFQHgb6tQU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFQKTGLAdBddWlbojgMFQHgb6tQU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQKTGLAdBddWlbojgMFQHgb6tQU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0C51FCBC-0EEE-47D4-AD35-795BB7E1465A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFQKTGLAdBddWlbojgMFQHgb6tQU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'clientOrderId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|clientOrderId (Yandex),en-GB|ClientOrderId (clientOrderId)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{0E73723C-BFA7-43CA-8B79-CBFD318ABB2D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9C5EC7E0-49F7-42F5-BC7E-FBC483ADB5DD}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'clientOrderId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAfJWvhpIG2kKx1IXx1RsJcjzZW0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFAfJWvhpIG2kKx1IXx1RsJcjzZW0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAfJWvhpIG2kKx1IXx1RsJcjzZW0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9C5EC7E0-49F7-42F5-BC7E-FBC483ADB5DD}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFAfJWvhpIG2kKx1IXx1RsJcjzZW0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PromoCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Промокод,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F51C00D4-5611-4C37-A4E4-74015A06D64C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PromoCode'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaAj69xYb8C2CeplxsKldOl50uG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFaAj69xYb8C2CeplxsKldOl50uG8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaAj69xYb8C2CeplxsKldOl50uG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F51C00D4-5611-4C37-A4E4-74015A06D64C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaAj69xYb8C2CeplxsKldOl50uG8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DayProlongation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Количество дней для пролонгации,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A88C858C-08F9-478D-8770-3FD382BE457E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DayProlongation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFt6pNKhlDXm3PDfNaru9j9KbbGv8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFt6pNKhlDXm3PDfNaru9j9KbbGv8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFt6pNKhlDXm3PDfNaru9j9KbbGv8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A88C858C-08F9-478D-8770-3FD382BE457E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFt6pNKhlDXm3PDfNaru9j9KbbGv8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'IsSendDC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Передан в DC,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{91F6C894-7E43-4CC4-9DF3-3A84FF16FEF8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'IsSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkwB7mfq3FwgUvhzZjNWKPkR1SEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFkwB7mfq3FwgUvhzZjNWKPkR1SEY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkwB7mfq3FwgUvhzZjNWKPkR1SEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{91F6C894-7E43-4CC4-9DF3-3A84FF16FEF8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkwB7mfq3FwgUvhzZjNWKPkR1SEY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'DateSendDC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата передачи в DC,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A0AB923D-43AF-4B21-A7DB-72A5346FFA77}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'DateSendDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Идентификатор (для админки),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8ABC75CD-E337-4F5F-AF11-DCFEC4ADA6ED}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CessionAgencyId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Цессионарий/цедент,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{6388CEE3-C96E-4964-B541-0F40EF614322}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A6605F4D-3AE1-49D1-9B9B-EA99BB9442C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CessionAgencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'InterestOverpaymentFull' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Переплата всех начисленных процентов,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{525F765D-2E45-40CE-A7E8-F7B6D99AC817}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentFull'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFvcymrKuRAQZvPq3u25tCAOorZo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFvcymrKuRAQZvPq3u25tCAOorZo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFvcymrKuRAQZvPq3u25tCAOorZo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{525F765D-2E45-40CE-A7E8-F7B6D99AC817}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFvcymrKuRAQZvPq3u25tCAOorZo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'InterestOverpaymentUnpaid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Переплата неоплаченных процентов,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E3133DFA-F8F4-4E0D-A82D-3CC7499D2EEB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InterestOverpaymentUnpaid'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFflPfjfVDRdRsXqsuxgqrIWrFRY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFflPfjfVDRdRsXqsuxgqrIWrFRY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFflPfjfVDRdRsXqsuxgqrIWrFRY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E3133DFA-F8F4-4E0D-A82D-3CC7499D2EEB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFflPfjfVDRdRsXqsuxgqrIWrFRY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'LimitAccrualProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Остановлено начисление процентов,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{490A277E-8ED8-4F63-96C0-0336F1274EDC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LimitAccrualProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh9uN1UWoASZhRvcDAlY4qTj6G1k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFh9uN1UWoASZhRvcDAlY4qTj6G1k' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh9uN1UWoASZhRvcDAlY4qTj6G1k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{490A277E-8ED8-4F63-96C0-0336F1274EDC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh9uN1UWoASZhRvcDAlY4qTj6G1k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeConnect3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Cогласие на взаимодействие с 3-ми лицами,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EDE8E124-2390-4826-9907-BE800E483C6F}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkm0nfWg8Be6auT6BOOWF3NNb4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFkm0nfWg8Be6auT6BOOWF3NNb4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkm0nfWg8Be6auT6BOOWF3NNb4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EDE8E124-2390-4826-9907-BE800E483C6F}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkm0nfWg8Be6auT6BOOWF3NNb4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateConnect3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на взаимодействие с 3-ми лицами,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{29C26B5E-F330-4B58-9AD8-47488E9C23CF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateConnect3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на взаимодействие с 3-ми лицами отозвано,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6DFE17BE-35A8-4533-940B-EF88595F19F8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentConnect3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на взаимодействие с 3-ми лицами,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A498C8A9-09E6-4481-AB8F-8E7E0310D0A0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr5Fu5M0xHLqNKImc72YkmFAqoX0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFr5Fu5M0xHLqNKImc72YkmFAqoX0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr5Fu5M0xHLqNKImc72YkmFAqoX0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A498C8A9-09E6-4481-AB8F-8E7E0310D0A0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFr5Fu5M0xHLqNKImc72YkmFAqoX0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeTransfer3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на передачу данных 3-им лицам,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AFD7423E-D1B0-4278-AAC9-1DFA83D7C618}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXa08CKwxw5ZGZG7KwomIN59KKY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFXa08CKwxw5ZGZG7KwomIN59KKY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXa08CKwxw5ZGZG7KwomIN59KKY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AFD7423E-D1B0-4278-AAC9-1DFA83D7C618}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFXa08CKwxw5ZGZG7KwomIN59KKY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateTransfer3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на передачу данных 3-им лицам,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D4D4CE18-2C0F-42D6-9F30-EAFF12C15BD2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateTransfer3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на передачу данных 3-им лицам отозвано,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2D4EAB98-0751-440E-AE37-AAA006BFFC45}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentTransfer3face' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на передачу данных 3-им лицам,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{676453DA-80E5-4491-9955-4E115841661C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentTransfer3face'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqtG0bTCkknqkio9QKd8XAY3Dg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFqtG0bTCkknqkio9QKd8XAY3Dg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqtG0bTCkknqkio9QKd8XAY3Dg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{676453DA-80E5-4491-9955-4E115841661C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFqtG0bTCkknqkio9QKd8XAY3Dg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeConnectTel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на взаимодействие по телефону/смс,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8EE6C9DB-C560-4329-AC44-CF56CB0905AC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOJ3ORAixwITINoOaA1XZWN8prRU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFOJ3ORAixwITINoOaA1XZWN8prRU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOJ3ORAixwITINoOaA1XZWN8prRU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{8EE6C9DB-C560-4329-AC44-CF56CB0905AC}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOJ3ORAixwITINoOaA1XZWN8prRU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateConnectTel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на взаимодействие по телефону/смс,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{56548292-8B77-4B1E-B4E5-A8D94EF2E400}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateConnectTel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на взаимодействие по телефону/смс отозвано,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{80A787A7-DF8E-4480-AD65-3D9F4E249F7A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentConnectTel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на взаимодействие по телефону/смс,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{324736CB-1652-4DED-BA2C-395671DDBC3B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectTel'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhWZLYapQV3JKqCat2RZI8ktMD6U'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFhWZLYapQV3JKqCat2RZI8ktMD6U' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhWZLYapQV3JKqCat2RZI8ktMD6U'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{324736CB-1652-4DED-BA2C-395671DDBC3B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFhWZLYapQV3JKqCat2RZI8ktMD6U'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeConnect' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на взаимодействие с помощью иных способов взаимодействия,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{466CDED2-D950-411C-B8CB-A1C4C617E9AA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuYPi5jIwEAqZcXlvsM1EddcM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFuYPi5jIwEAqZcXlvsM1EddcM8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuYPi5jIwEAqZcXlvsM1EddcM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{466CDED2-D950-411C-B8CB-A1C4C617E9AA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFuYPi5jIwEAqZcXlvsM1EddcM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateConnect' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на взаимодействие с помощью иных способов взаимодействия,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C81AF84B-9377-401A-8F41-5F34F5D802CE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateConnect' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на взаимодействие с помощью иных способов взаимодействия отозвано,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3EC917A9-81DA-45B7-8DED-31052D7A40E4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentConnect' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на взаимодействие с помощью иных способов взаимодействия,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3E5902AC-A599-4519-8DFB-0D551FABCB8D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnect'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPOxX63rWT8bdpfabRnufSur1ks8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFPOxX63rWT8bdpfabRnufSur1ks8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPOxX63rWT8bdpfabRnufSur1ks8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3E5902AC-A599-4519-8DFB-0D551FABCB8D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFPOxX63rWT8bdpfabRnufSur1ks8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeConnectMFO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на взаимодействия с МФО,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{22E5AC37-5108-4F56-8230-431A73FA2FF5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUdT0z0djmjQP1KozuXV7V1M6WQw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFUdT0z0djmjQP1KozuXV7V1M6WQw' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUdT0z0djmjQP1KozuXV7V1M6WQw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{22E5AC37-5108-4F56-8230-431A73FA2FF5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFUdT0z0djmjQP1KozuXV7V1M6WQw'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateConnectMFO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на взаимодействие с МФО,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D1C19431-F92E-400F-B3EA-ECA0F7CA0A4B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateConnectMFO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на взаимодействие с МФО,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F52F0036-3558-4630-AF07-5C7E0E39014E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentConnectMFO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на взаимодействие с МФО,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{828BF543-5068-4722-BC6F-F8FC4DA5C55A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentConnectMFO'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOFCaqjVaF8AAmNJHwQRYEjoqHU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFOFCaqjVaF8AAmNJHwQRYEjoqHU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOFCaqjVaF8AAmNJHwQRYEjoqHU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{828BF543-5068-4722-BC6F-F8FC4DA5C55A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFOFCaqjVaF8AAmNJHwQRYEjoqHU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CourtJudgementNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Номер решения суда,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2B2C3FB8-52A3-4332-B8F6-AEC66376A864}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5vZQ1vqKRpDKvhUZebC3YoQ08'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF5vZQ1vqKRpDKvhUZebC3YoQ08' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5vZQ1vqKRpDKvhUZebC3YoQ08'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2B2C3FB8-52A3-4332-B8F6-AEC66376A864}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF5vZQ1vqKRpDKvhUZebC3YoQ08'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'JudicialAgencyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Наименование органа, принявшего решение,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9C4E7873-A9B2-45F2-812F-59912FE945C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'JudicialAgencyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFg8eoMa4DLC6oMQTCYZz6hZ2UI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFg8eoMa4DLC6oMQTCYZz6hZ2UI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFg8eoMa4DLC6oMQTCYZz6hZ2UI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{9C4E7873-A9B2-45F2-812F-59912FE945C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFg8eoMa4DLC6oMQTCYZz6hZ2UI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CourtJudgementDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата принятия решения,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0DF7AF0A-923D-494F-A6E3-2EF4A8E42DDB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CourtJudgementDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Resolution' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Резолюция,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MaxSizeText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B92692A8-D796-4E5A-87F5-1365E2D92A63}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbTbYJKZq9aMci0lHqRl9RuW7aug'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFbTbYJKZq9aMci0lHqRl9RuW7aug' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbTbYJKZq9aMci0lHqRl9RuW7aug'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B92692A8-D796-4E5A-87F5-1365E2D92A63}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFbTbYJKZq9aMci0lHqRl9RuW7aug'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'Insolvent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Заемщик является банкротом,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2F00C67D-FDDA-41D7-B3A7-EC747C2D16CE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Insolvent'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHnnLQ9vexGuEuU4BBepY0ur5DA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFHnnLQ9vexGuEuU4BBepY0ur5DA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHnnLQ9vexGuEuU4BBepY0ur5DA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2F00C67D-FDDA-41D7-B3A7-EC747C2D16CE}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHnnLQ9vexGuEuU4BBepY0ur5DA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SNILS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|СНИЛС,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{400EC078-27CD-48DA-9856-CEC988AEB8F6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SNILS'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGkUq3xEsnKtfGXIwB2Es4eASikg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFGkUq3xEsnKtfGXIwB2Es4eASikg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGkUq3xEsnKtfGXIwB2Es4eASikg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{400EC078-27CD-48DA-9856-CEC988AEB8F6}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGkUq3xEsnKtfGXIwB2Es4eASikg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'INN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|ИНН,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DDCFC977-6517-4F7E-89E0-930474D543DF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDURpN0qvv2rzSagsaadoG088p4k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFDURpN0qvv2rzSagsaadoG088p4k' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDURpN0qvv2rzSagsaadoG088p4k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DDCFC977-6517-4F7E-89E0-930474D543DF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFDURpN0qvv2rzSagsaadoG088p4k'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'INNCheckLogId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Журнал проверки ИНН,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{47995DB0-11FD-449C-B8D5-319B521A4EF0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{90F0F563-E34A-4DE6-BCD3-5EC21F760F51}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'INNCheckLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'WantToGetBystrokarta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Получить Быстрокарту с доставкой на дом,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E892AF07-5EC7-46AE-89C6-3296F0E5DD0A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'WantToGetBystrokarta'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaBq8vFOullnUzYgfoJe9M3CHMs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFaBq8vFOullnUzYgfoJe9M3CHMs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaBq8vFOullnUzYgfoJe9M3CHMs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E892AF07-5EC7-46AE-89C6-3296F0E5DD0A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFaBq8vFOullnUzYgfoJe9M3CHMs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'HasErrorsDC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Есть ошибки в выгрузке в DC,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FEE86F4D-38F2-4D13-86A1-25FE9578AB08}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'HasErrorsDC'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHZE3dH7q3u66zAMQ4gtWjxd1wdM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFHZE3dH7q3u66zAMQ4gtWjxd1wdM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHZE3dH7q3u66zAMQ4gtWjxd1wdM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FEE86F4D-38F2-4D13-86A1-25FE9578AB08}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFHZE3dH7q3u66zAMQ4gtWjxd1wdM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SourceCompanyId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Источник получения займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{CDB8729C-4F45-4B99-AB0A-0D86876735A3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{76A58362-DDB7-4C3D-BB93-CCE7D8C08075}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SourceCompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'GeneratedSnils' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сгенерированый снилс,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{058C22BD-28EF-4FAA-89E2-F6989D7CE503}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtL2Vi3pFdqJ06KULcFdqxfQYgE4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFtL2Vi3pFdqJ06KULcFdqxfQYgE4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtL2Vi3pFdqJ06KULcFdqxfQYgE4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{058C22BD-28EF-4FAA-89E2-F6989D7CE503}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtL2Vi3pFdqJ06KULcFdqxfQYgE4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'isSentResponceToLead' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|isSentResponceToLead,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B85DD7CE-D47A-43B4-89FD-6E4E9E3CF9B5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'isSentResponceToLead'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfmFvDCyo2xEH1Arxj7Wg2iGPfl4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFfmFvDCyo2xEH1Arxj7Wg2iGPfl4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfmFvDCyo2xEH1Arxj7Wg2iGPfl4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B85DD7CE-D47A-43B4-89FD-6E4E9E3CF9B5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFfmFvDCyo2xEH1Arxj7Wg2iGPfl4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNumberCommunication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Согласие на количество взаимодействий (тел/смс),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{910AC720-4935-4DAC-A7FD-EE010173E602}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkH8vUSWhN2F6imtSoIjXlqPaZuI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFkH8vUSWhN2F6imtSoIjXlqPaZuI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkH8vUSWhN2F6imtSoIjXlqPaZuI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{910AC720-4935-4DAC-A7FD-EE010173E602}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFkH8vUSWhN2F6imtSoIjXlqPaZuI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeDateNumberCommunication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата согласия на количество взаимодействий (тел/смс),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{78BC9939-2369-4E96-A3B5-B5AC5FCD0F70}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeNotDateNumberCommunication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отказа от согласия на количество взаимодействий (тел/смс),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E058D4D0-B099-4F12-8EB8-AC0523F831BA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeNotDateNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'AgreeCommentNumberCommunication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Комментарий отказа от согласия на количество взаимодействий (тел/смс),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6D3EF918-FC2E-4BC6-A81C-806CB26B1EAA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AgreeCommentNumberCommunication'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzf8RzDPJMLU1JzQO5og841l0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFzf8RzDPJMLU1JzQO5og841l0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzf8RzDPJMLU1JzQO5og841l0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{6D3EF918-FC2E-4BC6-A81C-806CB26B1EAA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzf8RzDPJMLU1JzQO5og841l0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'NoSnils' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Относится к категории лиц без снилс,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{11047B9E-F851-4723-B364-710F134DDD60}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'NoSnils'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRyZSJUTyLVj7HEIJSg51VggdcTI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFRyZSJUTyLVj7HEIJSg51VggdcTI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRyZSJUTyLVj7HEIJSg51VggdcTI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{11047B9E-F851-4723-B364-710F134DDD60}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFRyZSJUTyLVj7HEIJSg51VggdcTI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'MarketingEventId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Маркетинговое мероприятие,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{83231F9B-389C-477A-908B-BAA81F423BA5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{33FEB42E-555E-4ACE-B3F9-6C82A44DEF98}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'MarketingEventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'StreamId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|StreamId (ОКБ),en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{81EBFDD8-DD32-452C-9741-50F4F19E03FF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'StreamId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKt2UTsyojJIWjOCKzOnPPXrIiM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFKt2UTsyojJIWjOCKzOnPPXrIiM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKt2UTsyojJIWjOCKzOnPPXrIiM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{81EBFDD8-DD32-452C-9741-50F4F19E03FF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFKt2UTsyojJIWjOCKzOnPPXrIiM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OkbPurpOfFinanceId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Цель получения займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{B14100A7-8DC1-4B88-B823-4DCDFD1B8210}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EADCE71E-6586-47A7-89F3-1EF7BA6721E0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OkbPurpOfFinanceId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RelationToInsolventId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Проходите ли вы процедуру банкротства,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{A8B759DA-3593-4795-8499-842B0DEE41C5}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{43ADC24C-EBE3-4365-9497-5FD577432FF4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RelationToInsolventId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'InformationOnLitigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Информация о судебных спорах,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{814E317B-72A8-415E-90D6-AD9DE7D93B29}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InformationOnLitigation'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0GGAglAXtXjUEfVmqzwYVE7kuFk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DF0GGAglAXtXjUEfVmqzwYVE7kuFk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0GGAglAXtXjUEfVmqzwYVE7kuFk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{814E317B-72A8-415E-90D6-AD9DE7D93B29}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DF0GGAglAXtXjUEfVmqzwYVE7kuFk'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'OtherSourceIncome' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Другие источники доходов,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DF724055-028E-454E-93DE-92312A58CBA2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'OtherSourceIncome'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGaUgYNBd3lchEjTUBWiPoHqnrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFGaUgYNBd3lchEjTUBWiPoHqnrY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGaUgYNBd3lchEjTUBWiPoHqnrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DF724055-028E-454E-93DE-92312A58CBA2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGaUgYNBd3lchEjTUBWiPoHqnrY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'APSK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Актуальная полная стоимость займа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{69312306-9373-442E-B5BA-4082465A2AE1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'APSK'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSLnCbumidsyLWg1djcbhOZlCLFg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFSLnCbumidsyLWg1djcbhOZlCLFg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSLnCbumidsyLWg1djcbhOZlCLFg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{69312306-9373-442E-B5BA-4082465A2AE1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFSLnCbumidsyLWg1djcbhOZlCLFg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ChangeAccrueProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Изменены условия начисления,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{55CB0936-F4AE-4135-B7E8-98098A3904B9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ChangeAccrueProc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGAz46cy2VpEFiJZy0Fy0PrtHig'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFGAz46cy2VpEFiJZy0Fy0PrtHig' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGAz46cy2VpEFiJZy0Fy0PrtHig'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{55CB0936-F4AE-4135-B7E8-98098A3904B9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFGAz46cy2VpEFiJZy0Fy0PrtHig'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'GeneratedINN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Сгенерированый ИНН,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'ShortText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{83FE3D0C-1209-44CB-9CC3-449A3216A341}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'GeneratedINN'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzrkpUSv2Qos219WIt4flDexSk8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFzrkpUSv2Qos219WIt4flDexSk8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzrkpUSv2Qos219WIt4flDexSk8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{83FE3D0C-1209-44CB-9CC3-449A3216A341}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFzrkpUSv2Qos219WIt4flDexSk8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RequestedOfferPeriod' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Запрашиваемый срок,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7E393341-D86A-4464-B036-5CF43AB5CD4B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestedOfferPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFx4eOV7hHiK60iFGH85tRiGVLoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFx4eOV7hHiK60iFGH85tRiGVLoI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFx4eOV7hHiK60iFGH85tRiGVLoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7E393341-D86A-4464-B036-5CF43AB5CD4B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFx4eOV7hHiK60iFGH85tRiGVLoI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'FullIdentificationId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Полная идентификация,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{67D193EF-F1C7-4911-BC0E-3C929950669D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B0329F7B-86AF-4BA7-BDCB-F4A224CDFE7C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'FullIdentificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PaymentScheduleFileId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Файл графика платежей ,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{4B968B25-7B6C-43A0-ADBE-35CB9D44E130}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5F5586CA-D322-4F32-9CDB-8734EF2857EB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PaymentScheduleFileId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PreviousPaymentAmount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Предыдущий размер платежа,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B98205A9-BE52-4E1C-A2AC-0557B8C3B520}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PreviousPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh7W65ZVKXs4JQuNzDdGkEZZTWE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFh7W65ZVKXs4JQuNzDdGkEZZTWE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh7W65ZVKXs4JQuNzDdGkEZZTWE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B98205A9-BE52-4E1C-A2AC-0557B8C3B520}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFh7W65ZVKXs4JQuNzDdGkEZZTWE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CurrentPaymentAmount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Текущий размер платежа,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Float2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{159E847B-DC6C-4699-8C5E-2FC4ED0470FA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CurrentPaymentAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFX1puVzukabTnNVhAPBAV3cuu324'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFX1puVzukabTnNVhAPBAV3cuu324' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFX1puVzukabTnNVhAPBAV3cuu324'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{159E847B-DC6C-4699-8C5E-2FC4ED0470FA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFX1puVzukabTnNVhAPBAV3cuu324'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'UnpaidPeriod' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Неоплаченный срок займа,en-GB|Column 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{65C8AE22-3C8F-408D-B07B-A4DB7E7B42C7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'UnpaidPeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtGbS2CmjL8nvYIpM0pJPCIDQfeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFtGbS2CmjL8nvYIpM0pJPCIDQfeQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtGbS2CmjL8nvYIpM0pJPCIDQfeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{65C8AE22-3C8F-408D-B07B-A4DB7E7B42C7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFtGbS2CmjL8nvYIpM0pJPCIDQfeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RegularPaymentDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата очередного платежа,en-GB|Column 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5F4E66F1-6C0A-4505-8224-01433558FBF3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RegularPaymentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'LegalOrganizationalFormId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Организационно-правовая форма работодателя,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{59728707-1746-4316-A7EA-D9DF3C54F3B9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C99BC654-03C8-4455-B8B4-A2DC68F0E384}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'LegalOrganizationalFormId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContactPreviousFamilyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Преждняя фамилия,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'MediumText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{88C57EE2-5DB5-4A1B-8039-688D85B007F8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContactPreviousFamilyName'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFnKl8kcfGWWdMgRXn5ActdJi5Jis'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFnKl8kcfGWWdMgRXn5ActdJi5Jis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFnKl8kcfGWWdMgRXn5ActdJi5Jis'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{88C57EE2-5DB5-4A1B-8039-688D85B007F8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFnKl8kcfGWWdMgRXn5ActdJi5Jis'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'PartnerId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Партнер,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{7003D8BD-5BB6-49C8-A061-2B79B738240B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7CEB122E-3D8E-4973-8110-01BC0B4030A8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'PartnerId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'RequestToApplicationId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Заявка на займ,en-GB|Column 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{A5D905FB-F8B7-4EE6-B77A-7174E785EB1A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{20A48B18-B386-43B6-840B-C0E23EBA1D7A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'RequestToApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CollectionStartDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата передачи на взыскание,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D71E6D14-9692-4251-80B5-C391FB798AEF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'CollectionEndDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отзыва из взыскания,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{068B9A12-4B20-418C-AC0B-CE2521F7151E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CollectionEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'SaleCancelDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Дата отзыва из продажи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F2184837-6817-4697-B191-41A09932B653}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'SaleCancelDate'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'InternallySold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Признак внутренней продажи,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Boolean' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0B211152-72E8-49CA-A756-F8C142762618}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'InternallySold'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'DefValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpKChoTwF35CJIqqfiR0ca4wuuQg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'DFpKChoTwF35CJIqqfiR0ca4wuuQg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpKChoTwF35CJIqqfiR0ca4wuuQg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0B211152-72E8-49CA-A756-F8C142762618}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'DFpKChoTwF35CJIqqfiR0ca4wuuQg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ColumnName', @value=N'ContractSaleId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.Caption', @value=N'ru-RU|Договор цессии,en-GB|Column 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.CreatedInSchemaUId', @value=N'{4A52C187-9F1E-421F-9B00-4BEA1A1F4FF2}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.DataValueType', @value=N'Lookup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaList', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceSchemaUId', @value=N'{98914451-67FB-4319-B9AD-1A243E47290D}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.ReferenceValueListSchemaUId', @value=N'{00000000-0000-0000-0000-000000000000}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{51CCAACF-D803-434E-9AFC-A4E53C9FBE37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.IsTemporary', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ContractSaleId'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'PrimaryKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'PKJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'PKJ3BnOuNMdyH0tYsGQ2m9tSA9MZU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'PKJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AE0E45CA-C495-4FE7-A39D-3AB7278E1617}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'PKJ3BnOuNMdyH0tYsGQ2m9tSA9MZU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'Schema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchema.Caption', @value=N'ru-RU|Заем,en-GB|Base Object with Notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchema.Kind', @value=N'General' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchema.ParentSchemaUId', @value=N'{98C93D1E-2067-44CB-A667-E8C272EFA905}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchema.UId', @value=N'{3FF1B4FE-3A0B-4A8B-80E9-156025C0BBE8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaName', @value=N'Application' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2JbpMPsYZNP5g4tAU6xOM9JzNg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK2JbpMPsYZNP5g4tAU6xOM9JzNg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2JbpMPsYZNP5g4tAU6xOM9JzNg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B0329F7B-86AF-4BA7-BDCB-F4A224CDFE7C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2JbpMPsYZNP5g4tAU6xOM9JzNg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2obTIsQZuMzEOA0EnTG6mfxQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK2obTIsQZuMzEOA0EnTG6mfxQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2obTIsQZuMzEOA0EnTG6mfxQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{ACFE3EEC-5E1E-4C9A-886B-F41104B8F870}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK2obTIsQZuMzEOA0EnTG6mfxQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK30q33OrJ4GzGsl0IzYCVeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK30q33OrJ4GzGsl0IzYCVeQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK30q33OrJ4GzGsl0IzYCVeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C5718EC6-B968-4560-81B4-E4D319E4FE70}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK30q33OrJ4GzGsl0IzYCVeQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK3iu7ZR5D7yqYFhoyqc84TF8VxY8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK3iu7ZR5D7yqYFhoyqc84TF8VxY8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK3iu7ZR5D7yqYFhoyqc84TF8VxY8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C9EF64EB-30CC-435B-A4CF-E6D3A3896799}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK3iu7ZR5D7yqYFhoyqc84TF8VxY8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4ekVQiLNS80MBEbA3Ag2MPWpi4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK4ekVQiLNS80MBEbA3Ag2MPWpi4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4ekVQiLNS80MBEbA3Ag2MPWpi4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{24A2E287-493F-47E2-96D3-4E1B33A6E178}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4ekVQiLNS80MBEbA3Ag2MPWpi4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4kVeKYLtrUdfEuq1RGuE0ifTE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK4kVeKYLtrUdfEuq1RGuE0ifTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4kVeKYLtrUdfEuq1RGuE0ifTE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{3C0D4AEC-8E43-440F-8362-B54341D33C7C}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4kVeKYLtrUdfEuq1RGuE0ifTE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4xHS6Muq6hOhcrj4w9ym3Ec'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK4xHS6Muq6hOhcrj4w9ym3Ec' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4xHS6Muq6hOhcrj4w9ym3Ec'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5F3D0544-A116-42D5-8433-74CAF847F6EA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK4xHS6Muq6hOhcrj4w9ym3Ec'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK72xm1l6SmN9e6Dd67at9iyFBI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK72xm1l6SmN9e6Dd67at9iyFBI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK72xm1l6SmN9e6Dd67at9iyFBI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F735C071-CE14-46E0-895A-D0EF5E23053A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK72xm1l6SmN9e6Dd67at9iyFBI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK82ewWJqfzwDKbaiwIdfcOwhiELg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK82ewWJqfzwDKbaiwIdfcOwhiELg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK82ewWJqfzwDKbaiwIdfcOwhiELg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{76A58362-DDB7-4C3D-BB93-CCE7D8C08075}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK82ewWJqfzwDKbaiwIdfcOwhiELg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK8Svn3wuWotC1RZ3ABOskhLYgsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK8Svn3wuWotC1RZ3ABOskhLYgsQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK8Svn3wuWotC1RZ3ABOskhLYgsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{911F6D1A-020E-44E1-972F-AC9A88037B63}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK8Svn3wuWotC1RZ3ABOskhLYgsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK9ST8xCMe2MsBdXSDlasEMDTBhHI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FK9ST8xCMe2MsBdXSDlasEMDTBhHI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK9ST8xCMe2MsBdXSDlasEMDTBhHI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4862F1B8-9AA6-4E63-805C-3042564D131B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FK9ST8xCMe2MsBdXSDlasEMDTBhHI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKa5lGSPi6sB5Fm5YGrcBz6v9dFM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKsY152ljrt2oA9TMP91Whm2gY7s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKa5lGSPi6sB5Fm5YGrcBz6v9dFM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{358BAF8B-3DBC-4D7D-93B3-8A9C7CA20C49}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKa5lGSPi6sB5Fm5YGrcBz6v9dFM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKaWuZ5jtnmYiRGSNbPs0P5zo34o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKaWuZ5jtnmYiRGSNbPs0P5zo34o' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKaWuZ5jtnmYiRGSNbPs0P5zo34o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{31024294-5EFC-4E1C-85B2-AEA80A76EF5F}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKaWuZ5jtnmYiRGSNbPs0P5zo34o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKB6kX45uLhrALvWtYeXGakQXJeo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKB6kX45uLhrALvWtYeXGakQXJeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKB6kX45uLhrALvWtYeXGakQXJeo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{D7574BE4-DAD8-4DC0-B7D8-F545D8C1E747}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKB6kX45uLhrALvWtYeXGakQXJeo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKC7qXjX23gSrCroh49DpyBsV1og'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKC7qXjX23gSrCroh49DpyBsV1og' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKC7qXjX23gSrCroh49DpyBsV1og'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{EADCE71E-6586-47A7-89F3-1EF7BA6721E0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKC7qXjX23gSrCroh49DpyBsV1og'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKcLuDk7I9JkZ9se9nxl3hqrIHVYg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKcLuDk7I9JkZ9se9nxl3hqrIHVYg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKcLuDk7I9JkZ9se9nxl3hqrIHVYg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B608E4D0-981A-400C-906B-8F644DB0AAE7}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKcLuDk7I9JkZ9se9nxl3hqrIHVYg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKCoNi0OV9t6IL4GkN5RIzpMXW24'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKCoNi0OV9t6IL4GkN5RIzpMXW24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKCoNi0OV9t6IL4GkN5RIzpMXW24'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2AC3F3FC-6362-4662-8C7C-9C680FAB626E}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKCoNi0OV9t6IL4GkN5RIzpMXW24'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDfFVCWnY6PvpRlBF9CLth7EbPR0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKDfFVCWnY6PvpRlBF9CLth7EbPR0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDfFVCWnY6PvpRlBF9CLth7EbPR0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F1489CA8-F3D2-4001-90C7-E4F4BD03982A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDfFVCWnY6PvpRlBF9CLth7EbPR0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKdqyCJKsRIvUgTprKFexAJirHO8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKdqyCJKsRIvUgTprKFexAJirHO8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKdqyCJKsRIvUgTprKFexAJirHO8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{51CCAACF-D803-434E-9AFC-A4E53C9FBE37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKdqyCJKsRIvUgTprKFexAJirHO8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDVpaExrzMNFuXswR58eAug5OHyc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKDVpaExrzMNFuXswR58eAug5OHyc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDVpaExrzMNFuXswR58eAug5OHyc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{576B1C84-C012-4E3A-9349-B3F9AC1113DF}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDVpaExrzMNFuXswR58eAug5OHyc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDyOq15OhcUgSt665Tb6WPFWZM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKDyOq15OhcUgSt665Tb6WPFWZM8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDyOq15OhcUgSt665Tb6WPFWZM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C560CEC3-9610-411C-BF23-0F922018BDB9}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKDyOq15OhcUgSt665Tb6WPFWZM8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKeb4VeXIaBYNyrM8Gfs13q5mIMM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKeb4VeXIaBYNyrM8Gfs13q5mIMM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKeb4VeXIaBYNyrM8Gfs13q5mIMM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{DF11FAFB-E805-43ED-ADD8-BE2C1FA10910}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKeb4VeXIaBYNyrM8Gfs13q5mIMM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKFMvjRRDWU5lCsM5mCtt4mvsQfWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKFMvjRRDWU5lCsM5mCtt4mvsQfWM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKFMvjRRDWU5lCsM5mCtt4mvsQfWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{11FFF3FD-1494-4702-9A0D-7C879DDAF142}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKFMvjRRDWU5lCsM5mCtt4mvsQfWM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKGjDXxXatiuwePNPZuhGBbigimo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKGjDXxXatiuwePNPZuhGBbigimo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKGjDXxXatiuwePNPZuhGBbigimo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{73C831B1-D885-482A-B62A-311554459C5B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKGjDXxXatiuwePNPZuhGBbigimo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgjhScHeveIzssLv9Aoyt3gogyE0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKgjhScHeveIzssLv9Aoyt3gogyE0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgjhScHeveIzssLv9Aoyt3gogyE0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BBFA025C-D6D5-427C-B564-A19E26E3F563}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgjhScHeveIzssLv9Aoyt3gogyE0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgLzLndXCKXAvtoEeqN9x38HLyCM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKgLzLndXCKXAvtoEeqN9x38HLyCM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgLzLndXCKXAvtoEeqN9x38HLyCM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{0A70F6D0-E002-420D-9F04-A4C6EB1B5653}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKgLzLndXCKXAvtoEeqN9x38HLyCM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKH47w5WMhxowq4Qz3XnqmTYO4cKM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKH47w5WMhxowq4Qz3XnqmTYO4cKM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKH47w5WMhxowq4Qz3XnqmTYO4cKM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{204338AF-F3D1-4D2F-84B5-689D55E80766}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKH47w5WMhxowq4Qz3XnqmTYO4cKM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKhiwxDyUOkjO8doR2Fs1nkOb2q8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKhiwxDyUOkjO8doR2Fs1nkOb2q8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKhiwxDyUOkjO8doR2Fs1nkOb2q8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A8278572-451D-4008-8DE1-0BFF963A53EA}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKhiwxDyUOkjO8doR2Fs1nkOb2q8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKI8w2kXbdf2uYTsSxcDVrMXSk0y4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKI8w2kXbdf2uYTsSxcDVrMXSk0y4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKI8w2kXbdf2uYTsSxcDVrMXSk0y4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5C3AA7B4-FF87-4E5A-A7A0-557787A7AB44}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKI8w2kXbdf2uYTsSxcDVrMXSk0y4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{43ADC24C-EBE3-4365-9497-5FD577432FF4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKIf0Nxlg1RIvNKlsI0qlI8TCG2nc'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKigQYth45LKeoxYrBkwE7xhQbM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKigQYth45LKeoxYrBkwE7xhQbM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKigQYth45LKeoxYrBkwE7xhQbM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5F5586CA-D322-4F32-9CDB-8734EF2857EB}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKigQYth45LKeoxYrBkwE7xhQbM'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKinevFWKu7QJkQfObuIqNA9m1gU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKinevFWKu7QJkQfObuIqNA9m1gU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKinevFWKu7QJkQfObuIqNA9m1gU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{A6605F4D-3AE1-49D1-9B9B-EA99BB9442C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKinevFWKu7QJkQfObuIqNA9m1gU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjEZ22ei3UjR3a2N4eQM7onxUDrE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKjEZ22ei3UjR3a2N4eQM7onxUDrE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjEZ22ei3UjR3a2N4eQM7onxUDrE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{AC9D27A6-D645-48C0-9078-84C84F5094C1}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjEZ22ei3UjR3a2N4eQM7onxUDrE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjJkn1ZC2M04pbzqLisB8YPRc3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKjJkn1ZC2M04pbzqLisB8YPRc3M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjJkn1ZC2M04pbzqLisB8YPRc3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B53E8B94-5C1C-44FD-9DEB-4B694FA66DE0}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjJkn1ZC2M04pbzqLisB8YPRc3M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjuuNWdEku04Se5YqC2zYDt7J8zQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKjuuNWdEku04Se5YqC2zYDt7J8zQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjuuNWdEku04Se5YqC2zYDt7J8zQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{2672502A-0F81-4EEE-B495-E2A4840CF82B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKjuuNWdEku04Se5YqC2zYDt7J8zQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKldpah3rTgAA7xROLn82NrMufBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKldpah3rTgAA7xROLn82NrMufBo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKldpah3rTgAA7xROLn82NrMufBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{CF0D80F6-C4FB-4834-B23C-5AE8D9B42D08}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKldpah3rTgAA7xROLn82NrMufBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlGro0n0eH10bLzU4Z0i8VAC2M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKlGro0n0eH10bLzU4Z0i8VAC2M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlGro0n0eH10bLzU4Z0i8VAC2M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{42D5DFEF-2E50-4E52-8563-4973CF3FB094}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlGro0n0eH10bLzU4Z0i8VAC2M'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlPfJ9nScB8CEclGWCw2fdUOe1j4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKlPfJ9nScB8CEclGWCw2fdUOe1j4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlPfJ9nScB8CEclGWCw2fdUOe1j4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C74C028A-05CB-4CAD-9E1F-61B73686DB70}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKlPfJ9nScB8CEclGWCw2fdUOe1j4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C99BC654-03C8-4455-B8B4-A2DC68F0E384}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKLvh1VpjZNZeAnc2Ln0t7o4yPqVE'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmlOIOSc1QMMfIlwS2xRddObSBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKmlOIOSc1QMMfIlwS2xRddObSBo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmlOIOSc1QMMfIlwS2xRddObSBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{FC531B2E-1D8D-48C0-A437-C709DE9A7D40}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmlOIOSc1QMMfIlwS2xRddObSBo'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmVFMWjyqfSo3twYDnjX12S6R31I'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKmVFMWjyqfSo3twYDnjX12S6R31I' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmVFMWjyqfSo3twYDnjX12S6R31I'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{33FCB420-E7C7-439A-83CB-6E17C9FFA877}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKmVFMWjyqfSo3twYDnjX12S6R31I'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{F3044301-EFB4-45DA-A267-CE20E3C4DF3A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKNk4wSjaHW3ST2lW2tPPuqbHzQ5o'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKnpyE5XyFVvCAgTmpqhETfatUHUU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKnpyE5XyFVvCAgTmpqhETfatUHUU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKnpyE5XyFVvCAgTmpqhETfatUHUU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C1FEE55C-B2B3-4C1D-A130-52381357F7C4}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKnpyE5XyFVvCAgTmpqhETfatUHUU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKO4JSwkS6SnaAWnjR18obLR2jsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKO4JSwkS6SnaAWnjR18obLR2jsQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKO4JSwkS6SnaAWnjR18obLR2jsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7604A1B3-41AA-4E17-A149-2993BD55A622}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKO4JSwkS6SnaAWnjR18obLR2jsQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKoC7jSvVNjMz5bpiJNXN1H9AEzq8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKoC7jSvVNjMz5bpiJNXN1H9AEzq8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKoC7jSvVNjMz5bpiJNXN1H9AEzq8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{BC9A70E6-7589-420D-A253-3D4204F2847B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKoC7jSvVNjMz5bpiJNXN1H9AEzq8'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSOfRdYBR92Fqo8bRI50Mf3OGJ0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKSOfRdYBR92Fqo8bRI50Mf3OGJ0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSOfRdYBR92Fqo8bRI50Mf3OGJ0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{20A48B18-B386-43B6-840B-C0E23EBA1D7A}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSOfRdYBR92Fqo8bRI50Mf3OGJ0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSZku8i6xvIhZiGYxemPmFhwZs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKSZku8i6xvIhZiGYxemPmFhwZs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSZku8i6xvIhZiGYxemPmFhwZs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{59AD679E-3C79-4723-84CC-C3DC76EDF912}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKSZku8i6xvIhZiGYxemPmFhwZs'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKTOwaipZb1f1laCO9Bh8fFuEzLaY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKTOwaipZb1f1laCO9Bh8fFuEzLaY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKTOwaipZb1f1laCO9Bh8fFuEzLaY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{C0BCF0D4-F94A-4047-A9CB-902165365880}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKTOwaipZb1f1laCO9Bh8fFuEzLaY'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKU0uogzvyWXJyawk2IY0rYBHXdg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKU0uogzvyWXJyawk2IY0rYBHXdg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKU0uogzvyWXJyawk2IY0rYBHXdg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{E727CF7C-F40D-46A8-BEF2-24C76649F047}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKU0uogzvyWXJyawk2IY0rYBHXdg'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKughHm0C0h9fShw0ZWb5rmVh6Xj0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKughHm0C0h9fShw0ZWb5rmVh6Xj0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKughHm0C0h9fShw0ZWb5rmVh6Xj0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{7CEB122E-3D8E-4973-8110-01BC0B4030A8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKughHm0C0h9fShw0ZWb5rmVh6Xj0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUr8NrhFZa2a96x6ckwjtGVN0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKqy8QZTm1365WhcTAakszIig4I3A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUr8NrhFZa2a96x6ckwjtGVN0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{545EE6F0-90C6-43A3-B86A-60E0A306F453}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUr8NrhFZa2a96x6ckwjtGVN0'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUTflzOvOlZsOs798wBUgwdZef4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKUTflzOvOlZsOs798wBUgwdZef4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUTflzOvOlZsOs798wBUgwdZef4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{90F0F563-E34A-4DE6-BCD3-5EC21F760F51}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUTflzOvOlZsOs798wBUgwdZef4'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUW5RXk6snZ6K370cPdr07Yyn0A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKUW5RXk6snZ6K370cPdr07Yyn0A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUW5RXk6snZ6K370cPdr07Yyn0A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{10204529-A37A-4871-8981-81B797ABB96B}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKUW5RXk6snZ6K370cPdr07Yyn0A'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKuZL1P7F2Cl0IV23DtsokNVnKI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKuZL1P7F2Cl0IV23DtsokNVnKI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKuZL1P7F2Cl0IV23DtsokNVnKI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5C54774D-87C5-48E3-9E51-4B55D7858CD8}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKuZL1P7F2Cl0IV23DtsokNVnKI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKV2YprgChMsXwzM656ep0AbL6rU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKV2YprgChMsXwzM656ep0AbL6rU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKV2YprgChMsXwzM656ep0AbL6rU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{5461DC18-56D3-4AA7-B641-F18EB8A8FC38}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKV2YprgChMsXwzM656ep0AbL6rU'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKwQHiRcZmIiwqKgT0rwWggzZx7BQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKwQHiRcZmIiwqKgT0rwWggzZx7BQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKwQHiRcZmIiwqKgT0rwWggzZx7BQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{4BDBDBFC-B65E-4C44-8A7B-D845CB5A3243}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKwQHiRcZmIiwqKgT0rwWggzZx7BQ'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKypQ9wC69eVj1YYwYWbAwZYSi4w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKypQ9wC69eVj1YYwYWbAwZYSi4w' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKypQ9wC69eVj1YYwYWbAwZYSi4w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{33FEB42E-555E-4ACE-B3F9-6C82A44DEF98}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKypQ9wC69eVj1YYwYWbAwZYSi4w'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{B3806ED4-ADF5-4DA6-AF0B-BDF161A72B37}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKyzQqZHudTuzdG1Yd2BhIQ9xfDQI'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ActionType', @value=N'ForeignKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKz1EL81bHAPPoHMYHCnLGkxNGA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.ConstraintName', @value=N'FKz1EL81bHAPPoHMYHCnLGkxNGA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKz1EL81bHAPPoHMYHCnLGkxNGA'
GO

EXEC sys.sp_addextendedproperty @name=N'TS.EntitySchemaColumn.UId', @value=N'{51BB4B8A-EA5E-47A0-973B-BE0DE1B95FC3}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'FKz1EL81bHAPPoHMYHCnLGkxNGA'
GO


