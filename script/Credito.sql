
/*==============================================================*/
/* Table: CREDITO                                               */
/*==============================================================*/
create table CREDITO (
   ID_CREDITO           NUMERIC(10)          not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_TIPO_CREDITO      NUMERIC(10)          null,
   MONTO                DECIMAL(10,2)        null,
   FECHA_INICIO         DATE                 null,
   ESTADO               VARCHAR(2)           null,
   constraint PK_CREDITO primary key (ID_CREDITO)
);