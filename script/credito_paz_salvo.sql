


/*==============================================================*/
/* Table: CREDITO_PAZ_SALVO                                     */
/*==============================================================*/
create table CREDITO_PAZ_SALVO (
   ID_CREDITO_PAZ_SALVO NUMERIC(15)          not null,
   ID_CREDITO           NUMERIC(15)          null,
   FECHA_PAZ_SALVO      DATE                 null,
   constraint PK_CREDITO_PAZ_SALVO primary key (ID_CREDITO_PAZ_SALVO)
);