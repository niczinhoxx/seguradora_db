# 🏦 Sistema de Banco de Dados para Seguradora

Projeto de banco de dados relacional desenvolvido em **PostgreSQL**, com o objetivo de simular o funcionamento de uma seguradora, incluindo gestão de clientes, apólices, sinistros, pagamentos e processos.

---

## 🎯 Objetivo

Desenvolver um sistema que represente cenários reais do mercado de seguros, aplicando:

- Modelagem de dados relacional
- Regras de negócio com triggers
- Consultas analíticas
- Boas práticas de banco de dados

---

## 🧠 Modelagem do Sistema

O sistema é composto pelas seguintes entidades:

- 👤 **Clientes**
- 📄 **Apólices**
- ⚠️ **Sinistros**
- 💰 **Pagamentos**
- ⚖️ **Processos**

### 🔗 Relacionamentos

- Um cliente pode ter várias apólices  
- Uma apólice pode ter vários sinistros  
- Um sinistro pode gerar pagamentos  
- Um sinistro pode estar associado a processos  

---

## ⚙️ Tecnologias Utilizadas

- PostgreSQL
- SQL (DDL, DML, DQL)
- PL/pgSQL (Triggers)

---

## 🔥 Funcionalidades Implementadas

### ✔ Modelagem de Banco de Dados
- Criação de tabelas com **Primary Keys e Foreign Keys**
- Uso de **constraints (CHECK, UNIQUE, NOT NULL)**

---

### ✔ Regras de Negócio (Trigger)

Implementação de uma trigger que:

- Gera automaticamente um pagamento  
- Apenas quando o status do sinistro muda para **"aprovado"**  
- Evita duplicidade utilizando verificação com `OLD` e `NEW`  

---

### ✔ Consultas SQL

- Relatório de sinistros  
- Total de prejuízo por cliente  
- Identificação de inconsistências (sinistros aprovados sem pagamento)  
- Análise de dados para apoio à decisão  

---

### ✔ Views Criadas

- 📊 `relatorio_sinistros` → visão geral dos sinistros  
- 📈 `total_de_prejuizo` → análise financeira por cliente  

---

## 📊 Exemplos de Análises

- Total de prejuízo por cliente  
- Saldo restante das apólices  
- Sinistros aprovados vs pendentes  
- Identificação de inconsistências no sistema  

---

## 🧪 Estrutura do Projeto

📁 seguradora_db
├── base.sql
├── dados.sql
├── automatizacoes.sql
├── consultas.sql
├── relatorios.sql
└── README.md


---
## 🚀 Como Executar

1. Crie o banco de dados no PostgreSQL:

```sql
CREATE DATABASE seguradora_db;
```

2. Conecte ao banco:

```sql
\c seguradora_db
```

3. Execute os scripts na seguinte ordem:

- `base.sql` → criação das tabelas  
- `dados.sql` → inserção de dados  
- `automatizacoes.sql` → regras automáticas  
- `consultas.sql` → consultas  
- `relatorios.sql` → criação das views  

---

## 💼 Aplicação no Mundo Real

Este projeto simula cenários reais utilizados por empresas do setor de seguros, incluindo:

- Gestão de sinistros  
- Controle financeiro  
- Automação de processos  
- Análise de dados para tomada de decisão  

---

## 👨‍💻 Autor

**Nicolas Da Silva floriano**  
📧 devnicolassilva@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/nicolas-da-silva-floriano-a55b632b9/

---

## 🚀 Status do Projeto

✅ Finalizado  

📈 Possíveis melhorias futuras:
- Integração com API backend  
- Dashboard visual  
- Otimização de consultas  

---

## 💡 Considerações Finais

Projeto desenvolvido com foco em aprendizado prático e aplicação de conceitos fundamentais de banco de dados, simulando um ambiente real de negócio.
