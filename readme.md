Installation [source]((https://github.com/docker/docker-install)):

```shell
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

Add $USER to docker group and reboot system afterwards:

```shell
sudo usermod -aG docker $USER
sudo reboot
```