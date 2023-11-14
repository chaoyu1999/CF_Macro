//
// Created by 25351 on 2023/11/8.
//

#ifndef DLL_KEYBOARDMOUSE_H
#define DLL_KEYBOARDMOUSE_H

#include "msdk.h"
#pragma comment(lib, "msdk.lib")

#include <iostream>

class KeyboardMouse {
private:
    HANDLE m_hdl;  // 打开键鼠
    KeyboardMouse();
public:
    static KeyboardMouse* GetInstance();
    ~KeyboardMouse();
    int QuickClick();
    int ShootInstantly();
    int QuickClickR();
};


#endif //DLL_KEYBOARDMOUSE_H
