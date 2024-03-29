

/*==============================================================*/
/* Table: ORGANIZACION_CREDITOS                                 */
/*==============================================================*/
create table ORGANIZACION_CREDITOS (
   ID_ORGANIZACION_CREDITO VARCHAR(50)          null,
   ID_ORGANIZACION      VARCHAR(50)          null,
   ID_CREDITO          VARCHAR(50)          null,
   constraint PK_ORGANIZACION_CREDITOS primary key (ID_ORGANIZACION_CREDITO)
);
