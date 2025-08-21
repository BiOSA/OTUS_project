-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2025-06-30
-- Description:	Удаление отмененных начислений в tz.Accrual для новых tz.AccrualCancel. Запускается из dbo.AbstractObjectDDSProcess
-- EXEC tz.AccrualCancelDDSPostProcess 1
CREATE PROCEDURE tz.AccrualCancelDDSPostProcess
    @BatchDetailId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
  
    --нет смысла отсекать по AccrualCancel, тк в 
    DELETE FROM a
    FROM       tz_dds.Accrual       a
    INNER JOIN tz_dds.AccrualCancel ca ON ca.Accrual_RK = a.Accrual_RK;
END;
GO
GRANT EXEC ON tz.AccrualCancelDDSPostProcess TO tz_report;