SELECT m.numero_mesa AS NumeroMesa, p.nome_produto AS Produtos, pp.quantidade AS Quantidade,
(p.preco_unitario * pp.quantidade) AS ValorTotal

FROM mesa m

INNER JOIN pedido pd ON m.idMesa = pd.id_mesa
INNER JOIN pedido_produto pp ON pd.idPedido = pp.id_pedido
INNER JOIN produto p ON pp.id_produto = p.idProduto

WHERE m.numero_mesa = 3