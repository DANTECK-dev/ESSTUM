use db_icv1
create table Поставщики (КодПоставщика int primary key,
	Адрес text not null,
	Примечание text
)
create table ФизическиеЛица (КодПоставщика int primary key,
	Фамилия char(20) not null,
	Имя char(20) not null,
	Отчество char(20) not null,
	НомерСвидетельства char(10),
	foreign key (КодПоставщика ) references Поставщики (КодПоставщика)
)
create table ЮридическиеЛица (КодПоставщика int primary key,
	Название char(20) not null,
	НалоговыйНомер char(20),
	НомерСвидетельства char(10)
	foreign key (КодПоставщика) references Поставщики (КодПоставщика)
)
create table Договоры (НомерДоговора int identity (1,1) primary key,
	ДатаДоговора datetime,
	КодПоставщика int not null,
	Комментарий text
	foreign key (КодПоставщика) references Поставщики (КодПоставщика)
)
create table Поставлено (НомерДоговора int,
	Товар char(20),
	Количество decimal(4,0) not null check (Количество>0),
	Цена decimal(8,2) not null check (Цена>0)
	foreign key (НомерДоговора) references Договоры (НомерДоговора)
	primary key (НомерДоговора, Товар)
)