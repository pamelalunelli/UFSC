CREATE TABLE rodoviario.MUNICIPIO (
    id_municipio int PRIMARY KEY,
    nome varchar(50),
    tarifa float(5)
);

CREATE TABLE rodoviario.MEIO_PAGAMENTO (
    id_meio_pagamento int PRIMARY KEY,
    meio_pagamento varchar(50),
    bandeira_cc varchar(50),
    tipo_vt varchar(50)
);

CREATE TABLE rodoviario.TERMINAL (
    id_terminal int PRIMARY KEY,
    nome varchar(50),
    FK_MUNICIPIO_id_municipio int
);

CREATE TABLE rodoviario.LINHA (
    id_linha int PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE rodoviario.PARADA (
    id_parada int PRIMARY KEY,
    endereco_rua varchar(100),
    endereco_numero int
);

CREATE TABLE rodoviario.ITINERARIO (
    id_itinerario int PRIMARY KEY,
    tipo varchar(50)
);

CREATE TABLE rodoviario.MOTORISTA (
    id_motorista int PRIMARY KEY,
    nome varchar(50),
    chn bigint,
    validade_cnh date,
    FK_VEICULO_id_veiculo int
);

CREATE TABLE rodoviario.VEICULO (
    id_veiculo int PRIMARY KEY,
    placa varchar(7),
    ano int,
    FK_ITINERARIO_id_itinerario int,
    FK_EMPRESA_id_empresa int,
    FK_TIPO_ONIBUS_id_tipo_onibus int
);

CREATE TABLE rodoviario.TIPO_ONIBUS (
    id_tipo_onibus int PRIMARY KEY,
    tipo varchar(50)
);

CREATE TABLE rodoviario.EMPRESA (
    id_empresa int PRIMARY KEY,
    nome varchar(50),
    cnpj int
);

CREATE TABLE rodoviario.LINHA_PARADA (
    id_linha_parada int PRIMARY KEY,
    FK_LINHA_id_linha int,
    FK_PARADA_id_parada int
);

CREATE TABLE rodoviario.MEIO_PAGAMENTO_TERMINAL (
    id_meio_pagamento_terminal int PRIMARY KEY,
	FK_MEIO_PAGAMENTO_id_meio_pagamento int,
    FK_TERMINAL_id_terminal int
);


CREATE TABLE rodoviario.CONEXAO (
    id_conexao int PRIMARY KEY,
	FK_LINHA_id_linha int,
    FK_TERMINAL_id_terminal int
	
);

CREATE TABLE rodoviario.LINHA_PARADA_ITINERARIO (
	id_linha_parada_itinerario int PRIMARY KEY,
    FK_LINHA_PARADA_LINHA_PARADA_id_linha_parada int,
    FK_ITINERARIO_id_itinerario int
);
 
ALTER TABLE rodoviario.TERMINAL ADD CONSTRAINT FK_TERMINAL_2
    FOREIGN KEY (FK_MUNICIPIO_id_municipio)
    REFERENCES rodoviario.MUNICIPIO (id_municipio)
    ON DELETE CASCADE;
 
ALTER TABLE rodoviario.MOTORISTA ADD CONSTRAINT FK_MOTORISTA_2
    FOREIGN KEY (FK_VEICULO_id_veiculo)
    REFERENCES rodoviario.VEICULO (id_veiculo)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_ITINERARIO_id_itinerario)
    REFERENCES rodoviario.ITINERARIO (id_itinerario)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.VEICULO ADD CONSTRAINT FK_VEICULO_3
    FOREIGN KEY (FK_EMPRESA_id_empresa)
    REFERENCES rodoviario.EMPRESA (id_empresa)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.VEICULO ADD CONSTRAINT FK_VEICULO_4
    FOREIGN KEY (FK_TIPO_ONIBUS_id_tipo_onibus)
    REFERENCES rodoviario.TIPO_ONIBUS (id_tipo_onibus)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.LINHA_PARADA ADD CONSTRAINT FK_LINHA_PARADA_2
    FOREIGN KEY (FK_LINHA_id_linha)
    REFERENCES rodoviario.LINHA (id_linha);
 
ALTER TABLE rodoviario.LINHA_PARADA ADD CONSTRAINT FK_LINHA_PARADA_3
    FOREIGN KEY (FK_PARADA_id_parada)
    REFERENCES rodoviario.PARADA (id_parada);
 
ALTER TABLE rodoviario.MEIO_PAGAMENTO_TERMINAL ADD CONSTRAINT FK_MEIO_PAGAMENTO_TERMINAL_1
    FOREIGN KEY (FK_MEIO_PAGAMENTO_id_meio_pagamento)
    REFERENCES rodoviario.MEIO_PAGAMENTO (id_meio_pagamento)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.MEIO_PAGAMENTO_TERMINAL ADD CONSTRAINT FK_MEIO_PAGAMENTO_TERMINAL_2
    FOREIGN KEY (FK_TERMINAL_id_terminal)
    REFERENCES rodoviario.TERMINAL (id_terminal)
    ON DELETE SET NULL;
 
ALTER TABLE rodoviario.CONEXAO ADD CONSTRAINT FK_CONEXAO_1
    FOREIGN KEY (FK_LINHA_id_linha)
    REFERENCES rodoviario.LINHA (id_linha)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.CONEXAO ADD CONSTRAINT FK_CONEXAO_2
    FOREIGN KEY (FK_TERMINAL_id_terminal)
    REFERENCES rodoviario.TERMINAL (id_terminal)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.LINHA_PARADA_ITINERARIO ADD CONSTRAINT FK_LINHA_PARADA_ITINERARIO_1
    FOREIGN KEY (FK_LINHA_PARADA_LINHA_PARADA_id_linha_parada)
    REFERENCES rodoviario.LINHA_PARADA (id_linha_parada)
    ON DELETE RESTRICT;
 
ALTER TABLE rodoviario.LINHA_PARADA_ITINERARIO ADD CONSTRAINT FK_LINHA_PARADA_ITINERARIO_2
    FOREIGN KEY (FK_ITINERARIO_id_itinerario)
    REFERENCES rodoviario.ITINERARIO (id_itinerario)
    ON DELETE RESTRICT;