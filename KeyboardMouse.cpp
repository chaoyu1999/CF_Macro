#include "KeyboardMouse.h"

KeyboardMouse::KeyboardMouse() {
    std::cout << "KeyboardMouse init" << std::endl;
    m_hdl = M_Open(1);

}

KeyboardMouse::~KeyboardMouse() {
    std::cout << "~KeyboardMouse() destroy" << std::endl;
    M_Close(m_hdl);
}

int KeyboardMouse::QuickClick() {
    //按下鼠标左键
    M_LeftDown(m_hdl);
    //等待一个随机的时间，范围在100到170之间
    M_DelayRandom(100, 150);
    //释放鼠标左键
    M_LeftUp(m_hdl);
    //等待一个随机的时间，范围在10到30之间
    M_DelayRandom(10, 20);
    return 0;
}

KeyboardMouse *KeyboardMouse::GetInstance() {
    static KeyboardMouse instance;
    return &instance;
}

int KeyboardMouse::ShootInstantly() {
    // 开枪
    //按下鼠标左键
    M_LeftDown(m_hdl);
    //等待一个随机的时间，范围在10到20之间
    M_DelayRandom(20, 50);
    //释放鼠标左键
    M_LeftUp(m_hdl);

    // 换刀
    //按下q键
    M_KeyDown(m_hdl, 32);
    //等待一个随机的时间，范围在9到14之间
    M_DelayRandom(30, 50);
    //释放q键
    M_KeyUp(m_hdl, 32);

    //等待一个随机的时间，范围在120到130之间
    M_DelayRandom(130, 150);

    // 换枪
    //按下q键
    M_KeyDown(m_hdl, 30);
    //等待一个随机的时间，范围在9到14之间
    M_DelayRandom(20, 50);
    //释放q键
    M_KeyUp(m_hdl, 30);
    return 0;
}

int KeyboardMouse::QuickClickR() {
//    std::cout << "QuickClickR" << std::endl;
    //按下鼠标左键
    M_RightDown(m_hdl);
    //等待一个随机的时间，范围在100到170之间
    M_DelayRandom(20, 50);
    //释放鼠标左键
    M_RightUp(m_hdl);
    //等待一个随机的时间，范围在10到30之间
    M_DelayRandom(10, 20);
    return 0;
}
