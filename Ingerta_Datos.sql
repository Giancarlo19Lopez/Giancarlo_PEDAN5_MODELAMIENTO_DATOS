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
