# Infraestrutura AWS com Terraform

![Terraform](https://img.shields.io/badge/Terraform-IaC-844FBA?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonwebservices&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Environment-FCC624?logo=linux&logoColor=black)
![Git](https://img.shields.io/badge/Git-Versionamento-F05032?logo=git&logoColor=white)

## 📌 Sobre o projeto

Este projeto foi desenvolvido como parte dos meus estudos práticos em Cloud Computing, DevOps e Infrastructure as Code (IaC), com o objetivo de aprofundar meus conhecimentos em provisionamento e gerenciamento de infraestrutura na AWS utilizando Terraform.

O laboratório foi realizado com base nas aulas da Maria Lazara, que compartilha conhecimentos e experiências práticas sobre Cloud e DevOps.

A partir das aulas, pude acompanhar a construção da infraestrutura, executar os comandos, explorar os recursos da AWS e compreender melhor como o Terraform permite automatizar o provisionamento de ambientes em nuvem.

Referência do projeto:

Instrutora: Maria Lazara

Material de estudo: Aula prática de Terraform e AWS no YouTube

Agradeço à Maria Lazara por compartilhar seu conhecimento e contribuir com o aprendizado de quem está construindo sua trajetória na área de tecnologia.

## 🎯 Objetivos

- Provisionar infraestrutura na AWS utilizando Terraform.
- Criar e configurar recursos de computação com Amazon EC2.
- Configurar regras de segurança para acesso aos recursos.
- Trabalhar com repositórios de imagens Docker no Amazon ECR.
- Compreender o gerenciamento de estado do Terraform.
- Versionar a infraestrutura utilizando Git e GitHub.
- Aplicar boas práticas de segurança e organização de código.

## 🛠️ Tecnologias utilizadas

| Tecnologia | Finalidade |
|---|---|
| AWS | Plataforma de computação em nuvem |
| Terraform | Provisionamento de infraestrutura como código |
| Amazon EC2 | Instâncias de computação |
| Amazon ECR | Repositório de imagens de contêineres |
| Security Groups | Controle de tráfego de rede |
| Linux | Ambiente de desenvolvimento |
| Git | Controle de versão |
| GitHub | Hospedagem e documentação do projeto |

## 🏗️ Arquitetura do laboratório

A infraestrutura contempla recursos AWS gerenciados por arquivos Terraform.

**Componentes principais:**

- **Amazon EC2:** recurso de computação provisionado na AWS.
- **Amazon ECR:** repositório para armazenamento de imagens de contêineres.
- **Security Groups:** definição de regras de entrada e saída para controle de acesso.
- **Terraform Provider:** integração entre Terraform e AWS.
- **Terraform State:** gerenciamento do estado da infraestrutura provisionada.

## 📂 Estrutura do projeto

```text
project/
├── .gitignore
├── README.md
└── lab/
    ├── backend.tf
    ├── ec2.tf
    ├── ecr.tf
    ├── provider.tf
    ├── security_group.tf
    └── .terraform.lock.hcl
```

**Descrição dos arquivos:**

| Arquivo | Responsabilidade |
|---|---|
| `backend.tf` | Configuração do backend do Terraform |
| `ec2.tf` | Definição de recursos EC2 |
| `ecr.tf` | Definição do repositório ECR |
| `provider.tf` | Configuração do provider AWS |
| `security_group.tf` | Regras de segurança e acesso |
| `.terraform.lock.hcl` | Controle das versões dos providers |
| `.gitignore` | Exclusão de arquivos sensíveis do versionamento |

## ⚙️ Executando o projeto

### 1. Pré-requisitos

Para reproduzir o laboratório, é necessário possuir:

- Conta AWS com permissões adequadas.
- Terraform instalado.
- AWS CLI instalada e configurada.
- Git instalado.
- Credenciais AWS configuradas de maneira segura.

### 2. Clonar o repositório

```bash
git clone https://github.com/SEU-USUARIO/NOME-DO-REPOSITORIO.git
```

Acessar o diretório:

```bash
cd NOME-DO-REPOSITORIO/lab
```

### 3. Inicializar o Terraform

```bash
terraform init
```

Inicializa o diretório e instala os providers necessários.

### 4. Validar a configuração

```bash
terraform validate
```

Verifica a sintaxe e a consistência da configuração Terraform.

### 5. Visualizar o plano de execução

```bash
terraform plan
```

Apresenta os recursos que serão criados, modificados ou removidos.

### 6. Provisionar a infraestrutura

```bash
terraform apply
```

Após analisar o plano, confirmar a execução digitando `yes`.

### 7. Consultar os recursos gerenciados

```bash
terraform state list
```

Exibe os recursos registrados no estado do Terraform.

### 8. Remover a infraestrutura

```bash
terraform destroy
```

Remove os recursos gerenciados pela configuração, após confirmação.

> **Atenção:** a execução dos comandos depende das configurações, permissões e recursos existentes na conta AWS. O provisionamento pode gerar custos.

## 🔐 Segurança e boas práticas

Durante o desenvolvimento, foram consideradas práticas importantes para projetos de infraestrutura como código:

- Não versionar chaves privadas SSH (`.pem`).
- Não publicar credenciais de acesso à AWS.
- Não enviar arquivos `terraform.tfstate` ao GitHub.
- Utilizar `.gitignore` para proteger arquivos locais.
- Revisar as regras de Security Groups.
- Restringir o acesso SSH a endereços IP autorizados.
- Manter o arquivo `.terraform.lock.hcl` versionado.

Em ambientes compartilhados ou de produção, recomenda-se utilizar um backend remoto seguro para o estado do Terraform, com criptografia e controle de acesso.

## 📚 Aprendizados

Este laboratório contribuiu para o desenvolvimento de conhecimentos práticos em:

- Infrastructure as Code (IaC).
- Provisionamento de recursos AWS.
- Organização de configurações Terraform.
- Gerenciamento de estados e providers.
- Configuração de regras de rede.
- Automação de infraestrutura.
- Versionamento de código.
- Boas práticas de segurança em Cloud Computing.

## 🔄 Próximas melhorias

Como evolução do projeto, pretendo explorar:

- Utilização de variáveis e outputs.
- Modularização das configurações Terraform.
- Armazenamento remoto do Terraform State.
- Integração com pipelines de CI/CD.
- Automatização de validações com `terraform fmt` e `terraform validate`.
- Documentação visual da arquitetura AWS.

## 👩‍💻 Autora

**Suelem Macedo**

Estudante de Análise e Desenvolvimento de Sistemas e estagiária de Public Cloud na T-Systems do Brasil.

Tenho interesse em Cloud Computing, DevOps, Linux, automação e infraestrutura como código.

Este projeto faz parte da minha jornada de aprendizado e desenvolvimento prático na área de tecnologia.

---

⭐ Projeto desenvolvido para fins educacionais e aprimoramento de conhecimentos em AWS, Terraform e DevOps.
