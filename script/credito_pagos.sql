

/*==============================================================*/
/* Table: CREDITO_PAGOS                                         */
/*==============================================================*/
create table CREDITO_PAGOS (
   ID_CREDITO_PAGO      NUMERIC(10)          not null,
   ID_CREDITO           NUMERIC(10)          null,
   MONTO                DECIMAL(10,2)        null,
   FECHA_PAGO           TIMESTAMP WITH TIME  ZONE,
   constraint PK_CREDITO_PAGOS primary key (ID_CREDITO_PAGO)
);