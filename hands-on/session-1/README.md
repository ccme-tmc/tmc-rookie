# 第一次tutorial提纲

## 准备

- [x] 准备POSCAR, INCAR, KPOINTS [@minyez](https://github.com/minyez)
- [ ] 请PKU同学申请未名教学一号[账户](http://hpc.pku.edu.cn/apply_edu_login.html)
- [x] 对应的超算执行脚本`sc_run_vasp.sh`
- [x] 安装一台组内PC供非PKU同学使用
  - [x] Clonezilla拷贝系统 [@minyez](https://github.com/minyez)
  - [x] VESTA [@minyez](https://github.com/minyez)
  - [x] 确认IP: 222.29.156.125
  - [x] 拷贝VASP并确认能运行 [@xuxi0910796](https://github.com/xuxi0910796)

## 目标

在本地机器或超算上运行一次VASP结构优化计算, 并做简单的结果分析.

## 体系

Si, SiC

## 讲义具体步骤

讲义内容按照下面几个部分来写, 格式不限, 最后统一起来转成pdf就可以. [@minyez](https://github.com/minyez)

1. SSH到课题组电脑PC/超算账号 [@wsds000](https://github.com/wsds000)
    - 推荐Windows上的SSH客户端: MobaTerm, 对X11转发有良好兼容
      - 远程登录
      - 上传文件
    - 给GitHub网址, 下载POSCAR, INCAR, KPOINTS. 考虑到版权, POTCAR用邮件发送
    - 上传所有文件
2. 查看和编辑文件 @luandong
    - `Vim`修改INCAR, 开启几何结构优化对应的tags
3. Linux基础: 创建执行目录 [@minyez](https://github.com/minyez)
    - 新建文件夹: `mkdir`
    - 显示文件夹和文件内容: `ls`, `cat`
    - 移动所有文件到该文件夹目录下: `mv`
    - 添加POTCAR: `cp`
4. 运行VASP: Linux下运行程序的机制 [@minyez](https://github.com/minyez)
    - `.bashrc`和环境变量`PATH`
    - `mpirun`命令
    - 超算任务提交
5. VASP输入文件介绍 [@xuxi0910796](https://github.com/xuxi0910796)
    - POSCAR. 结构如何获得? 数据库MaterialsProject, AFLOW, ICSD. [该文档](retrieve_poscar.md)可做参考
    - `VESTA`软件查看POSCAR对应的结构(组内PC限定)
    - KPOINTS
    - INCAR tags
    - POTCAR. ENMAX, ENMIN, LEXCH和ZVAL
6. 结果分析 @luandong
    - `VESTA`查看CONTCAR优化结构(如果是Si的话, 仅仅是优化晶格常数)
    - 能量变化
