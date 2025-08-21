-- =============================================
-- Author:		Дзреян К.Е.
-- Create date: 2022-11-02
-- Description:	Переформирование GUID. 13-й символ заменяется на "1" и в конце идентификатора добавляется контрольный символ (приложение 8)
-- =============================================
CREATE FUNCTION [dbo].[fn_get_uid_bki]
(
@id UNIQUEIDENTIFIER = NULL
)
returns nvarchar(38)
as
begin
declare @symbol nvarchar(1) = ''
declare @sum int = 0
declare @cursor int = 1
declare @uuid nvarchar(36) = upper(stuff(convert(nvarchar(36), @id), 15, 1, '1'))
declare @shortUuid nvarchar(32) = replace(@uuid, '-', '')
while @cursor <= len(@shortUuid)
begin 
	set @symbol = lower(substring(@shortUuid, @cursor, 1))
	
	set @sum = @sum + (case @symbol when 'A' then 10 when 'B' then 11 when 'C' then 12 when 'D' then 13	when 'E' then 14 when 'F' then 15 else convert(int, @symbol) end) * iif(@cursor % 10 = 0, 10, @cursor % 10)
	set @cursor = @cursor + 1
end

return @uuid + '-' + case @sum % 16 when 10 then 'A' when 11 then 'B' when 12 then 'C' when 13 then 'D' when 14 then 'E' when 15 then 'F' else convert(nvarchar(1), @sum % 16) end
end
