---
title: 从头开始用VASP做结构优化
author:
  - 张旻烨
  - 王越超
  - 许熙
  - 栾东
theme: simple
CJKmainfont: Songti SC
mainfont: Times New Roman
toc: true
colorlinks: true
urlcolor: Blue
# header-includes:
#   - \usepackage{fvextra}
#   - \DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines,commandchars=\\\{\}}
---

# 登入Linux

# 编辑文件

Vim

# VASP输入文件解读

## POSCAR: 晶体结构文件

## 获取晶体结构 {.allowframebreaks}

[Inorganic Crystal Structure Database](https://icsd.fiz-karlsruhe.de/): 实验结构

![ICSD搜索页面](figures/icsd_search.jpg){ width=70% }

\framebreak

[AFLOW](http://aflowlib.org/): Duke材料基因组学数据库

![AFLOW搜索页面](figures/aflow_search.jpg){ width=60% }

\framebreak

[Materials Project](https://materialsproject.org/): 基于`pymatgen`的材料基因组学数据库

![MaterialsProject搜索页面](figures/mp_search.jpg){ width=80% }

# 执行VASP计算

## 创建运算目录

- 教学一号

    ```bash
    $ ls
    POSCAR POTCAR INCAR KPOINTS sc_run_vasp.sh
    $ mkdir session-1/
    $ cp POSCAR POTCAR INCAR KPOINTS session-1/
    $ cp sc_run_vasp.sh session-1/
    $ cd session-1/
    ```

- TMC PC

    ```bash
    $ ls
    Documents Downloads tests ...
    $ mkdir -p tests/YOUR_NAME
    $ cp POSCAR POTCAR INCAR KPOINTS tests/YOUR_NAME
    $ cd tests/YOUR_NAME
    ```

## 运行VASP {.allowframebreaks}

确认`vasp`可执行程序的位置: `which`

- 教学一号

    ```bash
    $ which vasp_std
    $ module load vasp/5.4.4-intel18.0
    $ which vasp_std
    /nfs-share/software/vasp/intel18.0/bin/vasp_std
    ```

- TMC PC

    ```bash
    $ which vasp_std
    /home/dft003/software/vasp.5.4.4/bin/vasp_std
    ```

\framebreak

为什么第一次`which`的结果不同?

在教学一号上

```bash
$ echo $PATH
/nfs-share/software/vasp/intel18.0/bin/:
/nfs-share/software/module/bin:/usr/local/bin:/usr/bin:
...
```

\framebreak

```bash
$ cat sc_run_vasp.sh
#!/usr/bin/env bash              # 解释器
#SBATCH -A 150xxxxxxx            # 学号
#SBATCH --nodes=1                # 使用一个节点
#SBATCH -c 2                     # 每个任务用2个核心
#SBATCH --partition=compute      # 指定计算分区
#SBATCH -J test                  # 任务名
#SBATCH -o stdout

module load intel/2018.0         # 载入Intel编译器环境变量
module load vasp/5.4.4-intel18.0 # 载入VASP环境变量 (PATH)

mpirun -np 2 vasp_std            # 运行
```

\framebreak

- 教学一号

    ```bash
    $ sbatch sc_run_vasp.sh
    Submitted batch job xxxx
    $ watch -n 1 cat stdout
    ```

- TMC PC

    ```bash
    $ mpirun -np 2 vasp_std > out &
    $ watch -n 1 cat out
    ```

# 解读结构优化过程
