#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 建立輸出檔案
npm run build

# 移動至到打包後的dist目錄 
cd dist

# 因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git init 
git add -A
git commit -m 'deploy'

# 將 dist資料夾中的內容推送至遠端 hexWeek6Demo的 gh-pages分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)
git push -f https://github.com/kevinchen800116/twhome.git
cd -

# 執行指令，在終端機輸入 sh deploy.sh

# //https://ithelp.ithome.com.tw/articles/10237170?sc=pt 參考網誌