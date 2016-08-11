create database RegiVisitas 
use RegiVisitas
CREATE TABLE `TIPO_DOCU` (

`CODI_TIPO_DOCU` bigint(64) NOT NULL,

`NOMB_TIPO_DOCU` varchar(50) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_DOCU`) ,

UNIQUE INDEX `IDX_TIPO_DOCU` (`CODI_TIPO_DOCU`)

);



CREATE TABLE `UBIC_GEOG` (

`CODI_UBIC_GEOG` bigint(64) NOT NULL,

`NOMB_UBIC_GEOG` varchar(200) NULL,

`CODI_UBIC_GEOG_SUPE` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_UBIC_GEOG`) 

);



CREATE TABLE `VISI` (

`CODI_VISI` bigint(64) NOT NULL COMMENT 'CODIGO DE LA VISITA',

`CODI_USUA` bigint(64) NULL COMMENT 'USUARIO QUE REGISTRA LA VISITA',

`CODI_PERS` bigint(64) NULL COMMENT 'PERSONA QUE HACE LA VISITA',

`CODI_PERS_VISI` bigint(64) NULL COMMENT 'EMPLEADO QUE RECIBE LA VISITA',

`CODI_UNID_ORGA_VISI` bigint(64) NULL COMMENT 'UNIDAD ORGANIZATIVA QUE RECIBE LA VISITA',

`CODI_TIPO_DOCU` bigint(64) NULL,

`CODI_GAFE` bigint(64) NULL COMMENT 'CODIGO DEL GAFETE QUE LO IDENTIFICA',

`CODI_LUGA_ENTR` bigint(64) NULL COMMENT 'CODIGO DEL LUGAR DE ACCESO A LA VISITA',

`CODI_LUGA_SALI` bigint(64) NULL COMMENT 'CODIGO DEL LUGAR DONDE SALE LA VISITA',

`FECH_HORA_ENTR_VISI` datetime NULL COMMENT 'FECHA Y HORA DE LA ENTRADA DE VISITA',

`FECH_HORA_SALI_VISI` datetime NULL COMMENT 'FECHA Y HORA DE LA SALIDA DE VISITA',

`MOTI_VISI` varchar(255) NULL COMMENT 'MOTIVO DE LA VISITA',

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_VISI`) 

);



CREATE TABLE `LUGA_ACCE` (

`CODI_LUGA_ACCE` bigint(64) NOT NULL,

`NOMB_LUGA_ACCE` varchar(100) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_LUGA_ACCE`) 

);



CREATE TABLE `EQUI_COMP` (

`CODI_EQUI_COMP` bigint(64) NOT NULL,

`NOMB_EQUI_COM` varchar(100) NULL,

`CODI_LUGA_ACCE` bigint(64) NULL,

`MAC_ADDR_EQUI_COMP` varchar(50) NULL,

`IP_ADDR_EQUI_COMP` varchar(50) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_EQUI_COMP`) 

);



CREATE TABLE `GAFE_IDEN` (

`CODI_GAFE_IDEN` bigint(64) NOT NULL,

`NOMB_GAFE_IDEN` varchar(200) NULL,

`NUME_TIPO_GAFE` varchar(200) NULL,

`CODI_TIPO_GAFE` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_GAFE_IDEN`) 

);



CREATE TABLE `UNID_ORGA` (

`CODI_UNID_ORGA` bigint(64) NOT NULL,

`NOMB_UNID_ORGA` varchar(100) NULL,

`SIGL_UNID_ORGA` varchar(100) NULL,

`CODI_UNID_ORGA_SUPE` bigint(64) NULL,

`DIRE_UNID_ORGA` varchar(200) NULL,

`TELE_UNID_ORGA` varchar(20) NULL,

`FAX_UNID_ORGA` varchar(20) NULL,

`EMAI_UNID_ORGA` varchar(50) NULL,

`CONT_UNID_ORGA` varchar(100) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_UNID_ORGA`) 

);



CREATE TABLE `PERS` (

`CODI_PERS` bigint(64) NOT NULL,

`NOMB_PERS` varchar(255) NULL,

`APEL_PERS` varchar(255) NULL,

`FOTO_PERS` varchar(255) NULL,

`CODI_TIPO_PERS` bigint(64) NULL,

`GENE_PERS` char(1) NULL,

`FECH_NACI_PERS` datetime NULL,

`DUI_PERS` varchar(50) NULL,

`NIT_PERS` varchar(50) NULL,

`TIPO_SANG_PERS` varchar(50) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_PERS`) 

);



CREATE TABLE `TIPO_GAFE` (

`CODI_TIPO_GAFE` bigint(64) NOT NULL,

`NOMB_TIPO_GAFE` varchar(200) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_GAFE`) 

);



CREATE TABLE `TIPO_PERS` (

`CODI_TIPO_PERS` bigint(64) NOT NULL,

`NOMB_TIPO_PERS` varchar(150) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_PERS`) 

);



