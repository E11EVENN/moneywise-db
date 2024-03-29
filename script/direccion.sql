/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   BARRIO               VARCHAR(20)          not null,
   CIUDAD               VARCHAR(20)          null,
   DIRECCION            VARCHAR(20)          null,
   constraint PK_DIRECCION primary key (BARRIO)
);