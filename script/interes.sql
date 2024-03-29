

/*==============================================================*/
/* Table: INTERES                                               */
/*==============================================================*/
create table INTERES (
   ID_INTERES           NUMERIC(10)          not null,
   ID_TIPO_INTERES      NUMERIC(10)          null,
   TASA                 DECIMAL(5,2)         null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_INTERES primary key (ID_INTERES)
);
