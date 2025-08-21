CREATE TABLE mart.AccrualGross
(
	  AccrualDate   DATE           NOT NULL CONSTRAINT PK_mart_AccrualGross PRIMARY KEY
	, AmountAccrued DECIMAL(19, 2) NOT NULL
	, UpdateDate    DATETIME       NOT NULL CONSTRAINT DF_mart_AccrualGross_UpdateDate DEFAULT(GETDATE())
)
GO
CREATE TRIGGER mart.tr_AccrualGross
ON mart.AccrualGross
AFTER UPDATE
AS BEGIN
	UPDATE g SET
	    UpdateDate = GETDATE()
	FROM inserted i
	INNER JOIN mart.AccrualGross g ON g.AccrualDate = i.AccrualDate;
END;