# Docker Nginx PHP MySQL

A lightweight Docker development stack for PHP projects with Nginx, MySQL and phpMyAdmin.

Tested on macOS Apple Silicon / ARM64.

![License](https://img.shields.io/github/license/itasolution/php-docker-dev-stack)
![GitHub stars](https://img.shields.io/github/stars/itasolution/php-docker-dev-stack?style=social)
![GitHub forks](https://img.shields.io/github/forks/itasolution/php-docker-dev-stack?style=social)

## What's included

- Nginx
- PHP
- MySQL
- phpMyAdmin
- Docker Compose
- ARM64 / Apple Silicon support

## Requirements

- Docker
- Docker Compose

## Quick start

```bash
git clone https://github.com/itasolution/php-docker-dev-stack.git
cd php-docker-dev-stack
cp .env.example .env
docker compose up -d
