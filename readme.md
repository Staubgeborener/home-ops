Add $USER to docker group and reboot system afterwards:

```shell
sudo usermod -aG docker $USER
sudo reboot
```
