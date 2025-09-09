# Laudo Rápido

![Status](https://img.shields.io/badge/status-protótipo_em_desenvolvimento-blue)

Um protótipo para reconstrução 3D de cenas de acidentes de trânsito utilizando fotogrametria com drones.

## Visão do Projeto

O objetivo do "Laudo Rápido" é criar uma ferramenta de software que agilize e modernize o processo de perícia de trânsito. Utilizando imagens de drones, o projeto visa substituir o demorado e arriscado processo de medição manual e criação de croquis em campo. A visão final é fornecer uma solução que gere rapidamente modelos 2D e 3D precisos e mensuráveis da cena, aumentando a segurança do perito, a qualidade do laudo e a velocidade de liberação da via.

## Funcionalidades do Protótipo (v0.1)

Esta fase inicial do projeto está focada em validar a tecnologia central. As funcionalidades são:

* **Estrutura de Projeto Profissional:** Organização modular do código (`core`, `ui`, `projects`).
* **Pipeline de Fotogrametria:** Geração de uma nuvem de pontos 3D densa a partir de um conjunto de fotos, utilizando OpenMVG e OpenMVS.
* **Visualizador 3D Interativo:** Uma janela simples para carregar e navegar na cena 3D reconstruída.

## Arquitetura

O projeto segue uma arquitetura modular que separa a lógica de processamento (`core`) da interface do usuário (`ui`). Isso garante que o sistema seja fácil de manter, testar e escalar no futuro.

* `main.py`: Ponto de entrada da aplicação.
* `core/`: Módulos responsáveis pelo processamento pesado (fotogrametria).
* `ui/`: Módulos responsáveis pela interface gráfica (janelas, botões).
* `projects/`: Diretório para armazenar os dados de cada caso.

## Tecnologias Utilizadas

* **Linguagem:** Python 3.10+
* **Interface Gráfica:** PyQt6
* **Motor de Fotogrametria:** OpenMVG & OpenMVS
* **Visualização 3D:** Open3D
* **Gerenciador de Pacotes (macOS):** Homebrew

## Guia de Instalação e Configuração (macOS)

1.  **Clonar o Repositório:**
    ```bash
    git clone [URL_DO_SEU_REPOSITORIO_GIT]
    cd Laudo-Rapido
    ```

2.  **Instalar Dependências do Sistema com Homebrew:**
    ```bash
    brew update
    brew install python openmvg openmvs
    ```

3.  **Criar e Ativar o Ambiente Virtual:**
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate
    ```

4.  **Instalar as Bibliotecas Python:**
    (Primeiro, crie um arquivo `requirements.txt` e adicione as dependências abaixo)
    ```
    PyQt6
    numpy
    opencv-python
    open3d
    ```
    Depois, instale com o comando:
    ```bash
    pip install -r requirements.txt
    ```

## Como Executar o Protótipo

Com o ambiente virtual ativado, execute o ponto de entrada principal:

```bash
python main.py