# 🤖 Automação de Testes - Parabank

Este projeto tem como objetivo automatizar os testes do site [Parabank](https://parabank.parasoft.com/parabank/index.htm) utilizando o **Robot Framework**.  
O Parabank é uma aplicação bancária fictícia disponibilizada pela **Parasoft** para estudo e prática de testes, permitindo simular cenários reais de cadastro, login, transferências e outras operações bancárias.

Com este projeto, é possível:  
- Validar funcionalidades críticas do sistema.  
- Criar cenários de testes reutilizáveis.  
- Gerar relatórios automáticos após a execução.  
- Treinar boas práticas em **QA e automação de testes**.

---

## 🚀 Tecnologias utilizadas
- **Python 3.9+**  
- **Robot Framework**  
- **SeleniumLibrary** (para automação web)  
- **webdriver-manager** (para gerenciamento automático do driver do navegador)  

---

## 📂 Estrutura do projeto

automacao-parabank/
│-- Locators/
│-- Pages/
│-- Results/
│-- Steps/
│-- Tests/
│-- Utils/
│-- .gitignore
│-- README.md
│-- requirements.txt

---

## ⚙️ Instalação e configuração

1. Clone este repositório:
```bash
git clone https://github.com/seu-usuario/automacao-parabank.git
cd automacao-parabank


2. Crie um ambiente virtual (opcional, mas recomendado):
python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows

3. Instale as dependências:
pip install -r requirements.txt

  ---

## ▶️ Como executar os testes
* Executar todos os testes:
robot -d results tests/

* Executar apenas um arquivo de teste:
robot -d results tests/login.robot

* Após a execução, os relatórios estarão disponíveis em:
results/log.html
results/report.html
results/output.xml
 
  ---

## 🛠️ Melhorias futuras
* Criar novos cenários cobrindo mais funcionalidades do sistema.
* Configurar integração contínua (CI/CD) para execução automática dos testes.
* Gerar relatórios avançados com Allure Reports.

  ---

## 👨‍💻 Autor
Projeto desenvolvido por `Cleber `Aguiar como prática de automação de testes com Robot Framework.