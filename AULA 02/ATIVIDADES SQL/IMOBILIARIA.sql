CREATE DATABASE imobiliaria;
USE imobiliaria;

CREATE TABLE `IMOVEL` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    num_quartos INT NOT NULL,
    valor_venda FLOAT NOT NULL
);

INSERT INTO IMOVEL (nome, descricao, num_quartos, valor_venda) VALUES
('Apartamento Luxo', 'Apartamento de luxo com 3 quartos e varanda', 3, 500000.00),
('Casa na Praia', 'Casa aconchegante com vista para o mar', 4, 1200000.00),
('Cobertura Duplex', 'Cobertura duplex com 5 quartos e piscina', 5, 2500000.00),
('Sítio Tranquilo', 'Sítio com área verde e pomar', 3, 800000.00),
('Loft Moderno', 'Loft moderno em área central', 1, 350000.00),
('Casa com Jardim', 'Casa com amplo jardim e garagem', 3, 650000.00),
('Apartamento no Centro', 'Apartamento de 2 quartos no centro da cidade', 2, 300000.00),
('Casa de Campo', 'Casa de campo em local tranquilo', 4, 900000.00),
('Prédio Comercial', 'Prédio comercial de 10 andares', 0, 4000000.00),
('Casa de Vila', 'Casa de vila com 2 quartos e quintal', 2, 450000.00);

SELECT * FROM IMOVEL;

SELECT nome, descricao, num_quartos, valor_venda
FROM IMOVEL
WHERE num_quartos > 3 AND valor_venda > 1000000;

SELECT nome, valor_venda
FROM IMOVEL
ORDER BY valor_venda DESC;
