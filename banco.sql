CREATE TABLE veiculo 
( 
 marca INT,  
 modelo INT,  
 placa INT PRIMARY KEY,  
); 

CREATE TABLE loja 
( 
 nome INT PRIMARY KEY,  
 estado INT,  
); 

CREATE TABLE vendedor 
( 
 id_vendedor INT PRIMARY KEY,  
 loja INT,  
); 

CREATE TABLE Rel 
( 
 placa INT PRIMARY KEY,  
 nome INT PRIMARY KEY,  
); 

CREATE TABLE Rel1 
( 
 nome INT PRIMARY KEY,  
 id_vendedor INT PRIMARY KEY,  
); 

ALTER TABLE Rel ADD FOREIGN KEY(placa) REFERENCES veiculo (placa)
ALTER TABLE Rel ADD FOREIGN KEY(nome) REFERENCES loja (nome)
ALTER TABLE Rel1 ADD FOREIGN KEY(nome) REFERENCES loja (nome)
ALTER TABLE Rel1 ADD FOREIGN KEY(id_vendedor) REFERENCES vendedor (id_vendedor)
