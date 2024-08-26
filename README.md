Esquema Dimensional Acadêmico com Power BI
Descrição do Projeto

Este projeto tem como objetivo a criação de um esquema dimensional utilizando o modelo Star Schema, com base em um diagrama relacional representando uma instituição acadêmica. O esquema foi desenvolvido para ser integrado ao Power BI, permitindo a análise e visualização de dados relacionados a professores, alunos, cursos, disciplinas e matrículas.
Estrutura do Projeto
1. Tabelas de Dimensão

    DimProfessor: Contém informações sobre os professores, incluindo o departamento ao qual estão associados.
    DimDepartment: Armazena dados sobre os departamentos da instituição.
    DimStudent: Inclui detalhes dos alunos, como nome e data de nascimento.
    DimSubject: Representa as disciplinas oferecidas, associando cada uma ao respectivo curso.
    DimCourse: Contém informações sobre os cursos disponíveis.
    DimPrerequisite: Define os pré-requisitos entre disciplinas.

2. Tabela de Fato

    FactEnrollment: Armazena os registros de matrículas, ligando alunos a disciplinas, cursos e professores, além de registrar a nota final do aluno.

Como Executar
1. Configuração do Banco de Dados

    Copie o código SQL aqui e execute-o no seu sistema de gerenciamento de banco de dados (MySQL, PostgreSQL, SQL Server, etc.).
    O código cria todas as tabelas necessárias, insere os dados e configura as relações entre as tabelas.

2. Conectando ao Power BI

    Abra o Power BI Desktop.
    Conecte-se ao banco de dados onde as tabelas foram criadas.
    Importe as tabelas e configure as relações conforme o esquema dimensional criado.
    Crie relatórios e dashboards para análise dos dados acadêmicos.
