# Teste_GSA

# 📚 Sistema de Cadastro de Alunos e Salas – Delphi

Este projeto é um sistema simples de cadastro desenvolvido em **Delphi**, utilizando **ADO** para acesso ao banco de dados **MySQL**.  
O sistema permite gerenciar **Alunos** e **Salas**, com funcionalidades de inclusão, edição, listagem, pesquisa e exclusão.

---

## 🛠 Tecnologias Utilizadas

- **Delphi** (VCL)
- **ADO (ADOConnection / ADOQuery)**
- **MySQL 8**
- **MySQL ODBC 8.0 Unicode Driver**
- Banco de dados relacional (MySQL)

---

## 📂 Estrutura do Projeto

- **DataModule**
  - Conexão com o banco (`ADOConnection`)
  - Queries (`qryAluno`, `qrySala`)
  - DataSources (`dsAluno`, `dsSala`)

- **Formulários**
  - Listagem de Alunos
  - Cadastro de Alunos
  - Listagem de Salas
  - Cadastro de Salas

---

## 🗄 Estrutura do Banco de Dados

### 📌 Tabela `sala`

```sql
CREATE TABLE sala (
  id_sala INT AUTO_INCREMENT PRIMARY KEY,
  nome_sala VARCHAR(50),
  capacidade INT
);

CREATE TABLE aluno (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento DATE,
  endereco VARCHAR(150),
  id_sala INT,
  data_inclusao DATETIME,
  CONSTRAINT fk_aluno_sala
    FOREIGN KEY (id_sala) REFERENCES sala(id_sala)
);

Configuração do Banco de Dados

Instale o MySQL 8
Crie um banco de dados (exemplo: escola)
Execute os scripts SQL acima
Instale o MySQL ODBC 8.0 Unicode Driver

Configuração da Conexão no Delphi

No DataModule, configure o ADOConnection:
Provider=MSDASQL.1;
Driver={MySQL ODBC 8.0 Unicode Driver};
Server=localhost;
Database=escola;
User=root;
Password=1234;
Option=3;

Ajuste User e Password conforme seu ambiente.

LoginPrompt = False
Connected = True

Como Compilar e Executar

Abra o projeto no Delphi
Verifique se o MySQL está rodando
Confirme que o ODBC Driver está instalado
Compile o projeto (Ctrl + F9)
Execute (F9)

Funcionalidades

Cadastro de Alunos
Cadastro de Salas
Associação de Aluno com Sala
Pesquisa por nome na listagem
Exclusão de registros
Interface simples e objetiva

Observações

O projeto utiliza ADO por simplicidade e estabilidade
Ideal para fins acadêmicos e testes práticos
Estrutura preparada para fácil expansão

Autor

Projeto desenvolvido por Mateus
