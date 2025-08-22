from dags.tz.bpm.gp_schemas.additional_agreement_type import schema as additional_agreement_type_schema
from dags.tz.bpm.gp_schemas.additional_agreement_status import schema as additional_agreement_status_schema
from dags.tz.bpm.gp_schemas.additional_product_type import schema as additional_product_type_schema
from dags.tz.bpm.gp_schemas.additional_product import schema as additional_product_schema
from dags.tz.bpm.gp_schemas.application_decision import schema as application_decision_schema
from dags.tz.bpm.gp_schemas.address_type import schema as address_type_schema
from dags.tz.bpm.gp_schemas.financing_instrument_status import schema as financing_instrument_status_schema
from dags.tz.bpm.gp_schemas.financing_instrument_type import schema as financing_instrument_type_schema
from dags.tz.bpm.gp_schemas.verification_list_result import schema as verification_list_result_schema
from dags.tz.bpm.gp_schemas.legal_collection_contract_status import schema as legal_collection_contract_status_schema
from dags.tz.bpm.gp_schemas.cashflow_types import schema as cashflow_types_schema
from dags.tz.bpm.gp_schemas.cashflow_source import schema as cashflow_source_schema
from dags.tz.bpm.gp_schemas.cashflow_category import schema as cashflow_category_schema
from dags.tz.bpm.gp_schemas.accrual import schema as accrual_schema
from dags.tz.bpm.gp_schemas.esia_info import schema as esia_info_schema
from dags.tz.bpm.gp_schemas.inn_request_status import schema as inn_request_status_schema
from dags.tz.bpm.gp_schemas.contact_inn import schema as contact_inn_schema
from dags.tz.bpm.gp_schemas.accrual_cancel import schema as accrual_cancel_schema
from dags.tz.bpm.gp_schemas.accrual_log import schema as accrual_log_schema
from dags.tz.bpm.gp_schemas.additional_product_refund_log import schema as additional_product_refund_log_schema
from dags.tz.bpm.gp_schemas.application_additional_product_file import schema as application_additional_product_file_schema
from dags.tz.bpm.gp_schemas.balance_cancel import schema as balance_cancel_schema
from dags.tz.bpm.gp_schemas.application_additional_product import schema as application_additional_product_schema
from dags.tz.bpm.gp_schemas.application_address import schema as application_address_schema
from dags.tz.bpm.gp_schemas.contact import schema as contact_schema
from dags.tz.bpm.gp_schemas.apsk_history import schema as apsk_history_schema
from dags.tz.bpm.gp_schemas.contact_address import schema as contact_address_schema
from dags.tz.bpm.gp_schemas.accrual import schema as accrual_schema
from dags.tz.bpm.gp_schemas.additional_agreement import schema as additional_agreement_schema
from dags.tz.bpm.gp_schemas.application import schema as application_schema
from dags.tz.bpm.gp_schemas.agredator_request_log import schema as agredator_request_log_schema
from dags.tz.bpm.gp_schemas.agredator_service_log import schema as agredator_service_log_schema
from dags.tz.bpm.gp_schemas.agree_log import schema as agree_log_schema
from dags.tz.bpm.gp_schemas.application_approval import schema as application_approval_schema
from dags.tz.bpm.gp_schemas.application_audit import schema as application_audit_schema
from dags.tz.bpm.gp_schemas.application_file import schema as application_file_schema
from dags.tz.bpm.gp_schemas.application_integration import schema as application_integration_schema
from dags.tz.bpm.gp_schemas.application_manual_verification import schema as application_manual_verification_schema
from dags.tz.bpm.gp_schemas.application_pti_params import schema as application_pti_params_schema
from dags.tz.bpm.gp_schemas.application_pti_value import schema as application_pti_value_schema
from dags.tz.bpm.gp_schemas.application_source_parameters import schema as application_source_parameters_schema
from dags.tz.bpm.gp_schemas.application_spr_request import schema as application_spr_request_schema
from dags.tz.bpm.gp_schemas.application_tag import schema as application_tag_schema
from dags.tz.bpm.gp_schemas.application_uid_bki import schema as application_uid_bki_schema
from dags.tz.bpm.gp_schemas.approval_code import schema as approval_code_schema
from dags.tz.bpm.gp_schemas.auth_attempts import schema as auth_attempts_schema

from dags.utils.gp_utils import PartitionType
from datetime import datetime

source = "bpm"
branch = "tz"
src_conn_id = "tz_bpm"
gp_conn_id = "greenplum"
source_schema = "dbo"

