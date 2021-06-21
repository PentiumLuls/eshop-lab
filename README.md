# Wordpress E-commerce site for University

## Setup local environment
> Используется связка Nginx + Mysql + PHP

1: Install Docker + Docker-compose
```bash
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo apt install docker-compose
```

2: Repo configs
```bash
git clone XXX
cd XXX
cp .env.sample .env
```

3: Run
```bash
bash run.sh staging
```
