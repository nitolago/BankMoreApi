<h1 align="center">💰 BankMore</h1>
<h3 align="center">Sistema bancário em microsserviços com .NET 8 + Docker + Kafka</h3>

<p align="center">
  <img src="https://img.shields.io/badge/status-em%20desenvolvimento-yellow" />
  <img src="https://img.shields.io/badge/tecnologia-.NET%208-blue" />
  <img src="https://img.shields.io/badge/licen%C3%A7a-MIT-green" />
</p>

---

## 📌 Descrição

**BankMore** é um sistema bancário moderno construído com arquitetura de **microsserviços** utilizando:
- .NET 8
- CQRS + Kafka
- Docker + Docker Compose
- Repositórios SQL Server e MySQL
- JWT, autenticação segura e testes automatizados

> 💡 Este projeto foi desenvolvido como desafio técnico, com foco em escalabilidade, segurança e boas práticas de engenharia de software.

---

## ⚙️ Funcionalidades

- Cadastro e autenticação de usuários
- Consultas de saldo
- Depósitos e saques com validação
- Transferências bancárias seguras
- Tarifas dinâmicas e controle de idempotência

---

## 🧱 Arquitetura

- Microsserviços com APIs separadas
- CQRS com Commands/Queries
- Kafka como barramento de eventos
- SQLite (local) e MySQL (Docker)
- Repositório genérico + D.I. condicional
- Testes automatizados com xUnit

---

## 🛠️ Tecnologias

- ✅ ASP.NET Core 8
- ✅ Entity Framework Core
- ✅ Kafka
- ✅ Docker / Docker Compose
- ✅ SQLite / SQL Server / MySQL /PL SQL
- ✅ xUnit
- ✅ JWT
- ✅ Swagger

---

## 📸 Imagens

<p align="center">
  <img src="https://via.placeholder.com/800x400?text=Dashboard+BankMore" alt="Dashboard" />
</p>

---

## 🚀 Executar com Docker

```bash
docker-compose up --build
Acesse: http://localhost:5000/swagger


🌍 English version
<details> <summary>Click to expand</summary>
💰 BankMore
BankMore is a modern banking system built using microservices with:

.NET 8

CQRS + Kafka

Docker + Docker Compose

SQL Server / MySQL / SQLite /PL SQL

JWT authentication and automated tests

🔧 Features
User registration and login

Balance query

Deposit and withdraw

Secure transfers with fee system

Idempotency control

📦 Architecture
Clean Architecture & CQRS

Command/Query separation

Kafka event stream

Generic repositories with conditional DI

Full Docker support

🛠️ Tech Stack
ASP.NET Core 8

EF Core

Kafka

Docker

SQLite / SQL Server / MySQL

xUnit

JWT

Swagger



