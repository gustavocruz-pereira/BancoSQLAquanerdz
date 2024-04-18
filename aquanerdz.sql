CREATE TABLE CARGOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(30) NOT NULL
);


CREATE TABLE USUARIOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(180) NOT NULL,
    senha VARCHAR(90) NOT NULL,
    id_cargo INT,
    FOREIGN KEY (id_cargo) REFERENCES CARGOS(id)
);


CREATE TABLE TELEFONES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    cod SMALLINT,
    te_num BIGINT,
    FOREIGN KEY (id_user) REFERENCES USUARIOS(id)
);


CREATE TABLE PEIXES (
   id INT AUTO_INCREMENT PRIMARY KEY, 
   nome_peixe VARCHAR(255), 
   nome_cientifico VARCHAR(255), 
   media_peso DECIMAL, 
   media_tamanho DECIMAL
);


CREATE TABLE SISTEMAS (
   id INT AUTO_INCREMENT PRIMARY KEY, 
   nome_sistema VARCHAR(255), 
   qto_peixe INT, 
   tamanho_tanque DECIMAL, 
   id_user INT, 
   id_peixe INT,  
   FOREIGN KEY (id_user) REFERENCES USUARIOS(id),
   FOREIGN KEY (id_peixe) REFERENCES PEIXES(id)
);


CREATE TABLE SISTEMA_VALORES (
  id INT AUTO_INCREMENT PRIMARY KEY,  
  temperatura DECIMAL,  
  alimentador DATETIME,  
  oxigenacao DECIMAL,
  id_sistema INT,
  FOREIGN KEY (id_sistema) REFERENCES SISTEMAS(id)
);
