@echo off
color 0a

echo ========================== start server ==========================
D:
cd D:\Codes\JavaFX\bookmarks\build\dist
java -jar bookmarks.jar
pause

cd D:\Codes\JavaFX\bookmarks

echo == ���ݵ�ǰʱ����������ļ����޸�GIT�޷�ʶ��db�ĸ������� == 
set dt=%date%%time%
echo %dt% > random.txt

git status
git add .
git commit -m "update db"
git push origin master
echo ========================== stop ==========================
pause
