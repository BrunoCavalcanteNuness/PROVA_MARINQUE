SELECT f.nome_funcionario AS nomeFuncionario, m.numero_mesa AS mesaAtendida,

SUM(pg.valor_total) AS TotalGasto

FROM funcionario f
INNER JOIN mesa m ON f.id_funcionario = m.id_funcionario
INNER JOIN pedido p ON m.idMesa = p.id_mesa
INNER JOIN pagamento pg ON p.idPedido  = pg.id_pedido

GROUP BY f.nome_funcionario, m.numero_mesa;

