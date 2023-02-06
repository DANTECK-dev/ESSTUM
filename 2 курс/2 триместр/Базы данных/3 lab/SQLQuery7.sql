use db_icv
select *
from Поставщики
where КодПоставщика not in (select КодПоставщика from Договоры)