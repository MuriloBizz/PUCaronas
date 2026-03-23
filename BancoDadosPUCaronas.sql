CREATE DATABASE projeto_caronas;

USE projeto_caronas;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    email_academico VARCHAR(255),
    idade INT,
    usuario VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    instagram VARCHAR(255),
    ativo TINYINT(1) DEFAULT 1,
    tipo ENUM('passageiro', 'motorista') DEFAULT 'passageiro',
    foto_perfil VARCHAR(255),
    carro VARCHAR(255),
    modelo VARCHAR(255),
    placa VARCHAR(10)
);

CREATE TABLE caronas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motorista_id INT NOT NULL,
    motorista_nome VARCHAR(255) NOT NULL,
    origem VARCHAR(255) NOT NULL,
    destino VARCHAR(255) NOT NULL,
    data_hora DATETIME NOT NULL,
    vagas INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (motorista_id) REFERENCES cliente(id)
);