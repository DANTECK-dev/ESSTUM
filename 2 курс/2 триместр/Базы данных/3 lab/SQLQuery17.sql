use db_icv
select �����, count(�����) as ���������������
from ����������
	group by �����
	having count(�����) > 1
	order by count(�����) desc