-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2025-06-30
-- Description:	Удаление отмененных начислений в tz.Balance для новых tz.BalanceCancel. Запускается из dbo.AbstractObjectDDSProcess
-- EXEC tz.BalanceCancelDDSPostProcess 1
CREATE PROCEDURE tz.BalanceCancelDDSPostProcess
    @BatchDetailId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
  
    --нет смысла отсекать по BalanceCancel, тк в 
    DELETE FROM a
    FROM       tz_dds.Balance       a
    INNER JOIN tz_dds.BalanceCancel ca ON ca.Balance_RK = a.Balance_RK;
END;
GO
GRANT EXEC ON tz.BalanceCancelDDSPostProcess TO tz_report;