
# Análise de Dados - Projeto E-commerce

## Visão Geral

Este projeto apresenta uma análise detalhada dos dados de um e-commerce. Utilizando o MySQL, foi realizada uma análise exploratória para identificar padrões e fornecer insights estratégicos com base nos seguintes aspectos:

- **Total gasto por cliente**
- **Produtos mais vendidos**
- **Receita total por categoria de produto**
- **Métodos de pagamento mais utilizados**
- **Métodos de pagamento que mais faturam**
- **Valor total das compras em cada mês**
- **Produtos com estoque baixo**
- **Métodos de pagamento mais rápidos**

---

### 1. Qual é o total gasto por cada cliente? Qual deles gastam mais?

| Cliente           | Total Gasto (R$) |
|-------------------|-------------------|
| Felipe Santos     | 8.400,00         |
| Ana Pereira       | 9.550,00         |
| Beatriz Souza     | 350,00           |
| Carlos Mendes     | 150,00           |
| Paula Lima        | 80,00            |

**Conclusão**: Ana Pereira foi a cliente que mais gastou, com um total de **9.550,00** reais.

---

### 2. Quais são os produtos mais vendidos?

| Produto                    | Quantidade Vendida |
|--------------------------- |--------------------|
| Mesa de Jantar            | 2                  |
| Perfume                   | 2                  |
| Bicicleta                 | 2                  |
| Notebook Gamer            | 2                  |
| Liquidificador            | 2                  |
| Tênis de Corrida          | 2                  |
| Fone de Ouvido Bluetooth  | 2                  |
| Livro Python Avançado     | 2                  |
| Smartphone                | 1                  |
| Cadeira Gamer             | 1                  |

**Conclusão**: Os produtos mais vendidos incluem itens como **Mesa de Jantar**, **Perfume** e **Notebook Gamer**, todos com **2 unidades vendidas**.

---

### 3. Qual é a receita total por categoria de produto?

| Categoria       | Receita Total (R$) |
|-----------------|---------------------|
| Informática     | 15.400,00          |
| Móveis          | 3.000,00           |
| Esportes        | 2.620,00           |
| Beleza          | 1.350,00           |
| Casa e Jardim   | 300,00             |

**Conclusão**: A categoria de **Informática** gera a maior receita, com **15.400,00** reais, representando uma área estratégica para foco de marketing.

---

### 4. Qual é o método de pagamento mais utilizado?

| Método de Pagamento        | Utilizações |
|----------------------------|-------------|
| Cartão de Crédito          | 5           |
| Pix                        | 4           |
| Boleto                     | 3           |
| Cartão de Débito           | 2           |
| Transferência Bancária     | 1           |

**Conclusão**: O **Cartão de Crédito** é o método de pagamento mais utilizado.

---

### 5. Qual é o método de pagamento que mais fatura?

| Método de Pagamento        | Receita Total (R$) |
|----------------------------|---------------------|
| Cartão de Crédito          | 11.550,00          |
| Boleto                     | 7.700,00           |
| Cartão de Débito           | 1.550,00           |
| Transferência Bancária     | 950,00             |
| Pix                        | 920,00             |

**Conclusão**: O **Cartão de Crédito** é o método que mais fatura, seguido pelo **Boleto**.

---

### 6. Qual é o valor total das compras em cada mês?

| Mês         | Receita Total (R$) |
|-------------|---------------------|
| Julho       | 11.850,00          |
| Novembro    | 8.090,00           |
| Outubro     | 1.050,00           |
| Agosto      | 880,00             |

**Conclusão**: **Julho** foi o mês com o maior faturamento.

---

### 7. Quais produtos estão com estoque baixo?

| Produto             | Estoque |
|---------------------|---------|
| Notebook Gamer      | 10      |
| Mesa de Jantar      | 15      |
| Cadeira Gamer       | 20      |
| Perfume             | 25      |
| Bicicleta           | 30      |

**Conclusão**: Estes produtos estão com baixo estoque e precisam de reposição.

---

### 8. Qual é o método de pagamento mais rápido (menor tempo de aprovação)?

| Método de Pagamento | Média de Dias para Aprovação |
|---------------------|------------------------------|
| Boleto              | 25,0                        |
| Cartão de Débito    | 27,0                        |
| Cartão de Crédito   | 27,0                        |
| Pix                 | 27,5                        |

**Conclusão**: O **Boleto** é o método mais rápido em termos de aprovação.

---

## Conclusão Geral - Storytelling

Com base nos dados analisados, observamos que **Ana Pereira** se destaca como a cliente que mais gastou. **Produtos da categoria Informática** são os mais lucrativos, sugerindo que esforços de marketing podem ser direcionados para essa linha. O **Cartão de Crédito** é amplamente utilizado e gera a maior receita, embora o **Boleto** seja mais rápido em termos de aprovação.

Julho foi o melhor mês em termos de faturamento, indicando que campanhas promocionais nesse período podem ser eficazes. Além disso, alguns produtos estão com baixo estoque, indicando a necessidade de reabastecimento.

Essa análise oferece insights valiosos para otimizar estratégias de vendas, marketing e gestão de estoque no e-commerce.

---

### Ferramentas Utilizadas
- **SQL (MySQL)** para extração e análise dos dados.
- **Excel** para visualização adicional.

---

**Autor**: Rian Freires da Costa Silva  
**Data**: Novembro de 2024  
