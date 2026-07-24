# 🎓 Sistema de Gestão de Ocorrências Escolares

Sistema web para registro e acompanhamento de ocorrências dentro de uma escola. Alunos abrem chamados descrevendo o problema; a equipe da escola visualiza, acompanha e dá baixa nas ocorrências resolvidas.

Trabalho de conclusão do curso técnico (ETEC).

---

## 🛠️ Tecnologias

| Tecnologia | Papel |
| --- | --- |
| PHP (com PDO) | Back-end e acesso ao banco |
| MySQL | Banco de dados relacional |
| HTML, CSS, JavaScript | Interface |
| XAMPP | Servidor local (Apache + MySQL) |

---

## ▶️ Como rodar

1. Instale o [XAMPP](https://www.apachefriends.org/download.html).
2. Inicie os serviços **Apache** e **MySQL** no painel do XAMPP.
3. Importe o banco de dados pelo **phpMyAdmin** (`http://localhost/phpmyadmin`) usando o arquivo `.sql` incluído no projeto.
4. Mova a pasta do projeto para o diretório `htdocs` da instalação do XAMPP.
5. Acesse no navegador: **<http://localhost/CMTEC/>**

---

## 🔑 Acesso

> As credenciais abaixo são de **demonstração**, para facilitar a avaliação do projeto em ambiente local.

**Administrador**

- **E-mail:** `admin`
- **Senha:** `1234`

**Criar conta de aluno**

O cadastro exige um e-mail terminado em `@etec.sp.gov.br`.

---

## 🖼️ Telas

### Aluno

![Tela de login e cadastro](screenshot_user.png)
*Login e cadastro*

![Tela inicial do aluno](screenshot_user2.png)
*Tela inicial*

### Administrador

![Tela inicial do administrador](screenshot_admin.png)
*Tela inicial do administrador*

![Tela de gestão de ocorrências](screenshot_admin2.png)
*Gestão de ocorrências*

---

## 🏆 Melhorias planejadas

- Sistema de notificações
- Refinamento da interface
- Dashboard de acompanhamento de ocorrências

---

Sugestões e contribuições são bem-vindas. 🚀
