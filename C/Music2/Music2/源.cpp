#include <graphics.h>
#include <conio.h>
#include <stdio.h>
// ���� Windows Multimedia API
#pragma comment(lib,"Winmm.lib")

int main()
{
	initgraph(800, 600);
	MOUSEMSG m;
	while (1)
	{
		m = GetMouseMsg();
		switch (m.uMsg)
		{
		case WM_LBUTTONDOWN:
		{
			// ������
			mciSendString("open 1.mp3 alias mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "���������ʼ����");
			_getch();
			// ��������
			mciSendString("play mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "�������ֹͣ����");
			_getch();
			// ֹͣ���Ų��ر�����
			mciSendString("stop mymusic", NULL, 0, NULL);
			mciSendString("close mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "��������˳�����");
			_getch();
		}
		default:
		{
			char s[12];
			setfillcolor(BLACK);//��ɫ���θ����ϴ������¼
			solidrectangle(0, 0, 75, 20);
			sprintf_s(s, "[%d,%d]", m.x, m.y);
			outtextxy(0, 0, s);
		}
		}
	}
	closegraph();
	return 0;
}