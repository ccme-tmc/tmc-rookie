# 第二次tutorial提纲

## 目标

作状态方程曲线并用`py_eos.py`, 用`py_dos.py`作态密度(DOS)和投影态密度(pDOS)图.

介绍TMCKit.

## 准备

- 工作站准备 [@wsds000](https://github.com/wsds000) [@minyez](https://github.com/minyez)
  - [x] 根目录下VASP和XmGrace可执行程序
  - [x] Tutorial公共账户
  - [ ] EOS拟合脚本
  - [x] TMCKit
- 找一些介绍EOS, DOS, pDOS和XmGrace的材料, 供提前学习用. 外部链接或者书页引用即可. [@xuxi0910796](https://github.com/xuxi0910796)
  - [ ] EOS
  - [x] DOS and pDOS
  - [x] XmGrace
- Equation-of-state计算文件准备
  - [ ] INCAR, KPOINTS
  - [ ] Bash scripts to run VASP at different lattice constants
- DOS计算文件准备: 两步流程
  - [x] 配套的INCAR和KPOINTS

## 体系

EOS: Si

DOS: NaCl, GaN, SiO2

## 讲义具体步骤

1. 作状态方程曲线 [@wsds000](https://github.com/wsds000)
    - 阅读并运行脚本
    - 提取体积和能量数据到文本
    - XmGrace作图
    - 用`py_eos.py`, Birch-Murnaghan EOS拟合
2. 态密度计算 [@xuxi0910796](https://github.com/xuxi0910796)
    - DOS定义
    - 本征值输出
    - 两步计算流程
      - [ ] rationalize why a two-step procedure is required
      - [ ] 指出两步流程INCAR和KPOINTS之间的区别
    - 计算结果提取: DOSCAR, vasprun.xml
    - 用`py_dos.py`制作DOS和pDOS图
      - 自助使用`--help`
      - 直接运行`py_dos.py`: `band.gap`, `plotdos.agr`
      - 加入必须选项, 作pDOS
