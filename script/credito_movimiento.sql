

/*==============================================================*/
/* Table: CREDITO_MOVIMIENTOS                                   */
/*==============================================================*/
create table CREDITO_MOVIMIENTOS (
   ID_MOVIMIENTOS       VARCHAR(25)          not null,
   ID_CREDITO           VARCHAR(50)          null,
   ID_TIPO_MOVIMIENTO   VARCHAR(50)          null,
   MONTO                DECIMAL(10,2)        null,
   FECHA_MOVIMIENTO     TIMESTAMP WITH TIME  ZONE,
   constraint PK_CREDITO_MOVIMIENTOS primary key (ID_MOVIMIENTOS)
);