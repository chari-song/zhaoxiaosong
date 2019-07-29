#bin/bash
cd /tmp
# haha文件存放的是不规则网址
a=($(cat haha))
for ((i=0;i<${#a[@]};i++))
 do
  echo ${a[i]}
  # 批量替换网址
  sed -i "s@${a[i]}@${a[i]}  https://${a[i]}/login.html@g" haha
 done

for i in `cat haha`
 do
   sed -i "s@$i@$i  https://$i/login.html@g" haha
 done