CREATE TABLE `PERS_HIST` (

`CODI_PERS_HIST` bigint(64) NOT NULL,

`CODI_PERS` bigint(64) NULL,

`NOMB_PERS` varchar(255) NULL,

`APEL_PERS` varchar(255) NULL,

`FOTO_PERS` varchar(255) NULL,

`CODI_TIPO_PERS` bigint(64) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_PERS_HIST`) 

);



CREATE TABLE `USUA` (

`CODI_USUA` bigint(64) NOT NULL,

`CODI_PERS` bigint(64) NULL,

`ACCE_USUA` varchar(255) NULL,

`CONT_USUA` varchar(255) NULL,

`FECH_CAMB_CLAV_USUA` datetime NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_USUA`) 

);





ALTER TABLE `GAFE_IDEN` ADD CONSTRAINT `FK_GAFEIDEN_TIPOIDEN` FOREIGN KEY (`CODI_TIPO_GAFE`) REFERENCES `TIPO_GAFE` (`CODI_TIPO_GAFE`);

ALTER TABLE `UNID_ORGA` ADD CONSTRAINT `FK_UNIDORGA_UNIDORGA` FOREIGN KEY (`CODI_UNID_ORGA_SUPE`) REFERENCES `UNID_ORGA` (`CODI_UNID_ORGA`);

