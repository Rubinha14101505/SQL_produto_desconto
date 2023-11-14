drop table demo;
CREATE TABLE Desconto
(dsc int NOT NULL,
 valor float NOT NULL,
 PRIMARY KEY (dsc)
);

SELECT * FROM Desconto

INSERT INTO Desconto (dsc, valor)
VALUES 
(1, "5%"),
(2, "10%"),
(3, "15%"),
(4, "20%"),
(5, "25%"),
(6, "30%"),
(7, "35%"),
(8, "40%")

CREATE TABLE Produto
(id_produto int not NULL PRIMARY KEY,
 valor_unit varchar(100) NOT NULL,
 qtd varchar(1000) NOT NULL,
 dsc int NOT NULL,
 FOREIGN KEY (dsc) REFERENCES Desconto(dsc)
 );
 
 INSERT INTO Produto (id_produto, valor_unit, qtd, dsc)
 VALUES ("1", "10,00", "2", "5%")

 INSERT INTO Produto (id_produto, valor_unit, qtd, dsc)
 VALUES ("2", "20,00", "4", "3%")

 INSERT INTO Produto (id_produto, valor_unit, qtd, dsc)
 VALUES ("3", "30,00", "8", "6%")
 
 INSERT INTO Produto (id_produto, valor_unit, qtd, dsc)
 VALUES ("4", "40,00", "10", "2%")

SELECT * FROM Produto



