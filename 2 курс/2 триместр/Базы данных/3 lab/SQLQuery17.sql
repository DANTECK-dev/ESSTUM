use db_icv
select Товар, count(Товар) as ЧастотаПоставок
from Поставлено
	group by Товар
	having count(Товар) > 1
	order by count(Товар) desc