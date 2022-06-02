main=index.html
cat /dev/null > $main
echo $'<!DOCTYPE html><html lang="zh-CN"><head><meta charset="UTF-8"><title>Yelv\'s Blog</title></head><body><h1>Yelv\'s Blog</h1><p>Seriously, it is really a blog in 2022!<br><a href="build.sh">生成器文件</a> 作者不可考</p><ul>' > $main
for i in `ls`; do
  if [ $i != 'img' ] && [ $i != 'index.html' ] && [ $i != 'generator.sh' ] && [ $i != 'main.html' ]; then
    echo '<li><a target="_blank" href="'$i'">'$i'</a></li>' >> $main
  fi
done
echo '</ul>Github：<a target="_blank" href="https://github.com/Ye1v/blog">Ye1v/blog</a><br>mail：admin@yelv.info</a><br><br>' >> $main
echo '</ul></body></html>' >> $main