ALTER TABLE `EQUI_COMP` ADD CONSTRAINT `FK_EQUICOMP_LUGAACCE` FOREIGN KEY (`CODI_LUGA_ACCE`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `UBIC_GEOG` ADD CONSTRAINT `FK_UBICGEOG_UBICGEOG` FOREIGN KEY (`CODI_UBIC_GEOG_SUPE`) REFERENCES `UBIC_GEOG` (`CODI_UBIC_GEOG`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_LUGAACCE_ENTR` FOREIGN KEY (`CODI_LUGA_ENTR`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_LUGAACCE_SALI` FOREIGN KEY (`CODI_LUGA_SALI`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_GAFEINDEN` FOREIGN KEY (`CODI_GAFE`) REFERENCES `GAFE_IDEN` (`CODI_GAFE_IDEN`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_UNIDORGA` FOREIGN KEY (`CODI_UNID_ORGA_VISI`) REFERENCES `UNID_ORGA` (`CODI_UNID_ORGA`);

ALTER TABLE `UNID_ORGA` ADD CONSTRAINT `FK_UNIDORGA_UBICGEOG` FOREIGN KEY (`CODI_UBIC_GEOG`) REFERENCES `UBIC_GEOG` (`CODI_UBIC_GEOG`);

ALTER TABLE `PERS` ADD CONSTRAINT `FK_PERS_TIPOPERS` FOREIGN KEY (`CODI_TIPO_PERS`) REFERENCES `TIPO_PERS` (`CODI_TIPO_PERS`);

ALTER TABLE `PERS_HIST` ADD CONSTRAINT `FK_PERSHIST_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS` (`CODI_PERS`);

ALTER TABLE `PERS_HIST` ADD CONSTRAINT `FK_PERSHIST_TIPOPERS` FOREIGN KEY (`CODI_TIPO_PERS`) REFERENCES `TIPO_PERS` (`CODI_TIPO_PERS`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_PERSHIST_USUA` FOREIGN KEY (`CODI_USUA`) REFERENCES `USUA` (`CODI_USUA`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_PERSHIST_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS_HIST` (`CODI_PERS_HIST`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_TIPODOCU` FOREIGN KEY (`CODI_TIPO_DOCU`) REFERENCES `TIPO_DOCU` (`CODI_TIPO_DOCU`);

ALTER TABLE `USUA` ADD CONSTRAINT `FK_USUA_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS` (`CODI_PERS`);

SELECT * FROM UNID_ORGA;

INSERT INTO UBIC_GEOG VALUES(1,'Nombre Ubicacion 1',NULL,NOW(),NOW(),1);
INSERT INTO UBIC_GEOG VALUES(2,'Nombre Ubicacion 2',NULL,NOW(),NOW(),1);
INSERT INTO UBIC_GEOG VALUES(3,'Nombre Ubicacion 3',NULL,NOW(),NOW(),1);

SELECT * FROM UBIC_GEOG;

INSERT INTO UNID_ORGA VALUES(1,'Organizacion 1','O1', NULL,'Direccion 1','78888888','78888888','email@email.com','10',1,NOW(),NOW(),1);
INSERT INTO UNID_ORGA VALUES(2,'Organizacion 2','O2', NULL,'Direccion 2','78888888','78888888','email@email.com','10',2,NOW(),NOW(),1);
INSERT INTO UNID_ORGA VALUES(3,'Organizacion 3','O3', NULL,'Direccion 3','78888888','78888888','email@email.com','10',3,NOW(),NOW(),1);

SELECT * FROM UNID_ORGA;

INSERT INTO TIPO_PERS VALUES(1,'Tipo Persona 1',NOW(),NOW(),1);
INSERT INTO TIPO_PERS VALUES(2,'Tipo Persona 2',NOW(),NOW(),1);
INSERT INTO TIPO_PERS VALUES(3,'Tipo Persona 3',NOW(),NOW(),1);
SELECT * FROM TIPO_PERS;

INSERT INTO PERS VALUES(1,'Alvin','Baires',NULL,1,'M',NOW(),'02015102-3','1213-233234-223-2','RH+',NULL,NOW(),NOW(),1);
INSERT INTO PERS VALUES(2,'Carlos','Rellenado',NULL,1,'M',NOW(),'02015102-3','1213-233234-223-2','RH+',NULL,NOW(),NOW(),1);
INSERT INTO PERS VALUES(3,'Carmen','Fenty',NULL,1,'M',NOW(),'02015102-3','1213-233234-223-2','RH+',NULL,NOW(),NOW(),1);
SELECT * FROM PERS;

INSERT INTO USUA VALUES(1,1,'Usuario1','Contra1',NOW(),NOW(),NOW(),1);
INSERT INTO USUA VALUES(2,2,'Usuario2','Contra2',NOW(),NOW(),NOW(),1);
INSERT INTO USUA VALUES(3,3,'Usuario3','Contra3',NOW(),NOW(),NOW(),1);
SELECT * FROM USUA;

INSERT INTO LUGA_ACCE VALUES(1,'Lugar 1',NOW(),NOW(),1);
INSERT INTO LUGA_ACCE VALUES(2,'Lugar 2',NOW(),NOW(),1);
INSERT INTO LUGA_ACCE VALUES(3,'Lugar 3',NOW(),NOW(),1);
SELECT * FROM LUGA_ACCE;

INSERT INTO EQUI_COMP VALUES(1,'Equipo 1',1,'MAC1','IP1',NOW(),NOW(),1);
INSERT INTO EQUI_COMP VALUES(2,'Equipo 2',2,'MAC2','IP2',NOW(),NOW(),1);
INSERT INTO EQUI_COMP VALUES(3,'Equipo 3',3,'MAC3','IP3',NOW(),NOW(),1);
SELECT * FROM EQUI_COMP;

INSERT INTO TIPO_GAFE VALUES(1,'Tipo Gafe 1',NOW(),NOW(),1);
INSERT INTO TIPO_GAFE VALUES(2,'Tipo Gafe 2',NOW(),NOW(),1);
INSERT INTO TIPO_GAFE VALUES(3,'Tipo Gafe 3',NOW(),NOW(),1);
SELECT * FROM TIPO_GAFE;

INSERT INTO GAFE_IDEN VALUES(1,'Gafe 1','Numero Tipo 1',1,NOW(),NOW(),1);
INSERT INTO GAFE_IDEN VALUES(2,'Gafe 2','Numero Tipo 2',1,NOW(),NOW(),1);
INSERT INTO GAFE_IDEN VALUES(3,'Gafe 3','Numero Tipo 3',1,NOW(),NOW(),1);
SELECT * FROM GAFE_IDEN;

INSERT INTO TIPO_DOCU VALUES(1,'Tipo Documento 1',NOW(),NOW(),1);
INSERT INTO TIPO_DOCU VALUES(2,'Tipo Documento 2',NOW(),NOW(),1);
INSERT INTO TIPO_DOCU VALUES(3,'Tipo Documento 3',NOW(),NOW(),1);
SELECT * FROM TIPO_DOCU;

INSERT INTO PERS_HIST VALUES(1,1,'Nombre 1','Apellido 1',NULL,1,NULL,NOW(),NOW(),1);
INSERT INTO PERS_HIST VALUES(2,2,'Nombre 2','Apellido 3',NULL,1,NULL,NOW(),NOW(),1);
INSERT INTO PERS_HIST VALUES(3,3,'Nombre 3','Apellido 3',NULL,1,NULL,NOW(),NOW(),1);
SELECT * FROM PERS_HIST;

INSERT INTO VISI VALUES(1,1,1,NULL,1,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(2,2,2,NULL,1,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(3,3,3,NULL,1,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(4,1,1,NULL,2,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(5,2,2,NULL,2,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(6,3,3,NULL,2,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(7,1,1,NULL,3,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(8,2,2,NULL,3,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
INSERT INTO VISI VALUES(9,3,3,NULL,3,1,1,1,1,NOW(),NOW(),'Sin Motivo',NOW(),NOW(),1);
SELECT * FROM VISI;

SELECT * FROM PERS