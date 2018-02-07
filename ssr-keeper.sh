ssr(){
	# 自行把 /home/shadowsocksr/run 修改成你自己的路径
	cd /home/shadowsocksr/run && python server.py -d restart
}

while true
do
	[[ -z `ps aux | grep -v grep | grep "python server.py -d start"` ]] && ssr
	# 定时 5 分钟一检查
	sleep 300
done