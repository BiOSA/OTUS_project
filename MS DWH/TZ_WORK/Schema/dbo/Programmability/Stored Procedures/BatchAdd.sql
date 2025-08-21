-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2023-12-15
-- Description:	Добавление пачки выгрузки за определенный период
-- DECLARE @BatchId BIGINT; EXEC dbo.BatchAdd '2023-12-01', '2023-12-03', @BatchId OUT; PRINT @BatchId
CREATE PROCEDURE dbo.BatchAdd
	  @DateFrom   DATE
	, @DateTill   DATE
	, @BatchId    BIGINT OUTPUT
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	SELECT @BatchId = NULL;

	DECLARE @BS_NEW BIGINT = (SELECT BatchStatusId FROM dbo.BatchStatus WHERE [Name] = 'NEW')

	BEGIN TRANSACTION;
	BEGIN TRY
	    SELECT @BatchId = b.BatchId
	    FROM dbo.Batch b
	    WHERE   b.DateFrom = @DateFrom
	        AND b.DateTill = @DateTill;
	    
	    IF @BatchId IS NULL BEGIN
	        INSERT INTO dbo.Batch WITH (HOLDLOCK)(DateFrom, DateTill, StatusId) 
	        SELECT @DateFrom, @DateTill, @BS_NEW;
	        SET @BatchId = SCOPE_IDENTITY();
	    END;

	    COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
	    ROLLBACK TRANSACTION;
		THROW;
	END CATCH;
END;
GO
GRANT EXEC ON dbo.BatchAdd TO tz_report;