EXEC prm.RegisterSet
	  @Code			= 'ADMIN_EMAILS'
	, @Value		= 'itimofeev@eqvantalab.ru;kdzreyan@eqvantalab.ru'
	, @Description	= 'Адреса почты, на которые уйдут письма при технических ошибках';

EXEC prm.RegisterSet
	  @Code			= 'STAGE_DB_NAME'
	, @Value		= '$(TZ_STG_DB)'
	, @Description	= 'Имя базы, где лежиат объекты синхронизации слоя STAGE';

EXEC prm.RegisterSet
	  @Code			= 'DDS_DB_NAME'
	, @Value		= '$(TZ_DDS_DB)'
	, @Description	= 'Имя базы, где лежат объекты синхронизации слоя DDS';

DECLARE @MAX_EFFECTIVE_DATE DATE = CAST('5999-12-31' AS DATE);
EXEC prm.RegisterSet
	  @Code			= 'MAX_EFFECTIVE_DATE'
	, @Value		= @MAX_EFFECTIVE_DATE
	, @Description	= 'Максимальная дата периода актуальности записи';

EXEC prm.RegisterSet
	  @Code			= 'STG_DEPTH_DAYS'
	, @Value		= 1
	, @Description	= 'Количество дней, которые участвуют в выгрузке в слой STAGE';

DECLARE @MARTS_INITIAL_DATE DATE = CAST('2019-01-01' AS DATE);
EXEC prm.RegisterSet
	  @Code			= 'MARTS_INITIAL_DATE'
	, @Value		= @MARTS_INITIAL_DATE
	, @Description	= 'Дата, с которой начинается хранение данных в витринах';

DECLARE @LOAN_NUMBER_PREFIX VARCHAR(10) = CASE
                                            WHEN DB_NAME() = 'TZ_WORK' THEN 'АА'
											WHEN DB_NAME() = 'EZ_WORK' THEN 'ЭК'
										  END;
EXEC prm.RegisterSet
	  @Code			= 'LOAN_NUMBER_PREFIX'
	, @Value		= @LOAN_NUMBER_PREFIX
	, @Description	= 'Префикс номера займа';
