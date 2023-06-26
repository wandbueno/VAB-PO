# Problema de Otimização para a Viação Aérea Brasileira (VAB)

A VAB está considerando a compra de três tipos de aeronaves: Boeing 717 para transporte aéreo de curta distância, Boeing 737-500 para voos domésticos e internacionais de média distância e MD-11 para voos internacionais de longa distância. Em um estudo preliminar, assume-se que a capacidade máxima dos aviões a serem adquiridos será sempre preenchida para fins de planejamento.


## Dados
| Tipo de Avião	 | Custo (milhões US$) | Receita Teórica (Milhões US$) | Pilotos Qualificados |
|------------------|---------------------|------------------------------------|-----------------|
| Boeing 717       | 5.1                 | 330                                | 30              |
| Boeing 737-500   | 3.6                 | 300                                | 20              |
| MD-11            | 6.8                 | 420                                | 10              |

## Restrições
- O orçamento disponível para as compras é de 220 milhões de dólares.
- Os pilotos do MD-11 podem pilotar todos os aviões da empresa, mas outros pilotos só podem ser designados para a aeronave para a qual estão qualificados.
- Cada aeronave requer dois pilotos para operar.
- As oficinas de manutenção podem suportar até 40 Boeing 717. Um Boeing 737-500 é equivalente a 3/4 e um MD-11 é equivalente a 5/3 em esforço de manutenção em comparação com o Boeing 717.

## Modelo de Programação Linear
Para formular o problema de otimização, considere:
- x1 = Número de Boeing 717s
- x2 = Número de Boeing 737-500s
- x3 = Número de MD-11s

Função objetivo: maximizar Z = 330x1 + 300x2 + 420x3

Sujeito a:
- 5,1x1 + 3,6x2 + 6,8x3 <= 220 (restrição de orçamento)
- 2x1 <= 30 + 2x3 (Restrição piloto para Boeing 717)
- 2x2 <= 20 + 2x3 (Restrição de piloto para Boeing 737-500)
- 2x3 <= 10 (restrição piloto para MD-11)
- x1 + (3/4)x2 + (5/3)x3 <= 40 (restrição de manutenção)

Restrições de não negatividade:
- x1, x2, x3 >= 0
