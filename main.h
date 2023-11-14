//
// Created by 25351 on 2023/11/8.
//

#ifndef DLL_MAIN_H
#define DLL_MAIN_H
#include <iostream>
#include <Windows.h>
#include <thread>
#include "msdk.h"
#pragma comment(lib, "msdk.lib")

#include "KeyboardMouse.h"
bool quickClickIsRunning = false;

void QuickClick();

void QuickClickR();

void ShootInstantly();

LRESULT CALLBACK KeyboardProc(int nCode, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK MouseProc(int nCode, WPARAM wParam, LPARAM lParam);
#endif //DLL_MAIN_H
