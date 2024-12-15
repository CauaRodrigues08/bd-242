A partir do Banco de Dados definido no Modelo Entidade Relacionamento anexo fazer as seguintes atividades:
1) Inserir na tabela TB_CLIENTES os seguintes dados:
   NOME_CLI                         ENDERECO
   José Maria Alves                 Av João Pessoa 2081
   Maria Conceição Tavares          Rua Waldery Uchoa 4
   João Cosme Fonseca               Rua Padre Franscisco Pinto 790

   Observação: A chave primaria é ID com auto-incremento

2) Inserir na Tabela TB_VENDEDORES os seguintes dados:
   NOME
   Luciano Arruda Cavalcante
   Joana Alves Pessoa
   Mercia Bessa Santos
   Antonio de Padua Lopes

   Observação: A chave primaria é ID com auto-incremento

2) Inserir na Tabela TB_PRODUTOS os seguintes dados:
   CODIGO NOME                          PRECO_UNITARIO
   100    Arroz Tio João                6.00
   150    Feijão Carioquinha            5.50
   200    Macarrão Fortaleza            3.50
   250    Oleo de Soja                  4.00
   300    Manteiga Betania 500g         8.00
   350    Queijo Ricota Betania         7.00
   
   Observação: A chave primaria é ID com auto-incremento

3) Inserir na Tabela TB_NOTAS_FISCAIS os seguintes dados:
   
   COD_CLI    COD_VEND   NUM_NF  SERIE_NF
    1         1          100     A
    3         2          101     A
    2         3          102     A
    4         4          103     A
    2         1          104     A
    1         3          105     A
    3         2          106     A
    4         4          107     A

    Observação: A chave primaria é NUM_NF


4) Inserir na Tabela TB_ITENS_NOTAS_FISCAIS os seguintes dados:
 
 NUM_NF  COD_PRO   QTD
   100     100       5
   100     150       4
   100     200       4
   101     250       8
   101     300       4
   102     100       6
   102     250       8
   103     300       4
   103     350       4
   104     150      10
   104     100      12
   106     150      10
   106     200      10
   107     100      10
   107     150      10
   107     200      10

   Observação: A chave primaria é (NUM_NF, COD_PRO)
               COD_PRO é chave estrangeira em TB_ITENS_NOTAS_FISCAIS e
               chave primária em TB_PRODUTOS.

EVIDENCIAS:
1) Print de execução dos comandos com posterior Select * de cada tabela;
2) Print do DBBROWSER ou Replit da Estrutura das Tabelas após o create.
