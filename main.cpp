//
// Created by 25351 on 2023/11/8.
//
#include "main.h"
#include <future>

KeyboardMouse *km = KeyboardMouse::GetInstance();
std::mutex mLock;



int main() {
    // 设置鼠标钩子
    HINSTANCE hInstance = GetModuleHandle(NULL);
    HHOOK hMouseHook = SetWindowsHookEx(WH_MOUSE_LL, MouseProc, hInstance, 0);


    //设置键盘钩子
    HHOOK hHook = SetWindowsHookEx(WH_KEYBOARD_LL, KeyboardProc, nullptr, 0);

    // 消息循环
    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

    // 卸载键盘钩子
    UnhookWindowsHookEx(hHook);
    UnhookWindowsHookEx(hMouseHook);
    return 0;
}


// 键盘事件回调函数
LRESULT CALLBACK KeyboardProc(int nCode, WPARAM wParam, LPARAM lParam) {
    if (nCode == HC_ACTION) {
        auto *p = (KBDLLHOOKSTRUCT *) lParam;
        if (wParam == WM_KEYDOWN) {
            // 判断是否按下Ctrl键和数字键1
            //(GetAsyncKeyState(VK_CONTROL) & 0x8000) &&
            // CTRL+D
            if (p->vkCode == VK_F5) {
                std::cout << "F5" << std::endl;
                QuickClick();
            }
        }
    }

    return CallNextHookEx(nullptr, nCode, wParam, lParam);
}


// 鼠标事件回调函数
LRESULT CALLBACK MouseProc(int nCode, WPARAM wParam, LPARAM lParam) {
    if (nCode >= 0 && wParam == WM_MBUTTONDOWN) {
        // 处理鼠标右键松开事件
//        QuickClick();
        QuickClickR();
        //ShootInstantly();
    }
    if (nCode >= 0 && wParam == WM_RBUTTONUP) {
        ShootInstantly();
    }
        return CallNextHookEx(NULL, nCode, wParam, lParam);
}


void QuickClickR() {  //炼狱速点
    if (!quickClickIsRunning) {
        quickClickIsRunning = true;
        std::thread th([]() {
            while (quickClickIsRunning) {

                km->QuickClickR();
            }
        });
        th.detach();
    } else {
        quickClickIsRunning = false;
    }
}


void QuickClick() {  //炼狱速点
    if (!quickClickIsRunning) {
        std::cout << "QuickClick" << std::endl;

        quickClickIsRunning = true;
        std::thread th([]() {
            while (quickClickIsRunning) {
                km->QuickClick();
            }
        });
        th.detach();
    } else {
        quickClickIsRunning = false;
    }
}

void ShootInstantly() { // 瞬狙

    std::time_t result = std::time(nullptr);
    std::thread th([]() {
        km->ShootInstantly();
    });
    th.detach();
}






