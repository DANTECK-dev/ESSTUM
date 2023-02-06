use db_icv
select Товар, avg(Цена) as СредняяЦена
from Поставлено
group by Товар