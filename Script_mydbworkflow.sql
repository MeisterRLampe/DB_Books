

09:18:41	USE `mydb`	0 row(s) affected	0.000 sec

09:18:41	DROP TABLE IF EXISTS `mydb`.`book`	0 row(s) affected	0.016 sec

09:18:41	CREATE TABLE IF NOT EXISTS `mydb`.`book` (   `Titel` VARCHAR(45) NULL DEFAULT NULL,   `ID` VARCHAR(45) NOT NULL,   PRIMARY KEY (`ID`),   UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE) ENGINE = InnoDB	0 row(s) affected	0.015 sec

09:18:41	DROP TABLE IF EXISTS `mydb`.`customer`	0 row(s) affected	0.031 sec

09:18:41	CREATE TABLE IF NOT EXISTS `mydb`.`customer` (   `idCustomer` INT(11) NOT NULL,   `Adresse` VARCHAR(45) NULL DEFAULT NULL,   `Name` VARCHAR(45) NULL DEFAULT NULL,   PRIMARY KEY (`idCustomer`),   UNIQUE INDEX `idCustomer_UNIQUE` (`idCustomer` ASC) VISIBLE) ENGINE = InnoDB	0 row(s) affected	0.016 sec

09:18:41	DROP TABLE IF EXISTS `mydb`.`transaction`	0 row(s) affected, 1 warning(s): 1051 Unknown table 'mydb.transaction'	0.000 sec

09:18:41	CREATE TABLE IF NOT EXISTS `mydb`.`transaction` (   `id_transaction` INT NOT NULL,   `ausgeliehen` VARCHAR(45) NULL,   `zurückgebracht` VARCHAR(45) NULL,   `customer_idCustomer` INT(11) NULL,   `book_ID` VARCHAR(45) NOT NULL,   PRIMARY KEY (`id_transaction`),   INDEX `fk_transaction_customer1_idx` (`customer_idCustomer` ASC) VISIBLE,   UNIQUE INDEX `id_transaction_UNIQUE` (`id_transaction` ASC) VISIBLE,   INDEX `fk_transaction_book1_idx` (`book_ID` ASC) VISIBLE,   CONSTRAINT `fk_transaction_customer1`     FOREIGN KEY (`customer_idCustomer`)     REFERENCES `mydb`.`customer` (`idCustomer`)     ON DELETE NO ACTION     ON UPDATE NO ACTION,   CONSTRAINT `fk_transaction_book1`     FOREIGN KEY (`book_ID`)     REFERENCES `mydb`.`book` (`ID`)     ON DELETE NO ACTION     ON UPDATE NO ACTION) ENGINE = InnoDB	0 row(s) affected	0.016 sec

09:18:41	SET SQL_MODE=@OLD_SQL_MODE	0 row(s) affected	0.000 sec

09:18:41	SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS	0 row(s) affected	0.000 sec

09:18:41	SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS	0 row(s) affected	0.000 sec

09:23:18	use mydb	0 row(s) affected	0.000 sec

09:30:18	SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0	0 row(s) affected	0.000 sec

09:30:18	SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0	0 row(s) affected	0.000 sec

09:30:18	SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION'	0 row(s) affected	0.000 sec

09:30:18	USE `mydb`	0 row(s) affected	0.000 sec

09:30:18	DROP TABLE IF EXISTS `mydb`.`book`	0 row(s) affected	0.015 sec

09:30:18	CREATE TABLE IF NOT EXISTS `mydb`.`book` (   `Titel` VARCHAR(45) NULL DEFAULT NULL,   `ID` VARCHAR(45) NOT NULL,   PRIMARY KEY (`ID`),   UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE) ENGINE = InnoDB	0 row(s) affected	0.016 sec

09:30:18	DROP TABLE IF EXISTS `mydb`.`customer`	0 row(s) affected	0.000 sec

09:30:18	CREATE TABLE IF NOT EXISTS `mydb`.`customer` (   `idCustomer` INT(11) NOT NULL,   `Adresse` VARCHAR(45) NULL DEFAULT NULL,   `Name` VARCHAR(45) NULL DEFAULT NULL,   PRIMARY KEY (`idCustomer`),   UNIQUE INDEX `idCustomer_UNIQUE` (`idCustomer` ASC) VISIBLE) ENGINE = InnoDB	0 row(s) affected	0.015 sec

09:30:18	DROP TABLE IF EXISTS `mydb`.`transaction`	0 row(s) affected	0.000 sec

