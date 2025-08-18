USE bd_banca_inc_negocio;
GO

-- tipos de indicadores
SELECT * FROM tipos_indicador;

INSERT INTO tipos_indicador (nombre, descripcion) VALUES
('Financiero', 'Indicadores relacionados al desempeño económico y rentabilidad del banco, como colocaciones, depósitos, ingresos y márgenes.'),
('Operativo', 'Indicadores que miden la eficiencia de los procesos internos, como tiempos de atención, cumplimiento de tareas o volumen procesado.'),
('Atención al Cliente', 'Indicadores relacionados con la experiencia del cliente, como tiempos de espera, reclamos atendidos, encuestas de satisfacción.'),
('Normativo', 'Indicadores que reflejan el cumplimiento de requisitos legales o regulatorios establecidos por organismos supervisores como la SBS.'),
('Comercial', 'Indicadores ligados al rendimiento de productos financieros, campañas de ventas o captación de clientes.'),
('Riesgo', 'Indicadores que permiten monitorear exposición al riesgo, morosidad, provisiones o pérdidas esperadas.'),
('Tecnológico', 'Indicadores de disponibilidad de canales digitales, tiempos de respuesta del sistema, o número de incidencias TI.'),
('Capital Humano', 'Indicadores que reflejan desempeño, productividad y rotación del personal.'),
('Sostenibilidad', 'Indicadores relacionados con impacto ambiental, responsabilidad social o inclusión financiera.'),
('Gestión de Proyectos', 'Indicadores que miden avance, costo y cumplimiento de cronograma en proyectos estratégicos internos.');

-- empleados
SELECT*FROM empleados;

INSERT INTO empleados VALUES
('Rafaela', 'Plaza', '604876', 'Supervisor de Operaciones', 'Planificación', 'lpalma@gmail.com', '421948924'),
('Charo', 'Cabrero', '565938', 'Analista de Negocio', 'Operaciones', 'qvazquez@gmail.com', '160975351'),
('Nieves', 'Cisneros', '871158', 'Subgerente Regional', 'Recursos Humanos', 'matacarmen@yahoo.com', '858398947'),
('Coral', 'Herranz', '423209', 'Supervisor de Operaciones', 'Operaciones', 'fbayon@hotmail.com', '201868483'),
('Leonardo', 'Sanjuan', '751591', 'Gestor de Clientes', 'Comercial', 'ramona33@gmail.com', '135256012'),
('Vicente', 'Carrera', '736395', 'Especialista en Riesgos', 'Riesgos', 'angelcamara@hotmail.com', '801694170'),
('Estefanía', 'Mata', '067297', 'Coordinador de Zona', 'Planificación', 'matilde04@gmail.com', '281490718'),
('Daniela', 'Godoy', '517148', 'Analista de Negocio', 'TI', 'alarconcarlos@gmail.com', '517359561'),
('Ismael', 'Ferrero', '518370', 'Ejecutivo Comercial', 'Banca Empresa', 'tamayoantonia@hotmail.com', '302648416'),
('Ignacio', 'De la Torre', '607264', 'Asesor Financiero', 'Banca Personal', 'jantonio19@hotmail.com', '204153782'),
('Jesús', 'Alarcón', '783576', 'Analista de Negocio', 'TI', 'evaristo52@hotmail.com', '103928741'),
('Tamara', 'Espejo', '708392', 'Supervisor de Operaciones', 'Operaciones', 'fresnoangel@hotmail.com', '192048561'),
('Salvador', 'Escobar', '170467', 'Jefe de Sucursal', 'Banca Personal', 'cruzyolanda@gmail.com', '589471236'),
('Guillermo', 'Casas', '987390', 'Gestor de Clientes', 'Comercial', 'aylacampos@gmail.com', '613729504'),
('Ángela', 'Benítez', '055104', 'Ejecutivo Comercial', 'Banca Empresa', 'blasfeliu@hotmail.com', '285139807'),
('Aurora', 'Calle', '917352', 'Coordinador de Zona', 'Planificación', 'vargastamara@hotmail.com', '271654823'),
('Julián', 'Jorquera', '315280', 'Analista de Negocio', 'TI', 'cecilia08@gmail.com', '401875326'),
('Pilar', 'Rico', '408194', 'Supervisor de Operaciones', 'Operaciones', 'baldovinojose@gmail.com', '538174209'),
('Rocío', 'Castilla', '063812', 'Especialista en Riesgos', 'Riesgos', 'alonsorosa@gmail.com', '914082736'),
('Sergio', 'Pueyo', '199365', 'Subgerente Regional', 'Auditoría Interna', 'joaquin24@hotmail.com', '352801764'),
('Julio', 'Sáenz', '674721', 'Jefe de Sucursal', 'Banca Empresa', 'rociocabrera@hotmail.com', '201583974'),
('Sonia', 'Peinado', '891347', 'Ejecutivo Comercial', 'Comercial', 'bernadestefania@gmail.com', '871520964'),
('Mario', 'Rosales', '358072', 'Gestor de Clientes', 'Banca Personal', 'soledad98@gmail.com', '472180653'),
('Helena', 'Patiño', '894027', 'Asesor Financiero', 'Banca Personal', 'elisaalba@hotmail.com', '751904682'),
('Rebeca', 'Garrido', '032476', 'Analista de Negocio', 'TI', 'mariadelmar@hotmail.com', '928107364'),
('Samuel', 'Solano', '736512', 'Coordinador de Zona', 'Planificación', 'rosario66@gmail.com', '395726840'),
('Tomás', 'Quintana', '295840', 'Especialista en Riesgos', 'Riesgos', 'bmartinez@gmail.com', '314729805'),
('Manuela', 'Benavente', '930142', 'Supervisor de Operaciones', 'Operaciones', 'aureliovazquez@hotmail.com', '487329150'),
('Álvaro', 'Sevilla', '172805', 'Jefe de Sucursal', 'Banca Empresa', 'gabriel73@hotmail.com', '683274915'),
('Lucía', 'Monge', '190648', 'Gestor de Clientes', 'Comercial', 'teresatorres@hotmail.com', '902158374');


