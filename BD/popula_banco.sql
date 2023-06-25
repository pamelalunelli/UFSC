INSERT INTO rodoviario.MUNICIPIO (id_municipio, nome, tarifa) VALUES
(1, 'Criciúma', 4.50),
(2, 'Içara', 4.00),
(3, 'Forquilhinha', 3.75),
(4, 'Araranguá', 4.20),
(5, 'Morro da Fumaça', 3.90);

INSERT INTO rodoviario.ITINERARIO (id_itinerario, tipo) VALUES
(1, 'Dia Útil'),
(2, 'Final de Semana/Feriado'),
(3, 'Noturno');

INSERT INTO rodoviario.TIPO_ONIBUS (id_tipo_onibus, tipo) VALUES
(1, 'Convencional'),
(2, 'Articulado'),
(3, 'Micro-ônibus');

INSERT INTO rodoviario.EMPRESA (id_empresa, nome, cnpj) VALUES
(1, 'Empresa A', 123456789),
(2, 'Empresa B', 987654321),
(3, 'Empresa C', 135792468),
(4, 'Empresa D', 246813579),
(5, 'Empresa E', 975318642);

INSERT INTO rodoviario.LINHA (id_linha, nome) VALUES
(1, 'Linha 1'),
(2, 'Linha 2'),
(3, 'Linha 3'),
(4, 'Linha 4'),
(5, 'Linha 5');

INSERT INTO rodoviario.PARADA (id_parada, endereco_rua, endereco_numero) VALUES
(1, 'Rua A', 100),
(2, 'Rua B', 200),
(3, 'Rua C', 300),
(4, 'Rua D', 400),
(5, 'Rua E', 500);

INSERT INTO rodoviario.VEICULO (id_veiculo, placa, ano, FK_ITINERARIO_id_itinerario, FK_EMPRESA_id_empresa, FK_TIPO_ONIBUS_id_tipo_onibus) VALUES
(1, 'ABC1234', 2010, 1, 1, 1),
(2, 'DEF5678', 2015, 2, 2, 2),
(3, 'GHI9101', 2023, 3, 1, 2),
(4, 'JKL2345', 2018, 2, 3, 1),
(5, 'MNO6789', 2019, 1, 4, 3);

INSERT INTO rodoviario.LINHA_PARADA (id_linha_parada, FK_LINHA_id_linha, FK_PARADA_id_parada) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5);

INSERT INTO rodoviario.MEIO_PAGAMENTO (id_meio_pagamento, meio_pagamento, bandeira_cc, tipo_vt) VALUES
(1, 'Dinheiro', NULL, NULL),
(2, 'Cartão de Crédito', 'Visa', NULL),
(3, 'Vale-Transporte', NULL, 'Estudante'),
(4, 'Cartão de Débito', 'Mastercard', NULL),
(5, 'Passe Livre', NULL, 'Idoso');

INSERT INTO rodoviario.TERMINAL (id_terminal, nome, FK_MUNICIPIO_id_municipio)
VALUES
  (1, 'Terminal A', 1),
  (2, 'Terminal B', 2),
  (3, 'Terminal C', 3),
  (4, 'Terminal D', 4),
  (5, 'Terminal E', 5),
  (6, 'Terminal F', 1),
  (7, 'Terminal G', 2),
  (8, 'Terminal H', 3),
  (9, 'Terminal I', 4),
  (10, 'Terminal J', 5);

INSERT INTO rodoviario.MOTORISTA (id_motorista, nome, chn, validade_cnh, FK_VEICULO_id_veiculo) VALUES
(1, 'Motorista A', '12345678901', '2023-06-30', 1),
(2, 'Motorista B', '98765432109', '2023-12-31', 2),
(3, 'Motorista C', '24681357903', '2024-05-15', 3),
(4, 'Motorista D', '13579246807', '2023-09-28', 4),
(5, 'Motorista E', '97531864205', '2023-11-30', 5);