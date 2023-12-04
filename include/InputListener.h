#ifndef MSDK_INPUTLISTENER_H
#define MSDK_INPUTLISTENER_H

#include <iostream>
#include <Windows.h>
#include <thread>
# include "KeyboardMouse.h"
# include "ThreadPool.h"
enum KeyState {
    None,       // 无按键按下
    B_Pressed,  // 'B'键被按下
    PurgatoryGatling, // 数字键1被按下，则是炼狱
    SniperRifle, // 数字键2被按下，则是狙
};

class InputListener {
private:
    static HHOOK hMouseHook; // 鼠标钩子句柄
    static HHOOK hKeyboardHook; // 键盘钩子句柄
    static KeyState keyState; // 按键状态
    static KeyboardMouse *km; // 键鼠模拟器
    static ThreadPool pool; // 创建线程池，假设我们想要4个工作线程
private:
    InputListener() = default; // 构造函数私有化
    static LRESULT CALLBACK keyboardProc(int nCode, WPARAM wParam, LPARAM lParam); // 键盘钩子回调函数
    static LRESULT CALLBACK mouseProc(int nCode, WPARAM wParam, LPARAM lParam); // 鼠标钩子回调函数
    static void switchWeaponState(int nCode, WPARAM wParam, LPARAM lParam); // 武器状态切换
    static void simulateWeaponAttack(int nCode, WPARAM wParam, LPARAM lParam);

public:
    static void StartListening(); // 开始监听键鼠事件
    ~InputListener(); // 析构函数
};

#endif //MSDK_INPUTLISTENER_H
