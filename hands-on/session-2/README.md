# 第二次tutorial提纲

## 目标

作状态方程曲线, 用`py_dos.py`作态密度(DOS)和投影态密度(pDOS)图.

## 准备

- 工作站准备 [@wsds000](https://github.com/wsds000) [@minyez](https://github.com/minyez)
  - [ ] 根目录下VASP和XmGrace可执行程序
  - [ ] Tutorial公共账户
  - [ ] EOS拟合脚本
  - [ ] TMCKit
- 找一些介绍EOS, DOS, pDOS和XmGrace的材料, 供提前学习用. 外部链接, 书页引用均可. [@xuxi0910796](https://github.com/xuxi0910796) [@MSJavaScript](https://github.com/MSJavaScript)
  - [ ] EOS
  - [ ] DOS and pDOS
  - [ ] XmGrace
- Equation-of-state计算文件准备
  - [ ] INCAR, KPOINTS
  - [ ] Bash scripts to run VASP at different lattice constants
- DOS计算文件准备: 两步流程
  - [ ] 配套的INCAR和KPOINTS

## 体系

两组分半导体, 方便比较价带和导带的轨道成分. 下面当中选一个

| 体系           | 特点                                             |
| :------------- | :----------------------------------------------- |
| Zincblende GaN | sp半导体, 常见于方法测试                         |
| Anatase TiO2   | 有内坐标                                         |
| Zincblende CuI | 刚写完论文, 轨道成分印象新鲜 XD                  |
| Rocksalt TiC   | WIEN2k标准例子, see quick start in WIEN2k manual |

## 讲义具体步骤

1. 作状态方程曲线
    - 阅读并运行脚本
    - 提取体积和能量数据到文本
    - XmGrace作图, 并用Birch-Murnaghan EOS拟合 [@wsds000](https://github.com/wsds000)
2. 态密度计算
    - DOS定义
    - 本征值输出
    - 两步计算流程
      - [ ] rationalize why two-step procedure is required
      - [ ] 指出两步流程INCAR和KPOINTS之间的区别
    - 计算结果提取: DOSCAR, vasprun.xml
    - 用`py_dos.py`制作DOS和pDOS图
      - 自助使用`--help`
      - 直接运行`py_dos.py`: `band.gap`, `plotdos.agr`
      - 加入必须选项, 作pDOS
