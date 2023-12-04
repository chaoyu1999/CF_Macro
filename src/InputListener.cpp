# include "../include/InputListener.h"

HHOOK InputListener::hMouseHook = SetWindowsHookEx(WH_MOUSE_LL, mouseProc, nullptr, 0);; // 鼠标钩子句柄
HHOOK InputListener::hKeyboardHook = SetWindowsHookEx(WH_KEYBOARD_LL, keyboardProc, nullptr, 0);; // 键盘钩子句柄
KeyState InputListener::keyState = None; // 按键状态
KeyboardMouse *InputListener::km = KeyboardMouse::GetInstance(); // 键鼠模拟器


void InputListener::StartListening() {
    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
}

InputListener::~InputListener() {
    UnhookWindowsHookEx(hKeyboardHook);
    UnhookWindowsHookEx(hMouseHook);
}

/**
 * @brief 键盘钩子回调函数
 *
 * @param nCode 事件代码，表示事件发生的类型，例如按键按下或释放
 * @param wParam 按键消息，表示按键的消息类型，例如WM_KEYDOWN（按键按下）或WM_KEYUP（按键释放）
 * @param lParam 消息参数，包含有关按键的其他信息，例如按下的键的虚拟键码
 * @return LRESULT 返回0表示事件已处理，非0表示事件未处理
 */
LRESULT InputListener::keyboardProc(int nCode, WPARAM wParam, LPARAM lParam) {
    // 武器状态切换
    switchWeaponState(nCode, wParam, lParam);
    // 键鼠事件模拟
    simulateWeaponAttack(nCode, wParam, lParam);
    return CallNextHookEx(nullptr, nCode, wParam, lParam);
}

/**
 * @brief 鼠标钩子处理函数
 *
 * @param nCode 钩子代码，指示钩子链中的钩子过程是否应该处理消息
 *              例如，如果 nCode 是 HC_ACTION (0)，表示钩子过程应该处理消息；如果 nCode 是其他值，表示钩子过程不需要处理消息。
 * @param wParam 指定额外消息信息，通常用于指定消息的类型
 *              例如，如果 wParam 是 WM_LBUTTONDOWN (0x0201)，表示左键按下消息；如果 wParam 是 WM_MOUSEMOVE (0x0200)，表示鼠标移动消息。
 * @param lParam 指定额外消息信息，通常用于指定消息的附加信息
 *              例如，如果 lParam 包含鼠标的坐标信息，可以通过解析 lParam 获取鼠标的坐标位置。
 * @return LRESULT 返回下一个钩子过程的返回值，通常用于指示是否需要传递消息给下一个钩子过程
 */
LRESULT InputListener::mouseProc(int nCode, WPARAM wParam, LPARAM lParam) {
    // 键鼠事件模拟
    simulateWeaponAttack(nCode, wParam, lParam);
    return CallNextHookEx(nullptr, nCode, wParam, lParam);
}



/**
 * @brief 武器状态切换
 *
 * @param nCode 事件代码，表示事件发生的类型，例如按键按下或释放
 * @param wParam 按键消息，表示按键的消息类型，例如WM_KEYDOWN（按键按下）或WM_KEYUP（按键释放）
 * @param lParam 消息参数，包含有关按键的其他信息，例如按下的键的虚拟键码
 */
void InputListener::switchWeaponState(int nCode, WPARAM wParam, LPARAM lParam) {
    if (nCode == HC_ACTION) {
        // 获取按键键码
        auto *kbdStruct = (KBDLLHOOKSTRUCT *) lParam;
        DWORD vkCode = kbdStruct->vkCode;
        // 检查按键按下事件
        if (wParam == WM_KEYDOWN || wParam == WM_SYSKEYDOWN) {
            if (vkCode == 'B' && keyState != B_Pressed) { // 检查是否是 B 键
                keyState = B_Pressed;
            }
            if (vkCode == '1' && keyState == B_Pressed) { // 检查是否是数字键1
                keyState = One_Pressed;
            }
            if (vkCode == '2' && keyState == B_Pressed) {
                keyState = Two_Pressed;
            }
        }
    }
}

void InputListener::simulateWeaponAttack(int nCode, WPARAM wParam, LPARAM lParam) {
    if (nCode == HC_ACTION) {
        // 获取按键键码
        auto *kbdStruct = (KBDLLHOOKSTRUCT *) lParam;
        DWORD vkCode = kbdStruct->vkCode;
        // 检查按键按下事件
        if (wParam == WM_KEYDOWN || wParam == WM_SYSKEYDOWN) {
            // 如果keyState == One_Pressed，且按下的键是'F5'
            if (keyState == One_Pressed && vkCode == VK_F5) {
                // 炼狱速点
                std::cout << "炼狱速点" << std::endl;
                km->QuickClick();
            }
        }

        // 检查鼠标释放事件
        if (wParam == WM_RBUTTONUP) {
            // 如果keyState == Two_Pressed
            if (keyState == Two_Pressed) {
                // 瞬狙
                std::cout << "瞬狙" << std::endl;
                km->ShootInstantly();
            }
        }
    }
}


