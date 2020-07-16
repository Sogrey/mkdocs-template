#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

echo -e '\033[32;40m

  ____        U  ___ u    ____      ____     U _____ u   __   __
 / __"| u      \/"_ \/ U /"___|u U |  _"\ u  \| ___"|/   \ \ / /
<\___ \/       | | | | \| |  _ /  \| |_) |/   |  _|"      \ V /
 u___) |   .-,_| |_| |  | |_| |    |  _ <     | |___     U_|"|_u
 |____/>>   \_)-\___/    \____|    |_| \_\    |_____|      |_|
  )(  (__)       \\\\      _)(|_     //   \\\\_   <<   >>  .-,//|(_
 (__) .github.io(__)    (__)__)   (__)  (__) (__) (__)  \_) (__)  
 
'
echo -e "\033[32;40m [1/3] \033[0m commit 2 master branch"
echo -e ""
git init
git add -A
git commit -m 'deploy master'
git push -f https://github.com/Sogrey/mkdocs-template.git master

echo -e ""
echo -e "\033[32;40m [2/3] \033[0m Building static files"
echo -e ""

# 编译生成静态文件
mkdocs build --clean

echo -e ""
echo -e "\033[32;40m [3/3] \033[0m commit 2 gh-pages branch"
echo -e ""
# 进入生成的文件夹
cd site

git init
git add -A
git commit -m 'deploy gh-pages'

git push -f https://github.com/Sogrey/mkdocs-template.git master:gh-pages

cd ..

# echo -e ""
# echo -e "\033[32;40m [3/3] \033[0m commit 2 gh-pages branch"
# echo -e ""

# mkdocs gh-deploy

echo -e ""
echo -e "\033[32;40m [Done] \033[0m"
echo -e ""