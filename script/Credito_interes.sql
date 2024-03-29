/*==============================================================*/
/* Table: CREDITO_INTERESES                                     */
/*==============================================================*/
create table CREDITO_INTERESES (
   ID_CREDITO_INTERESES NUMERIC(10)          not null,
   INTERES              NUMERIC(10)          null,
   ID_CREDITO           NUMERIC(10)          null,
   ID_TIPO_INTERES      NUMERIC(10)          null,
   constraint PK_CREDITO_INTERESES primary key (ID_CREDITO_INTERESES)
);