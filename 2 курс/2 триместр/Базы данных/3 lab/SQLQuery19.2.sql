use db_icv
select ����������.�������������, ����������.�����,
	����������.����������, ����������.����,
	��������.������������,
	����� = case month(������������)
		when 1  then '������'
		when 2  then '�������'
		when 3  then '����'
		when 4  then '������'
		when 5  then '���'
		when 6  then '����'
		when 7  then '����'
		when 8  then '������'
		when 9  then '��������'
		when 10 then '�������'
		when 11 then '������'
		when 12 then '�������'
		else '???????'
		end,
	year(������������) as ���
from ����������, ��������
where ��������.������������� = ����������.�������������