#include <graphics.h>
#include <conio.h>
// ���� Windows Multimedia API
#pragma comment(lib,"Winmm.lib")

void main()
{
	initgraph(200, 100);

	// ������
	mciSendString("open 1.mp3 alias mymusic", NULL, 0, NULL);

	outtextxy(10, 10, "���������ʼ����");
	_getch();

	// ��������
	mciSendString("play mymusic", NULL, 0, NULL);

	outtextxy(10, 10, "�������ֹͣ����");
	_getch();

	// ֹͣ���Ų��ر�����
	mciSendString("stop mymusic", NULL, 0, NULL);
	mciSendString("close mymusic", NULL, 0, NULL);

	outtextxy(10, 10, "��������˳�����");
	_getch();
	closegraph();
}