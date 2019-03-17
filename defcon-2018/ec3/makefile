all:
	diet gcc ./exp.c -s -Os -pipe -static -o exp
	@tar Jcvf exp.tar ./exp
	@echo "echo '" > exp.cmd
	@base64 ./exp.tar >> exp.cmd
	@echo "' | base64 -d | tar Jxvf - > exp; chmod +x exp" >> exp.cmd
	@tmux load-buffer ./exp.cmd
