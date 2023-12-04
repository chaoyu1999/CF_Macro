#include "../include/KeyboardMouse.h"

KeyboardMouse::KeyboardMouse(): isQuickClicking(false), mtx(), m_hdl(M_Open(1)) {
    if (m_hdl == INVALID_HANDLE_VALUE) {
        MessageBox(nullptr, "An error occurred in KeyboardMouse::KeyboardMouse().", "Error", MB_OK | MB_ICONERROR);
    }
}

KeyboardMouse *KeyboardMouse::GetInstance() {
    static KeyboardMouse instance;
    return &instance;
}

KeyboardMouse::~KeyboardMouse() {
    M_Close(m_hdl);
}

int KeyboardMouse::QuickClick() {
    std::lock_guard<std::mutex> lock(mtx); // 在函数开始时加锁，在函数结束时自动解锁
    //按下鼠标左键
    M_LeftDown(m_hdl);
    //等待一个随机的时间，范围在100到170之间
    M_DelayRandom(90, 130);
    //释放鼠标左键
    M_LeftUp(m_hdl);
    //等待一个随机的时间，范围在10到30之间
    M_DelayRandom(10, 20);
    return 0;
}


int KeyboardMouse::ShootInstantly() {
    // 开枪
    //按下鼠标左键
    M_LeftDown(m_hdl);
    //等待一个随机的时间，范围在10到20之间
    M_DelayRandom(10, 20);
    //释放鼠标左键
    M_LeftUp(m_hdl);

    // 换刀
    //按下q键
    M_KeyDown(m_hdl, 32);
    //等待一个随机的时间，范围在9到14之间
    M_DelayRandom(10, 20);
    //释放q键
    M_KeyUp(m_hdl, 32);

    //等待一个随机的时间，范围在120到130之间
    M_DelayRandom(100, 130);

    // 换枪
    //按下q键
    M_KeyDown(m_hdl, 30);
    //等待一个随机的时间，范围在9到14之间
    M_DelayRandom(9, 25);
    //释放q键
    M_KeyUp(m_hdl, 30);
    return 0;
}

bool KeyboardMouse::getIsQuickClicking() const {
    return isQuickClicking;
}

void KeyboardMouse::setIsQuickClicking(bool f) {
    this->isQuickClicking = f;
}
