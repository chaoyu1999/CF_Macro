#ifndef MSDK_THREADPOOL_H
#define MSDK_THREADPOOL_H

#include <cstddef>
#include <vector>
#include <queue>
#include <functional>
#include <thread>
#include <mutex>
#include <condition_variable>

class ThreadPool {
public:
    // 构造函数，创建线程池
    explicit ThreadPool(size_t threads);

    // 将任务加入队列
    template<class F> void enqueue(F &&f){
        {
            std::unique_lock<std::mutex> lock(queue_mutex);
            // 如果线程池已停止，则抛出异常
            if (stop)
                throw std::runtime_error("enqueue on stopped ThreadPool");
            tasks.emplace(std::forward<F>(f)); // 将任务加入队列
        }
        condition.notify_one(); // 通知一个线程执行任务
    }

    // 析构函数，销毁线程池
    ~ThreadPool();

private:
    std::vector<std::thread> workers; // 线程容器
    std::queue<std::function<void()>> tasks; // 任务队列
    std::mutex queue_mutex; // 互斥锁
    std::condition_variable condition; // 条件变量
    bool stop; // 停止标志
};

#endif //MSDK_THREADPOOL_H
