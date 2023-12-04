//
// Created by 25351 on 2023/11/8.
//

#ifndef DLL_KEYBOARDMOUSE_H
#define DLL_KEYBOARDMOUSE_H

#include "msdk.h"
#include <iostream>
#include <mutex>

/*
 * 键盘鼠标类
 * 用于模拟键盘鼠标操作，实现炼狱速点、瞬狙等逻辑功能
 * */
class KeyboardMouse {
private:
    HANDLE m_hdl;  //键鼠句柄
    bool isQuickClicking; //是否正在炼狱速点
    std::mutex mtx; // 用于同步的互斥锁
private:
    KeyboardMouse(); //构造函数私有化

public:
    static KeyboardMouse *GetInstance(); //单例模式
    bool getIsQuickClicking() const; //获取是否正在炼狱速点
    void setIsQuickClicking(bool isQuickClicking); //设置是否正在炼狱速点
    ~KeyboardMouse(); //析构函数

    int QuickClick(); //炼狱速点

    int ShootInstantly(); //瞬狙
};


#endif //DLL_KEYBOARDMOUSE_H
