#include "include/main.h"

int main() {
    SetConsoleOutputCP(CP_UTF8); // 设置控制台输出编码为UTF-8
    InputListener::StartListening(); // 开始监听键鼠事件
    return 0;
}