--DESC: Description ���̺����� ����
DESC dept;
--select: ���̺� ���� ��ȸ, where ��ȸ����, as(alias)��Ī���� �ʵ���� �� ��
--concat ����Ŭ ���� �Լ��� ����Ʈ �ۼ� ��
SELECT
concat(deptno, ' ��') as "�μ���ȣ"
, dname as "�μ���"
, concat(loc,' ��') as "��ġ"
FROM dept
WHERE loc = 'NEW YORK';
-- DUAL �������̺��̸�. ���̺��� ���� �ֿ��� select �� ��
SELECT 3+5 as "3���ϱ�5��" from dual;
-- ���ڵ�(row) : �÷�(�ʵ�field)��� ����
SELECT concat(COUNT(*),'��') as "������ 2000�� ����" FROM emp WHERE sal > 2000;
-- ū����ǥ(�ʵ��), ��������ǥ(����ó��,��,����)
SELECT * FROM emp WHERE ename != 'KING';
SELECT * FROM emp WHERE hiredate >= '1982/01/01';
-- OR�� +(������), AND�� x(������)
SELECT * FROM emp
WHERE deptno = 10 AND job = 'MANAGER';
SELECT * FROM emp WHERE sal
NOT BETWEEN 2000 AND 3000;
SELECT * FROM emp WHERE hiredate
BETWEEN '1980/01/01' AND '1980.12.31';
SELECT * FROM emp WHERE comm NOT IN (300,500,1400);
-- LIKE ��ȸ, ���ϵ�ī��=% ��ȸ
-- (��)Ű���忡 ��ȣ�� ������ �Լ�upper(),concat(),count()
SELECT * FROM emp WHERE ename LIKE upper('k%');
SELECT * FROM emp WHERE ename LIKE '%N';
-- null '��'�� �߿��� ����: null ���� ������ �˻��� �ȵ�.
-- �׷���, null ���� �ʵ忡 ���� ��, �˻���?
SELECT * FROM emp WHERE comm IS NULL;
-- NVL(Null VaLue) �� ���� ��ġ�ϴ� �Լ�
-- ����߿� Ŀ�̼��� 0�� ���� �����? null ����� ���Ϸ���
SELECT nvl2(comm,100,0), E.* FROM emp E WHERE NVL(comm,0) = 0;
-- NVL2 (�ʵ��,���̾ƴҶ�100,���϶�0), NVL(�ʵ��,���϶�0)
-- ����Ŭ�� ǥ������ �ƴ�, ANSI ������ ǥ����.SELECT nvl2(comm,100,0), E.* FROM emp E WHERE NVL(comm,0) = 0;
SELECT DECODE(comm,null,0,100),NVL2(comm,100,0), E.* FROM emp E WHERE NVL(comm,0) = 0;
-- ������ �������� ���� sort = ���� order by �ʵ�� ��������|��������
-- ��������? (select������ �ߺ��Ǿ��ִ�...)�Դϴ�.
SELECT ROWNUM, E.* FROM (--���̺��
SELECT * FROM emp ORDER BY sal DESC --��������
) E WHERE ROWNUM = 1;
-- �� �������������� �ؼ� �� ���� ���ʺ��� �ؼ�
-- �� ���Ŀ��� 1� ���� limit�� Mysql(������DB)�� ��ɾ�. ����Ŭ���� ����.
-- Mysql(������DB) �ִ� AI(AutoIncrement)�ڵ������� ��� ����ŬX
-- �ߺ� ���ڵ�(row)�� �����ϴ� ��ɾ� distinct
SELECT deptno AS "�μ���ȣ" FROM emp; -- �������� �μ���ȣ�� ���
SELECT DISTINCT deptno AS "�μ���ȣ" FROM emp;
-- (��)���ڿ��� �����Ҷ� concat �Լ��ܿ� || ���������� 2���� ���ļ� ����
SELECT ename ||' is a '|| job AS "���ڿ� ����" FROM emp;
-- ������� select ������
-- ���Ŀ��� CRUD �߿� Insert, Update, Delete 3���� ������ ��