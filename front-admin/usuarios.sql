Create table usuarios (
ID Int UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
login Varchar(30),
senha Varchar(40),
cpf varchar(12),
Primary Key (ID)) ENGINE = MyISAM;