--- Indicadores 
SELECT*FROM indicadores;

ALTER TABLE indicadores
ADD descripcion VARCHAR(500) null

INSERT INTO indicadores (empleado_id, tipo_indicador_id, codigo, nombre, unidad_medida, descripcion) VALUES
(1, 1, 'IND001', 'Colocaciones Diarias', 'Monto (S/.)', 'Monto total colocado en créditos diarios por sucursal'),
(2, 1, 'IND002', 'Captación de Ahorros', 'Monto (S/.)', 'Monto diario captado en cuentas de ahorro'),
(3, 2, 'IND003', 'Transacciones Totales', 'Número', 'Número total de transacciones procesadas en el día'),
(4, 3, 'IND004', 'Tasa de Conversión de Ventas', 'Porcentaje', 'Porcentaje de oportunidades convertidas en ventas'),
(5, 4, 'IND005', 'Índice de Satisfacción', 'Índice', 'Promedio de satisfacción del cliente diario'),
(6, 5, 'IND006', 'Rentabilidad por Empleado', 'Ratio', 'Relación entre utilidad neta y número de empleados'),
(7, 6, 'IND007', 'Tiempo Promedio de Atención', 'Segundos', 'Tiempo promedio de atención por cliente'),
(8, 7, 'IND008', 'Cumplimiento de Metas', 'Porcentaje', 'Porcentaje de metas diarias alcanzadas'),
(9, 8, 'IND009', 'Índice de Mora', 'Porcentaje', 'Porcentaje de créditos vencidos frente al total'),
(10, 9, 'IND010', 'Crecimiento Diario', 'Porcentaje', 'Variación diaria de crecimiento de cartera'),
(11, 10, 'IND011', 'Indicador Global Diario', 'Índice', 'Índice de evaluación global diaria por sucursal'),
(12, 2, 'IND012', 'Operaciones por Empleado', 'Número', 'Cantidad de operaciones realizadas por cada colaborador'),
(13, 3, 'IND013', 'Tasa de Cross Selling', 'Porcentaje', 'Porcentaje de clientes con más de un producto'),
(14, 4, 'IND014', 'Índice de Retención', 'Porcentaje', 'Porcentaje de clientes que permanecen activos'),
(15, 5, 'IND015', 'Eficiencia Operativa', 'Ratio', 'Relación ingresos operativos frente a gastos'),
(16, 6, 'IND016', 'Tiempo de Espera', 'Segundos', 'Segundos promedio de espera antes de ser atendido'),
(17, 7, 'IND017', 'Desviación de Objetivos', 'Porcentaje', 'Porcentaje de desviación respecto al objetivo'),
(18, 8, 'IND018', 'Recuperación de Mora', 'Porcentaje', 'Porcentaje de recuperación frente a préstamos vencidos'),
(19, 9, 'IND019', 'Crecimiento Anualizado', 'Porcentaje', 'Proyección de crecimiento basada en el comportamiento actual'),
(20, 10, 'IND020', 'Cumplimiento Integral Diario', 'Índice', 'Evaluación diaria del cumplimiento total por unidad'),
(21, 1, 'IND021', 'Depósitos Diarios', 'Monto (S/.)', 'Monto total depositado en el día'),
(22, 2, 'IND022', 'Retiros Diarios', 'Monto (S/.)', 'Monto total retirado por los clientes'),
(23, 3, 'IND023', 'Conversión Digital', 'Porcentaje', 'Tasa de uso de canales digitales por clientes'),
(24, 4, 'IND024', 'Satisfacción Web', 'Índice', 'Nivel de satisfacción tras uso de la plataforma online'),
(25, 5, 'IND025', 'Rentabilidad por Zona', 'Ratio', 'Utilidad generada por unidad geográfica'),
(26, 6, 'IND026', 'Tiempo de Respuesta Web', 'Segundos', 'Tiempo promedio de carga de la web'),
(27, 7, 'IND027', 'Cumplimiento de KPIs Críticos', 'Porcentaje', 'Porcentaje de indicadores clave cumplidos'),
(28, 8, 'IND028', 'Créditos Vencidos', 'Porcentaje', 'Porcentaje de créditos con morosidad'),
(29, 9, 'IND029', 'Crecimiento Activos Financieros', 'Porcentaje', 'Aumento diario de activos financieros'),
(30, 10, 'IND030', 'Desempeño Integral Diario', 'Índice', 'Indicador global para medir rendimiento diario');


