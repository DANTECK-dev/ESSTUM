use db_icv1
create table ���������� (������������� int primary key,
	����� text not null,
	���������� text
)
create table �������������� (������������� int primary key,
	������� char(20) not null,
	��� char(20) not null,
	�������� char(20) not null,
	������������������ char(10),
	foreign key (������������� ) references ���������� (�������������)
)
create table ��������������� (������������� int primary key,
	�������� char(20) not null,
	�������������� char(20),
	������������������ char(10)
	foreign key (�������������) references ���������� (�������������)
)
create table �������� (������������� int identity (1,1) primary key,
	������������ datetime,
	������������� int not null,
	����������� text
	foreign key (�������������) references ���������� (�������������)
)
create table ���������� (������������� int,
	����� char(20),
	���������� decimal(4,0) not null check (����������>0),
	���� decimal(8,2) not null check (����>0)
	foreign key (�������������) references �������� (�������������)
	primary key (�������������, �����)
)