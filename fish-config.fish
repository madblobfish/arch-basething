if status is-login
	eval (ssh-agent -c)
end

if test (tty) = '/dev/tty1' -a -z "$DISPLAY"
	exec sway -d 2> /tmp/sway.log > /tmp/sway.log
end
