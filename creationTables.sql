DROP TABLE DICTIONNAIRE CASCADE CONSTRAINTS;
CREATE TABLE DICTIONNAIRE(
	ID int GENERATED BY DEFAULT ON NULL AS IDENTITY,
    MOT varchar2(40) UNIQUE NOT NULL,
    CONSTRAINT PK_DICTIONNAIRE PRIMARY KEY (ID)
);

DROP TABLE COOCURRENCES;
CREATE TABLE COOCURRENCES(
    IDMOT int NOT NULL,
    IDCOOC int NOT NULL,
    TFENETRE int NOT NULL,
    FREQUENCE int NOT NULL,
    CONSTRAINT PK_COOCURRENCES PRIMARY KEY (IDMOT, IDCOOC),
    CONSTRAINT FK_IDMOT FOREIGN KEY (IDMOT) REFERENCES DICTIONNAIRE(ID) ON DELETE CASCADE,
    CONSTRAINT FK_IDCOOC FOREIGN KEY (IDCOOC) REFERENCES DICTIONNAIRE(ID) ON DELETE CASCADE
);
commit;