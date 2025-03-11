# 📌 Sistema de Cadastro com Prisma e PostgreSQL

![Prisma](https://img.shields.io/badge/Prisma-ORM-blue?style=for-the-badge)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?style=for-the-badge)
![TypeScript](https://img.shields.io/badge/TypeScript-Programming-blue?style=for-the-badge)

## 📖 Descrição
Este projeto implementa um **sistema de gerenciamento de usuários, produtos, lojas e fornecedores** utilizando **Node.js, Prisma ORM e PostgreSQL**.  
Foi desenvolvido para aplicar conceitos de **modelagem de banco de dados, relacionamentos e manipulação de dados**.

## 🚀 Tecnologias Utilizadas
- **Node.js** (Back-end)
- **TypeScript** (Tipagem estática)
- **Prisma ORM** (Mapeamento objeto-relacional)
- **PostgreSQL** (Banco de Dados)
- **Neon Console** (Banco na nuvem)
- **Express.js** (Servidor web)

---

## 📂 Estrutura do Projeto
```
📁 modelagem-prisma
│-- 📁 prisma
│   │-- migrations/   # Diretório das migrações do Prisma
│   │-- schema.prisma # Definição do banco de dados
│
│-- 📁 src
│   │-- database
│   │   ├── prisma.client.ts  # Instância do Prisma Client
│   │-- repositories
│   │   ├── usuario.repository.ts  # CRUD Usuário
│   │   ├── produto.repository.ts  # CRUD Produto
│   │   ├── loja.repository.ts     # CRUD Loja
│   │   ├── fornecedor.repository.ts  # CRUD Fornecedor
│   │-- routes.ts  # Definição das rotas da API
│   │-- index.ts  # Arquivo principal da aplicação
│
│-- .env  # Variáveis de ambiente
│-- package.json  # Dependências do projeto
│-- tsconfig.json  # Configuração do TypeScript
│-- README.md  # Documentação do projeto
```

---

## ⚙️ **Configuração e Instalação**
### **1️⃣ Clone o Repositório**
```sh
git clone https://github.com/thainatuanne/modelagem-prisma.git
cd modelagem-prisma
```

### **2️⃣ Instale as Dependências**
```sh
npm install
```

### **3️⃣ Configure as Variáveis de Ambiente**
Crie um arquivo **`.env`** na raiz do projeto e adicione as configurações do banco de dados:
```
DATABASE_URL="postgresql://seu_usuario:senha@host:porta/seu_banco"
```
> 📌 **Dica:** Se estiver usando o **Neon Console**, copie a URL do banco e cole aqui.

### **4️⃣ Configurar o Prisma**
```sh
npx prisma generate
```

### **5️⃣ Rodar as Migrações para Criar as Tabelas**
```sh
npx prisma migrate dev --name init_schema
```

---

## 📌 Exemplo da modelagem do banco de dados
### **1️⃣ Usuário**
```prisma
model Usuario {
  id        String   @id @default(uuid())
  nome      String   @db.VarChar(100)
  idade     Int      @db.Integer
  email     String   @unique @db.VarChar(100)
  senha     String   @db.VarChar(255) // Criptografada
  gitHub    String?  @db.VarChar(100)
  criadoEm  DateTime @default(now()) @map("criado_em")
  atualizadoEm DateTime @updatedAt @map("atualizado_em")
  produtos  Produto[]  // Um usuário pode cadastrar vários produtos
}
```
---

## 🚀 **Rodando o Projeto**
### **1️⃣ Inicie o Servidor**
```sh
npm run dev
```

### **2️⃣ Teste no Prisma Studio**
Para visualizar e testar os dados no banco:
```sh
npx prisma studio
```
