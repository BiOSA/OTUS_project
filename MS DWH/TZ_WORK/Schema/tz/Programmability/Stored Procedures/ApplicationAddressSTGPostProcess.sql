-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2024-12-06
-- Description:	обновление инфы по клиенту для ApplicationAddress
CREATE PROCEDURE tz.ApplicationAddressSTGPostProcess
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
	
	UPDATE aa SET
	      Customer_RK = a.Customer_RK
		, ContactId   = a.ContactId
	FROM       tz_stg.ApplicationAddress aa
	INNER JOIN tz_dds.[Application]         a  ON a.Account_RK = aa.Account_RK
	WHERE   aa.BatchId     = @BatchId
	    AND aa.Customer_RK IS NULL
END