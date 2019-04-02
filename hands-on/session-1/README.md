# 第一次tutorial提纲

## 准备

- 把POSCAR, INCAR, KPOINTS准备好
- ~~收集课题组电脑IP~~

## 目标

在~~自己的~~计算机上运行一次VASP结构优化计算, 并做简单的结果分析.

## 体系

Si, SiC

## 具体步骤

1. SSH到课题组电脑PC/超算公共账号.
    - 邮件发送VASP计算需要的POSCAR, INCAR, KPOINTS
    - 推荐Windows上的SSH客户端: MobaTerm
    - 从本地上传文件到PC里
2. 查看和编辑文件
    - `Vim`修改INCAR
    - `VESTA`软件查看POSCAR对应的结构
3. Linux基础: 创建执行目录
    - 新建文件夹: `mkdir`
    - 显示文件夹和文件内容: `ls`, `cat`
    - 移动所有文件到该文件夹目录下: `mv`
    - 添加POTCAR: `cp`
4. 运行VASP: Linux下运行程序的机制
    - `.bashrc`和环境变量`PATH`
    - `mpirun`命令
5. VASP输入文件介绍
    - POSCAR. 如何获得? 数据库MaterialsProject, AFLOW, ICSD
    - KPOINTS. 含义
    - INCAR (?)
    - POTCAR. ENMAX, ENMIN, LEXCH和ZVAL
6. 结果分析
    - `VESTA`查看优化结构(如果是Si的话, 仅仅是优化晶格常数)
    - `p4v`
