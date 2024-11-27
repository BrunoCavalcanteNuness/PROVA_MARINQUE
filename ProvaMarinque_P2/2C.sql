DELIMITER $$

CREATE PROCEDURE RedefinirStatusMesa(

IN p_numero_mesa INT 

)

BEGIN 

UPDATE mesa 
SET status_mesa = 'livre'
WHERE numero_mesa = p_numero_mesa;


SELECT CONCAT('status da mesa--', p_numero_mesa , '--redefinido para livre') AS Mensagem;

END;

DELIMITER $$

CALL RedefinirStatusMesa(1);