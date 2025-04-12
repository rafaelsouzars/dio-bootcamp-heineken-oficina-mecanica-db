# OFICINA MECÂNICA - Narrativa

## LEVANTAMENTO DE REQUISITOS

- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.

- Clientes levam veículos à oficina mêcanica para serem consertados ou para passarem por revisões periódicas.

- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.

- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.

- O valor de cada peça também irá compor a OS.

- O cliente autoriza a execução dos serviços.

- A mesma equipe avalia e executa os serviços.

- Os mecânicos possuem código, nome, endereço e especialidade.

- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

- Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS.

- Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS.


## ENTIDADES

- Clientes [x]

- Mecânicos (cod, nome, endreco e especialidade) [x]

- Veículos [x]

- Serviços (mão-de-obra)

- Peças (cod, descricao e valor)

- Equipe

- Ordem de serviço (numero, data de emissao, valor, status e data de conclusão)

/*--------------------------------------------------------------------------------------------------*/

Os estados de uma ordem de serviço (OS) indicam a posição do documento no processo de processamento e quais ações podem ser realizadas. 
Alguns exemplos de estados de uma OS são: 

- AAPRV: A OS está aguardando aprovação
- APPR: A OS foi aprovada e o serviço pode começar
- APROG: A OS está aguardando ser planeada
- INPRG: O serviço está em andamento
- CONCL: O serviço físico está concluído
- CLOSE: A OS é fechada
- CANCEL: A OS é cancelada

Os estados de uma OS podem ser atualizados manualmente ou automaticamente. Por exemplo, quando uma OS é agendada, o seu estado pode ser atualizado automaticamente. 
Uma OS é um documento que marca o início de uma prestação de serviços. Ela guia todo o processo de contratação e execução do serviço. 
O conteúdo de uma OS varia de acordo com a atividade da empresa e o serviço a ser realizado. No entanto, de modo geral, o documento deve conter: 

- Número da OS
- Descrição do serviço
- Valor a ser cobrado
- Local de prestação do serviço
- Dados do cliente
- Data de emissão
- Forma de pagamento
