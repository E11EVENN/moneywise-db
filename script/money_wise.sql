/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     20/03/2024 8:25:12 p. m.                     */
/*==============================================================*/


drop table CIUDAD;

drop table CLIENTE;

drop table CLIENTE_DIRECCIONES;

drop table CLIENTE_EMAIL;

drop table CLIENTE_TELEFONOS;

drop table CREDITO;

drop table CREDITO_CLIENTES;

drop table CREDITO_INTERESES;

drop table CREDITO_LOTE_PAGOS;

drop table CREDITO_MOVIMIENTOS;

drop table CREDITO_PAGOS;

drop table CREDITO_PAZ_SALVO;

drop table CREDITO_REPORTE_MORAS;

drop table DEPARTAMENTO;

drop table DIRECCION;

drop table INTERES;

drop table ORGANIZACION;

drop table ORGANIZACION_CLIENTES;

drop table ORGANIZACION_CREDITOS;

drop table ORGANIZACION_USUARIOS;

drop table PAIS;

drop table ROLES_USUARIO;

drop table TIPO_CLIENTE;

drop table TIPO_CREDITO;

drop table TIPO_DIRECCION;

drop table TIPO_DOCUMENTO;

drop table TIPO_EMAIL;

drop table TIPO_INTERES;

drop table TIPO_MOVIMIENTO;

drop table TIPO_TELEFONO;

drop table TIPO_USUARIO;

drop table USUARIO;

drop table USUARIO_EMAILS;

drop table USUARIO_ROLES;

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   ID_CIUDAD            NUMERIC(10)          not null,
   ID_DEPARTAMENTO      NUMERIC(10)          null,
   NOMBRE               CHAR(10)             null,
   INDICATIVO           VARCHAR(10)          null,
   FECHA_REGISTRO       DATE                 null,
   FECHA_ACTULIZACION   DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_CIUDAD primary key (ID_CIUDAD)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           NUMERIC(10)          not null,
   ID_CIUDAD            NUMERIC(10)          null,
   ID_CLIENTE_EMAIL     NUMERIC(10)          null,
   ID_DIRECCION         NUMERIC(10)          null,
   ID_TIPO_TELEFONO     NUMERIC(10)          null,
   NOMBRE               VARCHAR(20)          not null,
   APELLIDO             VARCHAR(30)          null,
   DOCUMENTO            VARCHAR(10)          null,
   FECHA_RESGISTRO      DATE                 null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: CLIENTE_DIRECCIONES                                   */
/*==============================================================*/
create table CLIENTE_DIRECCIONES (
   ID_DIRECCIONES       NUMERIC(10)          not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_DIRECCION         NUMERIC(10)          null,
   TIP_ID_DIRECCION     NUMERIC(10)          null,
   constraint PK_CLIENTE_DIRECCIONES primary key (ID_DIRECCIONES)
);

/*==============================================================*/
/* Table: CLIENTE_EMAIL                                         */
/*==============================================================*/
create table CLIENTE_EMAIL (
   ID_CLIENTE_EMAIL     NUMERIC(10)          not null,
   ID_TIPO_EMAIL        NUMERIC(10)          null,
   EMAIL                VARCHAR(100)         null,
   constraint PK_CLIENTE_EMAIL primary key (ID_CLIENTE_EMAIL)
);

/*==============================================================*/
/* Table: CLIENTE_TELEFONOS                                     */
/*==============================================================*/
create table CLIENTE_TELEFONOS (
   ID_CLIENTE_TELEFONO  NUMERIC(10)          not null,
   TELEFONO             VARCHAR(10)          null,
   constraint PK_CLIENTE_TELEFONOS primary key (ID_CLIENTE_TELEFONO)
);

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

/*==============================================================*/
/* Table: CREDITO_CLIENTES                                      */
/*==============================================================*/
create table CREDITO_CLIENTES (
   ID_CREDITO_CLIENTE   NUMERIC(10)          not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_CREDITO           NUMERIC(10)          null,
   constraint PK_CREDITO_CLIENTES primary key (ID_CREDITO_CLIENTE)
);

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

/*==============================================================*/
/* Table: CREDITO_LOTE_PAGOS                                    */
/*==============================================================*/
create table CREDITO_LOTE_PAGOS (
   ID_CREADITO_LOTE_PAGO NUMERIC(10)          not null,
   ID_CREDITO_PAGO      NUMERIC(10)          null,
   constraint PK_CREDITO_LOTE_PAGOS primary key (ID_CREADITO_LOTE_PAGO)
);

