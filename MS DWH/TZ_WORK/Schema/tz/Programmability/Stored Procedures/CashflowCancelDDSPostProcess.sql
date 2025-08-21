-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2025-06-30
-- Description:	Удаление отмененных начислений в tz.Cashflow для новых tz.CashflowCancel. Запускается из dbo.AbstractObjectDDSProcess
-- EXEC tz.CashflowCancelDDSPostProcess 1
CREATE PROCEDURE tz.CashflowCancelDDSPostProcess
    @BatchDetailId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
  
    --нет смысла отсекать по CashflowCancel, тк в 
    DELETE FROM a
    FROM       tz_dds.Cashflow       a
    INNER JOIN tz_dds.CashflowCancel ca ON ca.Cashflow_RK = a.Cashflow_RK;
END;
GO
GRANT EXEC ON tz.CashflowCancelDDSPostProcess TO tz_report;