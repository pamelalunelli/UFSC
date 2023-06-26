INSERT INTO rodoviario.MUNICIPIO (id_municipio, nome, tarifa) VALUES
(1, 'Criciuma', 4.50),
(2, 'Icara', 4.00),
(3, 'Forquilhinha', 3.75),
(4, 'Ararangua', 4.20),
(5, 'Morro da Fumaca', 3.90);

INSERT INTO rodoviario.ITINERARIO (id_itinerario, tipo) VALUES
(1, 'Dia Util'),
(2, 'Final de Semana/Feriado'),
(3, 'Noturno');

INSERT INTO rodoviario.TIPO_ONIBUS (id_tipo_onibus, tipo) VALUES
(1, 'Convencional'),
(2, 'Articulado'),
(3, 'Micro-onibus');

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
(5, 'MNO6789', 2019, 1, 4, 3),
(6, 'ABC1234', 2010, 1, 1, 1),
(7, 'DEF5678', 2015, 2, 2, 2),
(8, 'GHI9101', 2023, 3, 1, 2),
(9, 'JKL2345', 2018, 2, 3, 1),
(10, 'MNO6789', 2019, 1, 4, 3),
(11, 'PQR3456', 2017, 1, 3, 2),
(12, 'STU7890', 2020, 2, 1, 1),
(13, 'VWX1234', 2019, 3, 2, 3),
(14, 'YZA5678', 2016, 1, 4, 2),
(15, 'BCD9101', 2014, 2, 3, 1),
(16, 'EFG2345', 2022, 3, 1, 3),
(17, 'HIJ6789', 2013, 2, 2, 2),
(18, 'KLM3456', 2011, 1, 1, 1),
(19, 'NOP7890', 2017, 3, 4, 3),
(20, 'QRS1234', 2018, 2, 3, 2),
(21, 'TUV5678', 2019, 1, 2, 1),
(22, 'WXY9101', 2020, 3, 1, 3),
(23, 'ZAB2345', 2015, 1, 4, 2),
(24, 'CDE6789', 2016, 2, 3, 1),
(25, 'FGH9101', 2012, 3, 2, 3),
(26, 'IJK2345', 2019, 2, 1, 1),
(27, 'LMN6789', 2018, 1, 4, 3),
(28, 'OPQ3456', 2014, 3, 3, 2),
(29, 'RST7890', 2017, 1, 2, 1),
(30, 'UVW1234', 2021, 3, 1, 3),
(31, 'XYZ5678', 2016, 2, 2, 2),
(32, 'BCA9101', 2013, 1, 1, 1),
(33, 'CDE2345', 2015, 3, 4, 2),
(34, 'FGH6789', 2012, 2, 3, 1),
(35, 'IJK9101', 2020, 3, 1, 3);

INSERT INTO rodoviario.LINHA_PARADA (id_linha_parada, FK_LINHA_id_linha, FK_PARADA_id_parada) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 1, 3),
(7, 1, 4),
(8, 1, 5),
(9, 2, 1),
(10, 2, 2),
(11, 2, 5),
(12, 3, 1),
(13, 3, 2),
(14, 3, 3),
(15, 3, 4),
(16, 4, 2),
(17, 4, 3),
(18, 4, 4),
(19, 4, 5),
(20, 5, 1),
(21, 5, 3),
(22, 5, 4),
(23, 5, 5),
(24, 5, 2),
(25, 1, 5),
(26, 2, 3),
(27, 3, 4),
(28, 4, 1),
(29, 5, 2);

INSERT INTO rodoviario.MEIO_PAGAMENTO (id_meio_pagamento, meio_pagamento, bandeira_cc, tipo_vt) VALUES
(1, 'Dinheiro', NULL, NULL),
(2, 'Cartão de Credito', 'Visa', NULL),
(3, 'Vale-Transporte', NULL, 'Estudante'),
(4, 'Cartão de Debito', 'Mastercard', NULL),
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

INSERT INTO rodoviario.MEIO_PAGAMENTO_TERMINAL (id_meio_pagamento_terminal, FK_MEIO_PAGAMENTO_id_meio_pagamento, FK_TERMINAL_id_terminal) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 1, 4),
(5, 5, 5),
(6, 3, 6),
(7, 2, 7),
(8, 1, 8),
(9, 4, 9),
(10, 5, 10);

INSERT INTO rodoviario.CONEXAO (id_conexao, FK_LINHA_id_linha, FK_TERMINAL_id_terminal) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(5, 5, 6),
(6, 1, 7),
(7, 2, 8),
(8, 3, 9),
(9, 4, 10),
(10, 5, 1);

INSERT INTO rodoviario.LINHA_PARADA_ITINERARIO (id_linha_parada_itinerario, FK_LINHA_PARADA_LINHA_PARADA_id_linha_parada, FK_ITINERARIO_id_itinerario) VALUES
(1, 2, 1),
(2, 4, 2),
(3, 1, 3),
(4, 5, 1),
(5, 3, 2),
(6, 1, 1),
(7, 3, 2),
(8, 5, 3),
(9, 2, 1),
(11, 1, 1),
(12, 2, 2),
(13, 3, 3),
(14, 4, 1),
(15, 5, 2),
(16, 1, 2),
(17, 2, 3),
(18, 3, 1),
(19, 4, 3),
(20, 5, 1),
(10, 4, 3),
(22, 2, 3),
(23, 3, 1),
(24, 4, 3),
(25, 5, 1),
(26, 1, 1),
(27, 2, 2),
(28, 3, 3),
(29, 4, 1),
(30, 5, 2),
(31, 1, 3),
(32, 2, 1),
(33, 3, 2),
(34, 4, 3),
(35, 5, 1),
(36, 1, 1),
(37, 2, 2),
(38, 3, 3),
(39, 4, 1),
(40, 5, 2);