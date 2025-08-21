-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2024-04-09
-- Description:	Заполнение полей для слоя DDS для tz.SandboxInputLog. Запускается из dbo.AbstractObjectDDSProcess
-- EXEC tz.SandboxInputLogDDSPostProcess 1
CREATE PROCEDURE tz.SandboxInputLogDDSPostProcess
    @BatchDetailId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

    DECLARE @BatchId                    BIGINT;

    SELECT @BatchId = bd.BatchId
    FROM       dbo.ObjectRegister sr
    INNER JOIN dbo.BatchDetail   bd ON sr.ObjectRegisterId = bd.ObjectRegisterId
    WHERE  bd.BatchDetailId = @BatchDetailId;

    --займ выдан с целью рефинансирования
    UPDATE tz_dds.SandboxInputLog SET
          IsRefinanced   = IIF(Comment LIKE '%Перекредитование. (ref)%', 1, 0)
        , IsAutoApproved = IIF(Decision = 'AutoApprove', 1, 0)
    WHERE BatchId = @BatchId
END;
GO
GRANT EXEC ON tz.SandboxInputLogDDSPostProcess TO tz_report;