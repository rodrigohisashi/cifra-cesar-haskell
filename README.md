# Cifra de César - Criptografia e Descriptografia de Mensagens

Este projeto implementa a **Cifra de César**, um algoritmo de criptografia simples, utilizando Haskell. A cifra de César é um tipo de cifra de substituição em que cada letra do texto é deslocada um número fixo de posições no alfabeto.

## Funcionalidades do Módulo `Cesar`

O módulo `Cesar` oferece as seguintes funcionalidades:

1. `caracteresValidos`: Uma lista dos caracteres válidos para a criptografia, que inclui espaços e letras minúsculas do alfabeto.

2. `shift`: Função que realiza o deslocamento da letra no alfabeto.

3. `encode`: Função para criptografar uma mensagem, realizando o deslocamento de cada letra da string.

4. `crack`: Função para descriptografar uma mensagem criptografada sem a chave.

5. `freqs`: Calcula a porcentagem de cada letra minúscula em uma string.

6. `chisqr`: Calcula a medida de Chi-Quadrado de duas tabelas de frequência.

7. `rotate`: Rotaciona uma tabela em n posições.

8. `positions`: Retorna a lista de posições que contém um elemento específico.

## Executando o Projeto

Para utilizar as funções implementadas no módulo `Cesar`, siga as seguintes etapas:

1. **Importe o Módulo**: Importe o módulo `Cesar` no arquivo em que deseja usar as funcionalidades.

2. **Utilize as Funções**: Utilize as funções disponíveis para criptografar e descriptografar mensagens.

Exemplo de utilização:
```haskell
import Cesar

mensagem = "hello world"
chave = 3

mensagemCriptografada = encode chave mensagem
mensagemDescriptografada = crack mensagemCriptografada

print mensagemCriptografada -- Output: "khoor zruog"
print mensagemDescriptografada -- Output: "hello world"
