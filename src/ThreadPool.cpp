#include "../include/ThreadPool.h"

ThreadPool::ThreadPool(size_t threads) : stop(false) {
    // 创建指定数量的线程
    for (size_t i = 0; i < threads; ++i) {
        workers.emplace_back([this] {
            // 线程循环执行任务
            while (true) {
                std::function<void()> task;
                {
                    std::unique_lock<std::mutex> lock(this->queue_mutex);
                    // 等待条件变量满足
                    this->condition.wait(lock, [this] {
                        return this->stop || !this->tasks.empty();
                    });
                    // 如果线程池停止且任务队列为空，则线程退出
                    if (this->stop && this->tasks.empty())
                        return;
                    task = std::move(this->tasks.front());
                    this->tasks.pop();
                }
                task(); // 执行任务
            }
        });
    }
}

ThreadPool::~ThreadPool() {
    {
        std::unique_lock<std::mutex> lock(queue_mutex);
        stop = true; // 设置停止标志
    }
    condition.notify_all(); // 通知所有线程
    for (std::thread &worker: workers)
        worker.join(); // 等待所有线程结束
}
