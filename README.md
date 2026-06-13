# PHP Docker Dev Stack

Lightweight Docker development stack for PHP projects with Nginx, PHP-FPM, MySQL and phpMyAdmin.

![GitHub release](https://img.shields.io/github/v/release/itasolution/php-docker-dev-stack)
![License](https://img.shields.io/github/license/itasolution/php-docker-dev-stack)
![GitHub stars](https://img.shields.io/github/stars/itasolution/php-docker-dev-stack?style=social)
![GitHub forks](https://img.shields.io/github/forks/itasolution/php-docker-dev-stack?style=social)

## What's included

- Nginx
- PHP-FPM
- MySQL
- phpMyAdmin
- Docker Compose
- Environment configuration via `.env`
- ARM64 / Apple Silicon support

## Requirements

- Docker
- Docker Compose

## Quick start

Clone the repository:

```bash
git clone https://github.com/itasolution/php-docker-dev-stack.git
cd php-docker-dev-stack
```

Create your local environment file:

```bash
cp .env.example .env
```

Start the stack:

```bash
docker compose up -d
```

## Services

| Service | Docker service | URL |
|---|---|---|
| Web app | `web` | http://localhost:8080 |
| phpMyAdmin | `myadmin` | http://localhost:8081 |
| MySQL | `mysqldb` | localhost:8989 |

## Make commands

You can also use the included `Makefile` shortcuts:

```bash
make up
make logs
make ps
make down
make config
```

Available commands:

| Command | Description |
|---|---|
| `make up` | Start containers in detached mode |
| `make down` | Stop and remove containers |
| `make restart` | Restart the stack |
| `make logs` | Follow container logs |
| `make ps` | Show running containers |
| `make config` | Validate and render Docker Compose configuration |

## Configure versions

PHP and MySQL versions are configured in the `.env` file.

Default values:

```env
PHP_VERSION=7.4-fpm
MYSQL_VERSION=8.0.32-oracle
```

Change these values before starting the stack:

```bash
docker compose up -d
```

PHP image tags are available on Docker Hub:

```text
https://hub.docker.com/_/php
```

MySQL image tags are available on Docker Hub:

```text
https://hub.docker.com/_/mysql
```

## Environment variables

Runtime configuration is handled through the local `.env` file.

The repository includes `.env.example` as a safe template. Copy it to `.env` before starting the stack.

Main variables:

| Variable | Description | Default |
|---|---|---|
| `NGINX_HOST` | Nginx host name | `localhost` |
| `PHP_VERSION` | PHP Docker image tag | `7.4-fpm` |
| `MYSQL_VERSION` | MySQL Docker image tag | `8.0.32-oracle` |
| `MYSQL_HOST` | MySQL container host name | `mysql` |
| `MYSQL_DATABASE` | Default database name | `test` |
| `MYSQL_ROOT_PASSWORD` | MySQL root password | `root` |
| `MYSQL_USER` | MySQL user | `dev` |
| `MYSQL_PASSWORD` | MySQL user password | `dev` |

> The `.env` file is ignored by Git. Only `.env.example` is versioned.

## Project structure

```text
.
├── data/
├── etc/
│   ├── nginx/
│   └── php/
├── logs/
│   └── nginx/
├── web/
├── .env.example
├── docker-compose.yml
├── Makefile
└── README.md
```

## Stop the stack

```bash
docker compose down
```

Or with Make:

```bash
make down
```

## Useful commands

Show running containers:

```bash
docker compose ps
```

Follow logs:

```bash
docker compose logs -f
```

Restart containers:

```bash
docker compose down && docker compose up -d
```

## Use cases

This stack is useful for:

- local PHP development
- legacy PHP projects
- quick MySQL and phpMyAdmin environments
- testing PHP applications with Docker
- learning Docker Compose with a simple PHP/Nginx/MySQL setup

## Roadmap

- [x] Add `.env.example`
- [x] Add Makefile shortcuts
- [x] Document PHP and MySQL version configuration
- [ ] Add Xdebug support
- [ ] Add local HTTPS example
- [ ] Add PHP version examples
- [ ] Add GitHub Actions validation

## Contributing

Issues and pull requests are welcome.

For small improvements, open an issue first or submit a pull request directly.

## License

MIT