/*==============================================================*/
/* Table: CREDITO_MOVIMIENTOS                                   */
/*==============================================================*/
create table CREDITO_MOVIMIENTOS (
   ID_MOVIMIENTOS       NUMERIC(10)          not null,
   ID_CREDITO           NUMERIC(10)          null,
   ID_TIPO_MOVIMIENTO   NUMERIC(10)          null,
   MONTO                DECIMAL(10,2)        null,
   FECHA_MOVIMIENTO     DATE                 null,
   constraint PK_CREDITO_MOVIMIENTOS primary key (ID_MOVIMIENTOS)
);

/*==============================================================*/
/* Table: CREDITO_PAGOS                                         */
/*==============================================================*/
create table CREDITO_PAGOS (
   ID_CREDITO_PAGO      NUMERIC(10)          not null,
   ID_CREDITO           NUMERIC(10)          null,
   MONTO                DECIMAL(10,2)        null,
   FECHA_PAGO           DATE                 null,
   constraint PK_CREDITO_PAGOS primary key (ID_CREDITO_PAGO)
);

/*==============================================================*/
/* Table: CREDITO_PAZ_SALVO                                     */
/*==============================================================*/
create table CREDITO_PAZ_SALVO (
   ID_CREDITO_PAZ_SALVO NUMERIC(10)          not null,
   ID_CREDITO           NUMERIC(10)          null,
   FECHA_PAZ_SALVO      DATE                 null,
   constraint PK_CREDITO_PAZ_SALVO primary key (ID_CREDITO_PAZ_SALVO)
);

/*==============================================================*/
/* Table: CREDITO_REPORTE_MORAS                                 */
/*==============================================================*/
create table CREDITO_REPORTE_MORAS (
   ID_CREDITO_REPORTE_MORAS NUMERIC(10)          not null,
   ID_CREDITO           NUMERIC(10)          null,
   MONTO                VARCHAR(10)          null,
   constraint PK_CREDITO_REPORTE_MORAS primary key (ID_CREDITO_REPORTE_MORAS)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   ID_DEPARTAMENTO      NUMERIC(10)          not null,
   ID_PAIS              NUMERIC(10)          null,
   NOMBRE               VARCHAR(10)          null,
   INDICATIVO           VARCHAR(3)           null,
   FECHA_REGISTRO       DATE                 null,
   FECHA_ACTUALIZACION  DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   ID_DIRECCION         NUMERIC(10)          not null,
   constraint PK_DIRECCION primary key (ID_DIRECCION)
);

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

/*==============================================================*/
/* Table: ORGANIZACION                                          */
/*==============================================================*/
create table ORGANIZACION (
   ID_ORGANIZACION      NUMERIC(10)          not null,
   NOMBRE               VARCHAR(100)         null,
   constraint PK_ORGANIZACION primary key (ID_ORGANIZACION)
);

/*==============================================================*/
/* Table: ORGANIZACION_CLIENTES                                 */
/*==============================================================*/
create table ORGANIZACION_CLIENTES (
   ID_ORGANIZACION_CLIENTE NUMERIC(10)          not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_ORGANIZACION      NUMERIC(10)          null,
   constraint PK_ORGANIZACION_CLIENTES primary key (ID_ORGANIZACION_CLIENTE)
);

/*==============================================================*/
/* Table: ORGANIZACION_CREDITOS                                 */
/*==============================================================*/
create table ORGANIZACION_CREDITOS (
   ID_ORGANIZACION_CREDITO NUMERIC(10)          not null,
   ID_ORGANIZACION      NUMERIC(10)          null,
   ID_CREDITO           NUMERIC(10)          null,
   constraint PK_ORGANIZACION_CREDITOS primary key (ID_ORGANIZACION_CREDITO)
);

/*==============================================================*/
/* Table: ORGANIZACION_USUARIOS                                 */
/*==============================================================*/
create table ORGANIZACION_USUARIOS (
   ID_ORGANIZACION_USUARIO NUMERIC(10)          not null,
   ID_ORGANIZACION      NUMERIC(10)          null,
   ID_USUARIO           NUMERIC(10)          null,
   constraint PK_ORGANIZACION_USUARIOS primary key (ID_ORGANIZACION_USUARIO)
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
   ID_PAIS              NUMERIC(10)          not null,
   NOMBRE               VARCHAR(10)          null,
   INDICATIVO_TELEFONICO VARCHAR(10)          null,
   ESTADO               VARCHAR(10)          null,
   FECHA_RESGISTRO      DATE                 null,
   FECHA_ACTUALIZACION  DATE                 null,
   constraint PK_PAIS primary key (ID_PAIS)
);