entities = [
    {
        "name": "EsiaInfo",
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": esia_info_schema,
        "sql_path": "sql/extract/esia_info.sql",
    },
    {
        "name": "InnRequestStatus",
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": inn_request_status_schema,
        "sql_path": "sql/extract/inn_request_status.sql",
    },
    {
        "name": "ContactInn",
        "start_date": datetime(2025, 8, 13),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": contact_inn_schema,
        "sql_path": "sql/extract/contact_inn.sql",
    },
    {
        "name": "AccrualCancel",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": accrual_cancel_schema,
        "sql_path": "sql/extract/accrual_cancel.sql",
    },
    {
        "name": "AccrualLog",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": accrual_log_schema,
        "sql_path": "sql/extract/accrual_log.sql",
    },
    {
        "name": "AdditionalProductRefundLog",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": additional_product_refund_log_schema,
        "sql_path": "sql/extract/accrual_log.sql",
    },
    # Ошибка: UndefinedColumn: column "data" of relation "ods_t_tz_bpm_application_additional_product_file_20240102000000" does not exist
    {
        "name": "ApplicationAdditionalProductFile",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_additional_product_file_schema,
        "sql_path": "sql/extract/application_additional_product_file.sql",
    },
    {
        "name": "BalanceCancel",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": balance_cancel_schema,
        "sql_path": "sql/extract/balance_cancel.sql",
    },
    {
        "name": "ApplicationAdditionalProduct",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_additional_product_schema,
        "sql_path": "sql/extract/application_additional_product.sql",
    },
    # ошибка: Primary-поле
    # {
    #     "name": "ApplicationAddress",
    #     "start_date": datetime(2024, 1, 1),
    #     "schedule": "@daily",
    #     "partition_type": PartitionType.everyDay,
    #     "partition_field": "ModifiedOn",
    #     "distributed_fields": ["id"],
    #     "schema": application_address_schema,
    #     "sql_path": "sql/extract/application_address.sql",
    # },
    # ошибка: ConnectionException: PXF server error :  Type  Exception Report   Message  Request header is too large   Description  The server cannot or will not process the request due to something that is perceived to
    # be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).   Exception   java.lang.IllegalArgumentException: Request header is too large
    # {
    #     "name": "Contact",
    #     "start_date": datetime(2024, 1, 1),
    #     "schedule": "@daily",
    #     "partition_type": PartitionType.everyDay,
    #     "partition_field": "ModifiedOn",
    #     "distributed_fields": ["id"],
    #     "schema": contact_schema,
    #     "sql_path": "sql/extract/contact.sql",
    # },
    {
        "name": "APSKHistory",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": apsk_history_schema,
        "sql_path": "sql/extract/apsk_history.sql",
    },
    # ошибка: Primary-поле
    # {
    #     "name": "ContactAddress",
    #     "start_date": datetime(2024, 1, 1),
    #     "schedule": "@daily",
    #     "partition_type": PartitionType.everyDay,
    #     "partition_field": "ModifiedOn",
    #     "distributed_fields": ["id"],
    #     "schema": contact_address_schema,
    #     "sql_path": "sql/extract/contact_address.sql",
    # },
    {
        "name": "Accrual",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": accrual_schema,
        "sql_path": "sql/extract/accrual.sql",
    },
    {
        "name": "AdditionalAgreement",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": additional_agreement_schema,
        "sql_path": "sql/extract/additional_agreement.sql",
    },
    # ошибка: ConnectionException: PXF server error :  Type  Exception Report   Message  Request header is too large   Description  The server cannot or will not process the request due to something that is perceived to
    # be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).   Exception   java.lang.IllegalArgumentException: Request header is too large
    # {
    #     "name": "Application",
    #     "start_date": datetime(2024, 1, 1),
    #     "schedule": "@daily",
    #     "partition_type": PartitionType.everyDay,
    #     "partition_field": "ModifiedOn",
    #     "distributed_fields": ["id"],
    #     "schema": application_schema,
    #     "sql_path": "sql/extract/application.sql",
    # },
    {
        "name": "AgredatorRequestLog",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "RequestDate",
        "distributed_fields": ["id"],
        "schema": agredator_request_log_schema,
        "sql_path": "sql/extract/agredator_request_log.sql",
    },
    {
        "name": "AgredatorServiceLog",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": agredator_service_log_schema,
        "sql_path": "sql/extract/agredator_service_log.sql",
    },
    {
        "name": "AgreeLog",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": agree_log_schema,
        "sql_path": "sql/extract/agree_log.sql",
    },
    {
        "name": "ApplicationApproval",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_approval_schema,
        "sql_path": "sql/extract/application_approval.sql",
    },
    {
        "name": "Application_Audit",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ChangeDate",
        "distributed_fields": ["id"],
        "schema": application_audit_schema,
        "sql_path": "sql/extract/application_audit.sql",
    },
    {
        "name": "ApplicationFile",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_file_schema,
        "sql_path": "sql/extract/application_file.sql",
    },
    {
        "name": "ApplicationIntegration",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_integration_schema,
        "sql_path": "sql/extract/application_integration.sql",
    },
    {
        "name": "ApplicationManualVerification",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_manual_verification_schema,
        "sql_path": "sql/extract/application_manual_verification.sql",
    },
    {
        "name": "ApplicationPtiParams",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": application_pti_params_schema,
        "sql_path": "sql/extract/application_pti_params.sql",
    },
    {
        "name": "ApplicationPtiValue",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": application_pti_value_schema,
        "sql_path": "sql/extract/application_pti_value.sql",
    },
    {
        "name": "ApplicationSourceParameters",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": application_source_parameters_schema,
        "sql_path": "sql/extract/application_source_parameters.sql",
    },
    {
        "name": "ApplicationSprRequest",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": application_spr_request_schema,
        "sql_path": "sql/extract/application_spr_request.sql",
    },
    {
        "name": "ApplicationTag",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_tag_schema,
        "sql_path": "sql/extract/application_tag.sql",
    },
    {
        "name": "Application_Uid_BKI",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": application_uid_bki_schema,
        "sql_path": "sql/extract/application_uid_bki.sql",
    },
    {
        "name": "ApprovalCode",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "ModifiedOn",
        "distributed_fields": ["id"],
        "schema": approval_code_schema,
        "sql_path": "sql/extract/approval_code.sql",
    },
    {
        "name": "AuthAttempts",
        "start_date": datetime(2024, 1, 1),
        "schedule": "@daily",
        "partition_type": PartitionType.everyDay,
        "partition_field": "CreatedOn",
        "distributed_fields": ["id"],
        "schema": auth_attempts_schema,
        "sql_path": "sql/extract/auth_attempts.sql",
    },
]