INSERT INTO ubigeos (ubigeo, departamento, provincia, distrito, region_natural) VALUES
('150101', 'LIMA', 'LIMA', 'LIMA', 'Costa'),
('150102', 'LIMA', 'LIMA', 'ANCON', 'Costa'),
('150103', 'LIMA', 'LIMA', 'ATE', 'Costa'),
('150104', 'LIMA', 'LIMA', 'BARRANCO', 'Costa'),
('150201', 'LIMA', 'HUARAL', 'HUARAL', 'Costa'),

('040101', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA', 'Sierra'),
('040102', 'AREQUIPA', 'AREQUIPA', 'CAYMA', 'Sierra'),
('040103', 'AREQUIPA', 'AREQUIPA', 'CERRO COLORADO', 'Sierra'),
('040104', 'AREQUIPA', 'AREQUIPA', 'YANAHUARA', 'Sierra'),
('040201', 'AREQUIPA', 'CAMANÁ', 'CAMANÁ', 'Costa'),

('130101', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO', 'Costa'),
('130102', 'LA LIBERTAD', 'TRUJILLO', 'EL PORVENIR', 'Costa'),
('130103', 'LA LIBERTAD', 'TRUJILLO', 'FLORENCIA DE MORA', 'Costa'),
('130104', 'LA LIBERTAD', 'TRUJILLO', 'HUANCHACO', 'Costa'),
('130201', 'LA LIBERTAD', 'ASCOPE', 'ASCOPE', 'Costa'),

('080101', 'CUSCO', 'CUSCO', 'CUSCO', 'Sierra'),
('080102', 'CUSCO', 'CUSCO', 'SAN SEBASTIAN', 'Sierra'),
('080103', 'CUSCO', 'CUSCO', 'SAN JERONIMO', 'Sierra'),
('080104', 'CUSCO', 'CUSCO', 'WANCHAQ', 'Sierra'),
('080201', 'CUSCO', 'ACOMAYO', 'ACOMAYO', 'Sierra'),

('200101', 'PIURA', 'PIURA', 'PIURA', 'Costa'),
('200102', 'PIURA', 'PIURA', 'CASTILLA', 'Costa'),
('200103', 'PIURA', 'PIURA', 'CATACAOS', 'Costa'),
('200104', 'PIURA', 'PIURA', 'CURA MORI', 'Costa'),
('200201', 'PIURA', 'AYABACA', 'AYABACA', 'Sierra');

INSERT INTO zonas (codigo, nombre) VALUES
('ZN001', 'Zona Norte'),
('ZS001', 'Zona Sur'),
('ZC001', 'Zona Centro'),
('ZO001', 'Zona Oriente'),
('ZO002', 'Zona Occidente');


INSERT INTO sucursales (zona_ubigeo_id, gerente_id, codigo, nombre, email, telefono, coordenada_gps)
VALUES
(1, 1, 'SUC001', 'Sucursal Lima Norte', 'norte@empresa.com', '999999991', geography::STPointFromText('POINT(-77.02824 -12.04318)', 4326)),
(2, 2, 'SUC002', 'Sucursal Arequipa', 'arequipa@empresa.com', '999999992', geography::STPointFromText('POINT(-71.53745 -16.40905)', 4326)),
(3, 3, 'SUC003', 'Sucursal Cusco', 'cusco@empresa.com', '999999993', geography::STPointFromText('POINT(-71.96746 -13.53195)', 4326)),
(4, 4, 'SUC004', 'Sucursal Piura', 'piura@empresa.com', '999999994', geography::STPointFromText('POINT(-80.63282 -5.19449)', 4326)),
(5, 5, 'SUC005', 'Sucursal Puno', 'puno@empresa.com', '999999995', geography::STPointFromText('POINT(-70.02188 -15.84022)', 4326));

select * from registros_indicadores_diarios;

INSERT INTO zona_ubigeos (zona_id, ubigeo_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


--falta este
INSERT INTO registros_indicadores_diarios (
    sucursal_id, indicador_id, fecha_reporte, valor_real, valor_meta,
    create_at, update_at, deleted_ad, create_by, update_by, deleted_by
) VALUES
(3, 1, '2025-08-01', 90, 100, GETDATE(), NULL, NULL, 1, NULL, NULL),
(3, 2, '2025-08-01', 50, 55, GETDATE(), NULL, NULL, 1, NULL, NULL),
(3, 1, '2025-08-01', 95, 100, GETDATE(), NULL, NULL, 2, NULL, NULL),
(6, 3, '2025-08-01', 70, 75, GETDATE(), NULL, NULL, 2, NULL, NULL),
(6, 1, '2025-08-01', 100, 100, GETDATE(), NULL, NULL, 3, NULL, NULL),
(6, 2, '2025-08-01', 55, 60, GETDATE(), NULL, NULL, 3, NULL, NULL),
(4, 1, '2025-08-01', 92, 100, GETDATE(), NULL, NULL, 4, NULL, NULL),
(4, 3, '2025-08-01', 72, 80, GETDATE(), NULL, NULL, 4, NULL, NULL),
(5, 2, '2025-08-01', 58, 60, GETDATE(), NULL, NULL, 5, NULL, NULL),
(5, 3, '2025-08-01', 77, 75, GETDATE(), NULL, NULL, 5, NULL, NULL),
(7, 1, '2025-08-02', 91, 100, GETDATE(), NULL, NULL, 1, NULL, NULL),
(7, 2, '2025-08-02', 53, 55, GETDATE(), NULL, NULL, 2, NULL, NULL),
(7, 1, '2025-08-02', 97, 100, GETDATE(), NULL, NULL, 3, NULL, NULL),
(4, 2, '2025-08-02', 54, 60, GETDATE(), NULL, NULL, 4, NULL, NULL),
(5, 3, '2025-08-02', 76, 75, GETDATE(), NULL, NULL, 5, NULL, NULL),
(6, 3, '2025-08-03', 74, 80, GETDATE(), NULL, NULL, 1, NULL, NULL),
(7, 1, '2025-08-03', 93, 100, GETDATE(), NULL, NULL, 2, NULL, NULL),
(6, 3, '2025-08-03', 78, 80, GETDATE(), NULL, NULL, 3, NULL, NULL),
(4, 1, '2025-08-03', 90, 100, GETDATE(), NULL, NULL, 4, NULL, NULL),
(5, 2, '2025-08-03', 59, 60, GETDATE(), NULL, NULL, 5, NULL, NULL);


    INSERT INTO desviaciones_indicadores (
       registro_diario_indicador_id, diferencia_absoluta, diferencia_porcentual, clasificación
    ) VALUES
    (5, 10, 10.0, 'Media'),
    (6, 5, 9.1, 'Media'),
    (7, 5, 5.3, 'Baja'),
    (8, 5, 6.7, 'Baja'),
    (9, 0, 0.0, 'Sin desviación'),
    (10, 5, 8.3, 'Baja'),
    (11, 8, 8.0, 'Baja'),
    (12, 8, 10.0, 'Media'),
    (13, 2, 3.3, 'Baja'),
    (14, -2, -2.7, 'Sin desviación'),
    (15, 9, 9.0, 'Media'),
    (16, 2, 3.6, 'Baja'),
    (17, 3, 3.0, 'Baja'),
    (18, 6, 10.0, 'Media'),
    (19, -1, -1.3, 'Sin desviación'),
    (20, 6, 7.5, 'Baja'),
    (21, 7, 7.0, 'Baja'),
    (22, 2, 2.5, 'Baja'),
    (23, 10, 10.0, 'Media'),
    (24, 1, 1.7, 'Baja');
