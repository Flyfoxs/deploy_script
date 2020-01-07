
# https://github.com/cdr/code-server
#local_ip=${ifconfig | awk '/inet addr/{print substr($2,6)}' | grep 10.20.}
#docker run --user root  -it -p 127.0.0.1:8080:8080 -v "${HOME}/.local/share/code-server:/home/coder/.local/share/code-server" -v "$PWD:/home/coder/project" codercom/code-server:v2
docker run --user root  -it -p 8080:8080 --env PASSWORD=$PASSWORD -v "${HOME}/.local/share/code-server:/home/coder/.local/share/code-server" -v "$PWD:/home/coder/project" codercom/code-server:v2