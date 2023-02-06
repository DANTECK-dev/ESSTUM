use db_icv
select Поставлено.НомерДоговора, Поставлено.Товар,
	Поставлено.Количество, Поставлено.Цена,
	Договоры.ДатаДоговора,
	Месяц = case month(ДатаДоговора)
		when 1  then 'январь'
		when 2  then 'февраль'
		when 3  then 'март'
		when 4  then 'апрель'
		when 5  then 'май'
		when 6  then 'июнь'
		when 7  then 'июль'
		when 8  then 'август'
		when 9  then 'сентябрь'
		when 10 then 'октябрь'
		when 11 then 'ноябрь'
		when 12 then 'декабрь'
		else '???????'
		end,
	year(ДатаДоговора) as Год
from Поставлено, Договоры
where Договоры.НомерДоговора = Поставлено.НомерДоговора