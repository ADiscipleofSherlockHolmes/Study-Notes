#include <graphics.h>
#include <conio.h>
#include <stdio.h>
// 引用 Windows Multimedia API
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
			// 打开音乐
			mciSendString("open 1.mp3 alias mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "按任意键开始播放");
			_getch();
			// 播放音乐
			mciSendString("play mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "按任意键停止播放");
			_getch();
			// 停止播放并关闭音乐
			mciSendString("stop mymusic", NULL, 0, NULL);
			mciSendString("close mymusic", NULL, 0, NULL);
			outtextxy(100, 100, "按任意键退出程序");
			_getch();
		}
		default:
		{
			char s[12];
			setfillcolor(BLACK);//黑色矩形覆盖上次坐标记录
			solidrectangle(0, 0, 75, 20);
			sprintf_s(s, "[%d,%d]", m.x, m.y);
			outtextxy(0, 0, s);
		}
		}
	}
	closegraph();
	return 0;
}