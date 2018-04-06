export LSCOLORS=GxFxCxDxBxegedabagaced 

alias ls='ls -lGH'
alias ..="cd .."
alias myip="curl http://ipecho.net/plain; echo"
alias cpu_hogs='ps wwaxr -o pid
stat
%cpu
time
command | head -5'

mclear() {
	echo 'flush_all' | nc localhost 11211
}

nginxe() {
	sudo vim /usr/local/etc/nginx/nginx.conf
}

nginxr() {
	sudo nginx -s stop && sudo nginx
}

msh() {
	read -s -p "Enter Password: " mypassword

	for var in "$@"
	do
		echo "host: $var"

		osascript -e "tell application \"iTerm2\"
	 		create window with default profile
	 		tell current session of current window
	 			write text \"ssh rscheidt@$var\"
	 			delay 2
	 			write text \"$mypassword\"
	 			delay 2
	 			write text \"cd /opt/tomcat/logs\"
	 		end tell
		end tell"
	done
}

