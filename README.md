# Basic Info
This is the project assignment of the the course Computer Organization and Architecture, HUST. An rudimentary implementation of handwritten-number recognition, with computing component on FPGA and interactive component on PC, is the main target(see more details below). Aimed high, further improvements and functional extensions are scheduled on our to-do list(but may be simply 'to-do', forever :) ).

本项目是华中科技大学计算机组成原理课程的课程设计项目. 项目目标为实现一个简易的手写数字识别工具, 其中FPGA负责运算, PC负责完成交互. 更进一步的完善个功能拓展已在计划中(嘿嘿).

# Schedule

- 项目基本目标:
  - 总体概括:
    - 用verilog语言在FPGA上实现一个现代RISC-V处理器, 至少支持浮点运算和SIMD技术; 在PC上训练完成手写数字识别模型, 编译适配RISC-V处理器, 再移植到FPGA上;
  - 详细分项
    - 用Verilog实现流水线上FPGA(约8h-12h)
    - 用Verilog实现流水线中断处理, 以便于支持数据上传下载(约4h-8h)
    - 用Verilog实现浮点运算支持(约4h-8h)
    - 用Verilog实现SIMD技术支持(约8h–16h)
    - 基于MINST数据集, 在PC端训练手写数字识别模型(约8h-24h)
    - 编写程序支持FPGA的数据上传下载程序, 用于输入手写数字图像和回传识别结果(约8h-16h)
    - 编写程序支持模型的浮点运算流程(约4h-8h)
    - 编写程序支持将图形化界面显示(约12h-24h)
    - 如果上述程序是基于Python或CPP的, 还需要将其转换为可以运行的RISC-V汇编程序, 调整地址编码(约8h-16h)
    - 整体流程验收(约4h-8h)
  - 所需知识(不用全部掌握, 1-2项即可)
    - Verilog语言 (用于设计相关部件)
    - 简易机器学习 (用于训练模型)
    - CPP / JAVA / Python (用于编写图形化程序)
    - 算法 (用于优化程序)
    - 汇编语言 / 编译知识 (用于将程序移植到FPGA上)
  - 用时评估
    - 因为项目的各分项任务可并行开发, 所以总体周期用时不长, 约2周; 总共实际投入用时估算为72h-120h, 人均实际总投入用时约为18h-32h(视任务分配而异)
  - 预估成果
    - 该阶段成果完全可以用于申请一个院系级的大创项目, 作为项目经历的一部分
- 项目拓展目标(视情况和具体难度调整):
  - 项目功能的进阶拓展:
    - 利用FPGA的以太网接口, 将接口打通到网络(约8h-16h)
    - 用Verilog实现指令级多流水线并行(多发射技术)(约16h-24h)
    - 用Verilog实现指令级乱序执行技术(约16h-24h)
    - 支持多核并行和片内调度(该项复杂度较大, 需要软硬件协同, 用时难以评估)
    - 将手写数字识别功能拓展为验证码自动识别系统, 支持多数字同时识别和字母识别;(尚未评估)
    - 优化流水线运行速度, 达到MHz水平(尚未评估)
  - 用时评估
    - 项目部分内容难度较高, 难以评估.(感觉有点儿近似于画大饼)
  - 预估成果
    - 该阶段成果可以用于参加竞赛(计算机体系结构方向竞赛, 如龙芯杯等), 申请省级大创项目, 作为计算机体系结构方向的亮点项目;
