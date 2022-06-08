# 根据replace.txt (| 分隔源字符和替换字符)替换 src.txt
awk -F\| '{print "s/" $1 "/" $2 "/g" }' replace.txt | xargs -I{} -n1 sed -i "" "{}" src.txt
