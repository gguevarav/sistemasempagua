DROP DATABASE IF EXISTS bd_sistemas_empagua;

CREATE DATABASE bd_sistemas_empagua;

USE bd_sistemas_empagua;

CREATE TABLE Navegador(
    idNavegador                     TINYINT             NOT NULL				PRIMARY KEY             AUTO_INCREMENT,
    NombreNavegador                 VARCHAR(25)         NOT NULL,
    VersionNavegador                VARCHAR(10)         NOT NULL,
    LogoNavegador                   VARCHAR(50)         NOT NULL
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_spanish_ci;

CREATE TABLE Sistema(
    idSistema                       TINYINT             NOT NULL				PRIMARY KEY             AUTO_INCREMENT,
    NombreSistema                   VARCHAR(50)         NOT NULL,
    DireccionSistema                VARCHAR(100)        NOT NULL,
    DescripcionSistema              VARCHAR(150)        NOT NULL,
    LogoSistema                     VARCHAR(50)         NOT NULL
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_spanish_ci;

CREATE TABLE ListadoNavegadores(
    idListadoNavegadores            TINYINT             NOT NULL				PRIMARY KEY             AUTO_INCREMENT,
    idNavegador                     TINYINT             NOT NULL,
    idSistema                       TINYINT             NOT NULL,
    INDEX (idNavegador),
    FOREIGN KEY (idNavegador)
            REFERENCES Navegador(idNavegador)
            ON DELETE CASCADE
            ON UPDATE NO ACTION,
    INDEX (idSistema),
    FOREIGN KEY (idSistema)
            REFERENCES Sistema(idSistema)
            ON DELETE CASCADE
            ON UPDATE NO ACTION
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_spanish_ci;

-- Insersión de listado de sistemas
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Sistema de tickets", "http://10.4.2.9/tickets", "Sistema de tickets", "tickets.jpg");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Sistema de inventario", "http://10.4.2.9/infrainv", "Sistema de inventarios de infraestructura", "infrainv.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Analíticas", "http://10.4.2.9/analiticas", "Sistema de Analíticas", "analiticas.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "STCv6", "http://10.4.2.10:8088/stcv6", "Sistema comercial", "stcv6.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Reportes Empagua", "http://10.4.2.10:8090/desareports", "Sistema de reportes de empagua", "desareports.gif");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SIGE", "http://10.4.2.9:8088/sige", "Sistema de información gerencial", "sige.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SL", "http://sl.empagua.com/empagua/", "Sistema de lecturas", "slempagua.jpg");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SIG", "https://sig.empagua.com/sig.asp", "Sistema de información gerencial", "sigempagua.gif");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Correo Empagua", "http://mail.empagua.com/", "Correo institucional", "correoempagua.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "MCTR", "http://10.4.2.9:8087/emp_mctr", "Módulo de contratos", "mctr.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SAI", "http://10.4.2.9:8088/sai/", "Sistema de Administración de inventarios", "sai.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SCEPOT-VU", "http://10.4.2.9:8088/scepot", "Sistema de Control de Expedientes POT-VU", "scepot.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SOP", "http://10.4.2.9:8088/sop", "Módulo de Ordenes de pago", "sop.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "KAHI", "http://kahi.empagua.com", "KAHI", "kahi.svg");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Regularización", "http://10.4.2.9:8088/emp_regula", "Modulo de Regularización de Cuentas - Medidores", "regula.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SGC", "http://10.4.2.9:8087/emp_sgc", "Sistema de gestión de colas", "sgcempagua.jpg");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "CCR", "http://10.4.2.9:8088/ccr", "Sistema de control de cheques rechazados", "ccr.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "INGOB", "http://10.4.2.9:8088/ingob", "Ingresos de Gobierno", "ingob.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SGA", "http://sga.empagua.com:8080/sgabyte", "Sistema de gestión de alertas", "sgabyte.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "ACCESOS", "http://10.4.2.9:8088/accesos/Action#no", "Sistema de control de accesos", "accesos.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Control usuarios", "http://10.4.2.9:8088/controlusr/Action#no", "Sistema de control de accesos", "controlusr.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "CONVPAGOS", "http://10.4.2.9:8088/emp_conPagos", "Sistema de convenio de pagos", "convpagos.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "MSWEB", "http://10.4.2.9:8088/emp_msweb", "Modulo de seguridad web", "msweb.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SAC", "http://10.4.2.9:8088/emp_sac", "Sistema de administración de cuentas", "sac.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "webService", "http://10.4.2.9:8088/emp_webService", "Web Service Consulta de Clientes", "tomcat.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Facturas", "http://10.4.2.9:8088/facturas", "Sistema de Reimpresión de Facturas", "facturas.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Flujobancos", "http://10.4.2.9:8088/flujobancos", "Sistema de Flujo Bancos", "flujobancos.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Homologar", "http://10.4.2.9:8088/homologar", "Sistema de Homologación de Direcciones", "homologar.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Monitor", "http://10.4.2.9:8088/monitor", "Monitor", "monitor.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Seguridad", "http://10.4.2.9:8088/msweb", "Modulo de Seguridad Web", "msweb.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Multas", "http://10.4.2.9:8088/multas", "Sistema de Control de Multas-Municipalidad", "multas.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SLIMG", "http://10.4.2.9:8088/slmimg", "Sistema de Calificación de fotos", "slimg.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "TLGESTION", "http://10.4.2.9:8088/tlgestion", "Sistema de Telegestión", "tlgestion.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Cronolect", "http://10.4.2.9:8087/emp_cronolect", "Cronolect", "cronolect.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Dashboard", "http://10.4.2.9:8087/emp_grafic", "Sistema de Dashboard de ingresos", "dashboard.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "SGREP", "http://10.4.2.9:8087/emp_sgrep", "Sistea de gestión de reportes", "sgrep.png");
INSERT INTO Sistema (idSistema, NombreSistema, DireccionSistema, DescripcionSistema, LogoSistema) VALUES (NULL, "Analíticas", "http://10.4.2.9:8087", "Analíticas", "analiticas.png");
