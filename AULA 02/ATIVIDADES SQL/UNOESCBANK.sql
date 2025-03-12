CREATE DATABASE UNOESC_BANK;

USE UNOESC_BANK;
CREATE TABLE CLIENTE(
	ID INT NOT NULL auto_increment PRIMARY KEY,
    NOME VARCHAR(255)
);

CREATE TABLE CONTA(
	ID INT NOT NULL auto_increment PRIMARY KEY, 
    NRO_CONTA VARCHAR(10) NOT NULL,
    ID_CLIENTE INT NOT NULL,
    CONSTRAINT FK_ID_CLIENTE_CONTA
		FOREIGN KEY (ID_CLIENTE)
        REFERENCES CLIENTE(ID)
);	

CREATE TABLE TRANSACAO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_CONTA INT NOT NULL,
    TIPO_TRANSACAO INT NOT NULL,
    DATA_HORA DATETIME NOT NULL,
    VALOR FLOAT NOT NULL
);

-- Adicionando uma FK após a criação

ALTER TABLE TRANSACAO
ADD FOREIGN KEY (ID_CONTA)
REFERENCES CONTA(ID);

-- CRIANDO ÍNDICES
CREATE INDEX IDX_TRANSACAO_TP_TRANSACAO
ON TRANSACAO (TIPO_TRANSACAO);

CREATE INDEX IDX_TRANSACAO_DATA_HORA
ON TRANSACAO (DATA_HORA);