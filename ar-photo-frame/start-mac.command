#!/bin/bash
# 長者節日 AR 影相框：雙擊呢個檔案就會開啟本機伺服器同 Chrome
cd "$(dirname "$0")" || exit 1
PORT=8000
URL="http://localhost:${PORT}/"
echo "============================================"
echo " 長者節日 AR 影相框"
echo " 網址：${URL}"
echo " 用完請關閉呢個視窗（或者按 Control + C）"
echo "============================================"
( sleep 1; open -a "Google Chrome" "${URL}" 2>/dev/null || open "${URL}" ) &
# 只綁定本機 127.0.0.1，同一個 Wi-Fi 嘅其他電腦都連唔到
python3 -m http.server "${PORT}" --bind 127.0.0.1