09:30:18	CREATE TABLE IF NOT EXISTS `mydb`.`transaction` (   `id_transaction` INT NOT NULL,   `ausgeliehen` VARCHAR(45) NULL,   `zurückgebracht` VARCHAR(45) NULL,   `customer_idCustomer` INT(11) NULL,   `book_ID` VARCHAR(45) NOT NULL,   PRIMARY KEY (`id_transaction`),   INDEX `fk_transaction_customer1_idx` (`customer_idCustomer` ASC) VISIBLE,   UNIQUE INDEX `id_transaction_UNIQUE` (`id_transaction` ASC) VISIBLE,   INDEX `fk_transaction_book1_idx` (`book_ID` ASC) VISIBLE,   CONSTRAINT `fk_transaction_customer1`     FOREIGN KEY (`customer_idCustomer`)     REFERENCES `mydb`.`customer` (`idCustomer`)     ON DELETE NO ACTION     ON UPDATE NO ACTION,   CONSTRAINT `fk_transaction_book1`     FOREIGN KEY (`book_ID`)     REFERENCES `mydb`.`book` (`ID`)     ON DELETE NO ACTION     ON UPDATE NO ACTION) ENGINE = InnoDB	0 row(s) affected	0.016 sec

09:30:18	SET SQL_MODE=@OLD_SQL_MODE	0 row(s) affected	0.000 sec

09:30:18	SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS	0 row(s) affected	0.000 sec

09:30:18	SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS	0 row(s) affected	0.000 sec

09:36:44	use mydb	0 row(s) affected	0.000 sec

09:37:30	use mydb	0 row(s) affected	0.000 sec

09:37:30	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter1',1)	1 row(s) affected	0.000 sec

09:38:36	SELECT * FROM book	1 row(s) returned	0.000 sec / 0.000 sec

09:38:50	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter2',2)	1 row(s) affected	0.000 sec

09:38:52	SELECT * FROM book	2 row(s) returned	0.000 sec / 0.000 sec

09:39:03	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter3',3)	1 row(s) affected	0.000 sec

09:39:07	SELECT * FROM book	3 row(s) returned	0.000 sec / 0.000 sec

09:44:22	UPDATE book SET Titel ="Horst" Where id="3"	1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0	0.000 sec

09:57:38	DELETE FROM book Where id="3"	1 row(s) affected	0.000 sec

09:57:43	SELECT * FROM book	2 row(s) returned	0.000 sec / 0.000 sec

10:02:02	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter4',4)	1 row(s) affected	0.000 sec

10:02:06	use mydb	0 row(s) affected	0.000 sec

10:02:06	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter5',5)	1 row(s) affected	0.000 sec

10:02:06	SELECT * FROM book	4 row(s) returned	0.000 sec / 0.000 sec

10:02:06	UPDATE book SET Titel ="Horst" Where id="3"	0 row(s) affected Rows matched: 0  Changed: 0  Warnings: 0	0.000 sec

10:02:06	DELETE FROM book Where id="3"	0 row(s) affected	0.000 sec

10:02:14	SELECT * FROM book	4 row(s) returned	0.000 sec / 0.000 sec

10:02:21	use mydb	0 row(s) affected	0.000 sec

10:02:21	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter3',3)	1 row(s) affected	0.000 sec

10:02:21	SELECT * FROM book	5 row(s) returned	0.000 sec / 0.000 sec

10:02:21	UPDATE book SET Titel ="Horst" Where id="3"	1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0	0.000 sec

10:02:21	DELETE FROM book Where id="3"	1 row(s) affected	0.000 sec

10:02:28	use mydb	0 row(s) affected	0.000 sec

10:02:28	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter6',6)	1 row(s) affected	0.000 sec

10:02:28	SELECT * FROM book	5 row(s) returned	0.000 sec / 0.000 sec

10:02:28	UPDATE book SET Titel ="Horst" Where id="3"	0 row(s) affected Rows matched: 0  Changed: 0  Warnings: 0	0.000 sec

10:02:28	DELETE FROM book Where id="3"	0 row(s) affected	0.000 sec

10:02:34	use mydb	0 row(s) affected	0.000 sec

10:02:34	INSERT INTO book (Titel, ID)  VALUES ('Harry Potter7',7)	1 row(s) affected	0.015 sec

10:02:34	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:02:34	UPDATE book SET Titel ="Horst" Where id="3"	0 row(s) affected Rows matched: 0  Changed: 0  Warnings: 0	0.000 sec

10:02:34	DELETE FROM book Where id="3"	0 row(s) affected	0.000 sec

10:27:44	SELECT * FROM customer	0 row(s) returned	0.000 sec / 0.000 sec

10:34:11	use mydb	0 row(s) affected	0.000 sec

10:34:26	ALTER TABLE book ADD Pages varchar(45)	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.062 sec

10:34:33	SELECT * FROM customer	0 row(s) returned	0.000 sec / 0.000 sec

10:34:41	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:37:30	ALTER TABLE book DROP Pages	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.015 sec

10:37:33	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:37:59	ALTER TABLE book ADD Pages varchar(45) NOT NULL	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.031 sec

10:38:26	ALTER TABLE book DROP Pages	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.015 sec

10:39:22	SELECT * FROM book	6 row(s) returned	0.016 sec / 0.000 sec

10:39:33	ALTER TABLE book ADD Pages INT	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.031 sec