/*==============================================================*/
/* Table: ROLES_USUARIO                                         */
/*==============================================================*/
create table ROLES_USUARIO (
   ID_USUARIO           NUMERIC(10)          not null,
   constraint PK_ROLES_USUARIO primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: TIPO_CLIENTE                                          */
/*==============================================================*/
create table TIPO_CLIENTE (
   ID_TIPO_CLEINTE      VARCHAR(2)           not null,
   ID_CLIENTE           NUMERIC(10)          null,
   DESCRIPCION          VARCHAR(10)          null,
   constraint PK_TIPO_CLIENTE primary key (ID_TIPO_CLEINTE)
);

/*==============================================================*/
/* Table: TIPO_CREDITO                                          */
/*==============================================================*/
create table TIPO_CREDITO (
   ID_TIPO_CREDITO      NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_CREDITO primary key (ID_TIPO_CREDITO)
);

/*==============================================================*/
/* Table: TIPO_DIRECCION                                        */
/*==============================================================*/
create table TIPO_DIRECCION (
   ID_DIRECCION         NUMERIC(10)          not null,
   constraint PK_TIPO_DIRECCION primary key (ID_DIRECCION)
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO (
   ID_TIPO_DOCUMENTO    NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TIPO_DOCUMENTO)
);

/*==============================================================*/
/* Table: TIPO_EMAIL                                            */
/*==============================================================*/
create table TIPO_EMAIL (
   ID_TIPO_EMAIL        NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_EMAIL primary key (ID_TIPO_EMAIL)
);

/*==============================================================*/
/* Table: TIPO_INTERES                                          */
/*==============================================================*/
create table TIPO_INTERES (
   ID_TIPO_INTERES      NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_INTERES primary key (ID_TIPO_INTERES)
);

/*==============================================================*/
/* Table: TIPO_MOVIMIENTO                                       */
/*==============================================================*/
create table TIPO_MOVIMIENTO (
   ID_TIPO_MOVIMIENTO   NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(10)          null,
   constraint PK_TIPO_MOVIMIENTO primary key (ID_TIPO_MOVIMIENTO)
);

/*==============================================================*/
/* Table: TIPO_TELEFONO                                         */
/*==============================================================*/
create table TIPO_TELEFONO (
   ID_TIPO_TELEFONO     NUMERIC(10)          not null,
   ID_CLIENTE_TELEFONO  NUMERIC(10)          null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_TELEFONO primary key (ID_TIPO_TELEFONO)
);

/*==============================================================*/
/* Table: TIPO_USUARIO                                          */
/*==============================================================*/
create table TIPO_USUARIO (
   ID_TIPO_USUARIO      NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(20)          null,
   constraint PK_TIPO_USUARIO primary key (ID_TIPO_USUARIO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           NUMERIC(10)          not null,
   ID_CIUDAD            NUMERIC(10)          null,
   ID_TIPO_USUARIO      NUMERIC(10)          null,
   ID_CLIENTE_EMAIL     NUMERIC(10)          null,
   NOMBRE_USUARIO       VARCHAR(20)          not null,
   NOMBRE               VARCHAR(20)          null,
   APELLIDO             VARCHAR(20)          null,
   constraint PK_USUARIO primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: USUARIO_EMAILS                                        */
/*==============================================================*/
create table USUARIO_EMAILS (
   USUARIO_IMAIL        NUMERIC(10)          not null,
   ID_TIPO_USUARIO      NUMERIC(10)          null,
   constraint PK_USUARIO_EMAILS primary key (USUARIO_IMAIL)
);

/*==============================================================*/
/* Table: USUARIO_ROLES                                         */
/*==============================================================*/
create table USUARIO_ROLES (
   ID_USUARIO_ROLES     NUMERIC(10)          not null,
   ID_TIPO_USUARIO      NUMERIC(10)          null,
   ID_USUARIO           NUMERIC(10)          null,
   ROL                  VARCHAR(10)          null,
   constraint PK_USUARIO_ROLES primary key (ID_USUARIO_ROLES)
);

alter table CIUDAD
   add constraint FK_CIUDAD_REFERENCE_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_CIUDAD foreign key (ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_CLIENTE_ foreign key (ID_CLIENTE_EMAIL)
      references CLIENTE_EMAIL (ID_CLIENTE_EMAIL)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_TIPO_TEL foreign key (ID_TIPO_TELEFONO)
      references TIPO_TELEFONO (ID_TIPO_TELEFONO)
      on delete restrict on update restrict;

alter table CLIENTE_DIRECCIONES
   add constraint FK_CLIENTE__REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CLIENTE_DIRECCIONES
   add constraint FK_CLIENTE__REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION)
      on delete restrict on update restrict;

alter table CLIENTE_DIRECCIONES
   add constraint FK_CLIENTE__REFERENCE_TIPO_DIR foreign key (TIP_ID_DIRECCION)
      references TIPO_DIRECCION (ID_DIRECCION)
      on delete restrict on update restrict;

alter table CLIENTE_EMAIL
   add constraint FK_CLIENTE__REFERENCE_TIPO_EMA foreign key (ID_TIPO_EMAIL)
      references TIPO_EMAIL (ID_TIPO_EMAIL)
      on delete restrict on update restrict;

alter table CREDITO
   add constraint FK_CREDITO_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CREDITO
   add constraint FK_CREDITO_REFERENCE_TIPO_CRE foreign key (ID_TIPO_CREDITO)
      references TIPO_CREDITO (ID_TIPO_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_CLIENTES
   add constraint FK_CREDITO__REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CREDITO_CLIENTES
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_INTERESES
   add constraint FK_CREDITO__REFERENCE_INTERES foreign key (INTERES)
      references INTERES (ID_INTERES)
      on delete restrict on update restrict;

alter table CREDITO_INTERESES
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_INTERESES
   add constraint FK_CREDITO__REFERENCE_TIPO_INT foreign key (ID_TIPO_INTERES)
      references TIPO_INTERES (ID_TIPO_INTERES)
      on delete restrict on update restrict;

alter table CREDITO_LOTE_PAGOS
   add constraint FK_CREDITO__REFERENCE_CREDITO_ foreign key (ID_CREDITO_PAGO)
      references CREDITO_PAGOS (ID_CREDITO_PAGO)
      on delete restrict on update restrict;

alter table CREDITO_MOVIMIENTOS
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_MOVIMIENTOS
   add constraint FK_CREDITO__REFERENCE_TIPO_MOV foreign key (ID_TIPO_MOVIMIENTO)
      references TIPO_MOVIMIENTO (ID_TIPO_MOVIMIENTO)
      on delete restrict on update restrict;

alter table CREDITO_PAGOS
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_PAZ_SALVO
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table CREDITO_REPORTE_MORAS
   add constraint FK_CREDITO__REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_REFERENCE_PAIS foreign key (ID_PAIS)
      references PAIS (ID_PAIS)
      on delete restrict on update restrict;

alter table INTERES
   add constraint FK_INTERES_REFERENCE_TIPO_INT foreign key (ID_TIPO_INTERES)
      references TIPO_INTERES (ID_TIPO_INTERES)
      on delete restrict on update restrict;

alter table ORGANIZACION_CLIENTES
   add constraint FK_ORGANIZA_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table ORGANIZACION_CLIENTES
   add constraint FK_ORGANIZA_REFERENCE_ORGANIZA foreign key (ID_ORGANIZACION)
      references ORGANIZACION (ID_ORGANIZACION)
      on delete restrict on update restrict;

alter table ORGANIZACION_CREDITOS
   add constraint FK_ORGANIZA_REFERENCE_ORGANIZA foreign key (ID_ORGANIZACION)
      references ORGANIZACION (ID_ORGANIZACION)
      on delete restrict on update restrict;

alter table ORGANIZACION_CREDITOS
   add constraint FK_ORGANIZA_REFERENCE_CREDITO foreign key (ID_CREDITO)
      references CREDITO (ID_CREDITO)
      on delete restrict on update restrict;

alter table ORGANIZACION_USUARIOS
   add constraint FK_ORGANIZA_REFERENCE_ORGANIZA foreign key (ID_ORGANIZACION)
      references ORGANIZACION (ID_ORGANIZACION)
      on delete restrict on update restrict;

alter table ORGANIZACION_USUARIOS
   add constraint FK_ORGANIZA_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table TIPO_CLIENTE
   add constraint FK_TIPO_CLI_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table TIPO_TELEFONO
   add constraint FK_TIPO_TEL_REFERENCE_CLIENTE_ foreign key (ID_CLIENTE_TELEFONO)
      references CLIENTE_TELEFONOS (ID_CLIENTE_TELEFONO)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_CIUDAD foreign key (ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_TIPO_USU foreign key (ID_TIPO_USUARIO)
      references TIPO_USUARIO (ID_TIPO_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_CLIENTE_ foreign key (ID_CLIENTE_EMAIL)
      references CLIENTE_EMAIL (ID_CLIENTE_EMAIL)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_TIPO_DOC foreign key (ID_USUARIO)
      references TIPO_DOCUMENTO (ID_TIPO_DOCUMENTO)
      on delete restrict on update restrict;

alter table USUARIO_EMAILS
   add constraint FK_USUARIO__REFERENCE_TIPO_USU foreign key (ID_TIPO_USUARIO)
      references TIPO_USUARIO (ID_TIPO_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO_ROLES
   add constraint FK_USUARIO__REFERENCE_ROLES_US foreign key (ID_USUARIO)
      references ROLES_USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO_ROLES
   add constraint FK_USUARIO__REFERENCE_TIPO_USU foreign key (ID_TIPO_USUARIO)
      references TIPO_USUARIO (ID_TIPO_USUARIO)
      on delete restrict on update restrict;

