# add lazydocker command as alias
echo "alias lazydocker='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v ./config:/.config/jesseduffield/lazydocker --name lazydocker lazyteam/lazydocker'" >> ~/.bashrc
source ~/.bashrc

# run lazydocker
lazydocker
