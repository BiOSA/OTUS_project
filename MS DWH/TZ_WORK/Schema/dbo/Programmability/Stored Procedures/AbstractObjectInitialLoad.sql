-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2024-02-06
-- Description: Инициализирующая выгрузка объекта. Запускать после создания нового объекта
-- EXEC dbo.AbstractObjectInitialLoad 'tz.Application'
CREATE PROCEDURE dbo.AbstractObjectInitialLoad
      @ObjectRegisterName VARCHAR(50)
	, @BatchId            BIGINT      = NULL
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

    DECLARE
	    @CurrentBatchId BIGINT;

	DECLARE crs CURSOR FOR
	    SELECT b.BatchId 
		FROM dbo.Batch b
		WHERE (@BatchId IS NULL OR BatchId >= @BatchId)
		ORDER BY b.DateFrom;
	OPEN crs;
	WHILE 1=1 BEGIN
	    FETCH NEXT FROM crs INTO @CurrentBatchId;
		IF @@FETCH_STATUS!=0
		    BREAK;

		--STG-layer
		EXEC dbo.AbstractObjectStageProcess 
		      @BatchId			  = @CurrentBatchId
			, @ObjectRegisterName = @ObjectRegisterName
			, @IsForcedLoad       = 1;
		
		--DDS-layer
		EXEC dbo.AbstractObjectDDSProcess 
		      @BatchId			  = @CurrentBatchId
			, @ObjectRegisterName = @ObjectRegisterName
			, @IsForcedLoad       = 1;
	END;
	CLOSE crs;
	DEALLOCATE crs;
END