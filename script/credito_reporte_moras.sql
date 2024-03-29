

/*==============================================================*/
/* Table: CREDITO_REPORTE_MORAS                                 */
/*==============================================================*/
create table CREDITO_REPORTE_MORAS (
   ID_CREDITO_REPORTE_MORAS NUMERIC(15)          not null,
   ID_CREDITO           NUMERIC(20)          null,
   MONTO                VARCHAR(50)          null,
   constraint PK_CREDITO_REPORTE_MORAS primary key (ID_CREDITO_REPORTE_MORAS)
);