10:39:35	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:42:13	ALTER TABLE book auto_increment=1	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.016 sec

10:42:17	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:42:30	ALTER TABLE Pages auto_increment=1	Error Code: 1146. Table 'mydb.pages' doesn't exist	0.000 sec

    10:42:33	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

10:51:06	ALTER TABLE transaction add expireDate date	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.016 sec

10:51:49	ALTER TABLE transaction add borrowedOn date	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.016 sec

11:05:53	SELECT * FROM transaction	0 row(s) returned	0.000 sec / 0.000 sec

11:20:38	use mydb	0 row(s) affected	0.000 sec

11:20:40	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

11:20:58	Select * From Customer	0 row(s) returned	0.000 sec / 0.000 sec

11:23:07	insert customer (idCustomer, Adresse, Name) values (1,"Berg","Oink")	1 row(s) affected	0.016 sec

    11:23:54	insert customer (idCustomer, Adresse, Name) values (2,"Tal","Miau")	1 row(s) affected	0.015 sec

                                                                                                                                                                                                                                                       11:23:54	insert customer (idCustomer, Adresse, Name) values (3,"Fahrt","Wuff")	1 row(s) affected	0.000 sec

                                                                                                                                                                                                                                                       11:23:54	insert customer (idCustomer, Adresse, Name) values (4,"Abfahrt","Bam")	1 row(s) affected	0.000 sec

                                                                                                                                                                                                                                                       11:24:10	Select * From Customer	4 row(s) returned	0.000 sec / 0.000 sec

11:24:29	SELECT * FROM transaction	0 row(s) returned	0.000 sec / 0.000 sec

11:28:28	ALTER TABLE transaction DROP COLUMN ausgeliehen	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.016 sec

11:28:44	ALTER TABLE transaction DROP COLUMN zurückgebracht	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.015 sec

11:29:17	ALTER TABLE transaction add borrowedOn date	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.015 sec

11:29:37	ALTER TABLE transaction add expired date	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.016 sec

11:30:41	SELECT * FROM transaction	0 row(s) returned	0.000 sec / 0.000 sec

11:37:15	insert transaction(id_transaction, customer_idCustomer,book_ID,borrowedOn,expired) values (1,1,"1",'2004-02-22','2004-03-22')	1 row(s) affected	0.000 sec

    11:38:23	insert transaction(id_transaction, customer_idCustomer,book_ID,borrowedOn,expired) values (2,2,"2",'2004-02-23','2004-03-23')	1 row(s) affected	0.015 sec

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          11:38:48	SELECT * FROM transaction	2 row(s) returned	0.000 sec / 0.000 sec

11:39:04	SELECT * FROM book	6 row(s) returned	0.000 sec / 0.000 sec

11:39:30	SELECT * From transaction	2 row(s) returned	0.000 sec / 0.000 sec

11:45:54	UPDATE transaction Set expired='2004-04-23' Where id_transaction =1	1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0	0.000 sec

11:45:59	SELECT * From transaction	2 row(s) returned	0.000 sec / 0.000 sec

11:47:01	UPDATE transaction set borrowedOn='2004-04-22' Where id_transaction=1	1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0	0.015 sec

11:47:07	SELECT * From transaction	2 row(s) returned	0.000 sec / 0.000 sec

11:49:45	SELECT * From transaction Where borrowedOn = "2004-02-01"	0 row(s) returned	0.000 sec / 0.000 sec

11:51:52	SELECT * From transaction Where borrowedOn Between "2004-02-01" and 2004-02-30	0 row(s) returned	0.000 sec / 0.000 sec

11:52:23	SELECT * From transaction Where borrowedOn Between "2004-02-01" and '2004-02-30'	1 row(s) returned	0.000 sec / 0.000 sec

11:56:43	SELECT * ,customer.name From transaction join customer  Where borrowedOn Between '2004-02-01' and '2004-02-30'	4 row(s) returned	0.032 sec / 0.000 sec

11:57:06	use mydb	0 row(s) affected	0.000 sec

11:57:10	SELECT  customer.name From transaction join customer  Where borrowedOn Between '2004-02-01' and '2004-02-30'	4 row(s) returned	0.015 sec / 0.000 sec

11:57:27	SELECT *  ,customer.name From transaction join customer  Where borrowedOn Between '2004-02-01' and '2004-02-30'	4 row(s) returned	0.000 sec / 0.000 sec

11:59:08	SELECT *  ,customer.name From transaction join customer on customer_idCustomer=id_transaction Where borrowedOn Between '2004-02-01' and '2004-02-30'	4 row(s) returned	0.000 sec / 0.000 sec

11:59:57	SELECT *  ,customer.name From transaction join customer on customer_idCustomer=idCustomer Where borrowedOn Between '2004-02-01' and '2004-02-30'	1 row(s) returned	0.000 sec / 0.000 sec

12:00:26	SELECT* from customer	4 row(s) returned	0.000 sec / 0.000 sec
