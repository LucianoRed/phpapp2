CREATE TABLE veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    veiculo VARCHAR(255),
    cor VARCHAR(255)
);

INSERT INTO veiculos (veiculo, cor) VALUES
('Carro', 'Azul'),
('Moto', 'Vermelha'),
('Caminhão', 'Verde'),
('Bicicleta', 'Preto'),
('Van', 'Branco'),
('Ônibus', 'Amarelo'),
('Caminhonete', 'Prata'),
('Motocicleta', 'Laranja'),
('Scooter', 'Roxo'),
('Trator', 'Marrom');
