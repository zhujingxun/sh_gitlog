#!/bin/bash
echo ""
echo "🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡"
echo "🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴"
echo "🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢"
echo "🔴                                                              🟡"
echo "🟢   1️⃣    🤪🤪🤪🤪🤪🤪🤪🤪🤪🤪🤪🤪准备拉取Ajen的Git提交记录     🔴"
echo "🟡   2️⃣    😴😴😴😴😴😴😴😴😴😴😴😴正在查找清空桌面工作台账.csv  🟢"
#删除指定路径的指定GitCommitLog文件
rm /Users/ajen/Desktop/工作台账.csv
sleep 0.5
echo "🔴   3️⃣    🤢🤢🤢🤢🤢🤢🤢🤢🤢🤢🤢🤢正在进入BCBC项目仓库          🟡"
#进入Git管理的项目文件夹
cd /Users/ajen/Desktop/HPBALL/Qiuyouzone
echo "🟢   4️⃣    😈😈😈😈😈😈😈😈😈😈😈😈正在拉取Ajen的Git提交记录     🔴"
sleep 0.5
echo "🟡   5️⃣    ✅✅✅✅✅✅✅✅✅✅✅✅已拉取提交记录并保存至桌面    🟢"
echo "🔴                                                              🟡"
#获取Git的Log信息并保存为表格文件(--no-merges不显示合并提示,--author='xxx'只保存某个作者的提交记录,--date=iso时间格式化,--pretty=format:"%an","%ad","%s",输入内容格式化分别为时间,作者,commit标题)
git log --no-merges --author='Ajen' --date=iso --pretty=format:"%an","%ad","%s" >> ~/Desktop/工作台账.csv
echo "🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡"
echo "🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴"
echo "🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢🟡🔴🟢"
echo ""
echo ""
echo "进程已完成,即将为您打开【工作台账】,并准备自动关闭当前窗口."
sleep 1
#打开保存的指定文件
open /Users/ajen/Desktop/工作台账.csv
echo "      【 3 】"
sleep 1
echo "      【 2 】"
sleep 1
echo "      【 1 】"
sleep 1
#关闭终端窗口
osascript -e 'tell application "Terminal" to quit' &
exit


