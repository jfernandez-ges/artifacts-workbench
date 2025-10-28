
-- ARELEOCH 016
-- clear reanalysis event log for specific asset and date range
delete from cscada_reanalysis_eventlog
where startdate >=  '2025-09-01' and startdate < '2025-10-30'
and assetpath = 'PARK_Areleoch.Gamesa.016'
and type IN ('ARSOS')


-- clear reanalysis common event log for specific asset and date range
delete from cscada_commoneventlog
where utctimestamp >=  '2025-09-01' and utctimestamp < '2025-10-30'
and assetpath = 'PARK_Areleoch.Gamesa.016'
and alarmcode1 = 'RequestSTART' and handlerId = 'ARSOS'

-- delete the result in cassandra (delete entire september partition for the asset)
DELETE FROM fault_handling_robots_events 
WHERE partition = 1756684800000 
AND assetpath = 'PARK_Areleoch.Gamesa.016';



-- Lynemouth 006, 013 y 002
-- clear reanalysis event log for specific asset and date range
delete from cscada_reanalysis_eventlog
where startdate >=  '2025-09-01' and startdate < '2025-10-30'
and assetpath  IN ('PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002')
and type IN ('ARSOS')


-- clear reanalysis common event log for specific asset and date range
delete from cscada_commoneventlog
where utctimestamp >=  '2025-09-01' and utctimestamp < '2025-09-30'
and assetpath  IN ('PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002')
and alarmcode1 = 'RequestSTART' and handlerId = 'ARSOS'

-- delete the result in cassandra (delete entire september partition for the asset)
DELETE FROM fault_handling_robots_events 
WHERE partition = 1756684800000 
AND assetpath  IN ('PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002')

# PARK_MarkHill turbines 011 and 023
-- clear reanalysis event log for specific asset and date range
delete from cscada_reanalysis_eventlog
where startdate >=  '2025-09-01' and startdate < '2025-09-30'
and assetpath  IN ('PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023')
and type IN ('ARSOS')

-- clear reanalysis common event log for specific asset and date range
delete from cscada_commoneventlog
where utctimestamp >=  '2025-09-01' and utctimestamp < '2025-10-30'
and assetpath  IN ('PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023')
and alarmcode1 = 'RequestSTART' and handlerId = 'ARSOS'

-- delete the result in cassandra (delete entire september partition for the asset)
DELETE FROM fault_handling_robots_events 
WHERE partition = 1756684800000 
AND assetpath  IN ('PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023');.



-- Lynemouth y Areleoch remeter los eventos de Octubre


-- Borrado de datos solo del día 28 de Septiembre de 2025 de las turbinas problemáticas
delete from cscada_reanalysis_eventlog
where startdate >=  '2025-09-27' and startdate < '2025-09-30'
and assetpath IN ('PARK_Areleoch.Gamesa.016', 
'PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002', 
'PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023')
and type IN ('ARSOS')

delete from cscada_commoneventlog
where utctimestamp >=  '2025-09-27' and utctimestamp < '2025-09-30'
and assetpath IN ('PARK_Areleoch.Gamesa.016', 
'PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002', 
'PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023')
and alarmcode1 = 'RequestSTART' and handlerId = 'ARSOS'



delete from fault_handling_robots_events 
WHERE partition = 1756684800000
AND assetpath IN ('PARK_Areleoch.Gamesa.016', 
'PARK_Lynemouth.Gamesa.006', 'PARK_Lynemouth.Gamesa.013', 'PARK_Lynemouth.Gamesa.002', 
'PARK_MarkHill.Gamesa.011', 'PARK_MarkHill.Gamesa.023');

-- UPDATE cscada_reanalysis_cursor
-- SET ReloadRequest = ReloadRequest + 1
-- WHERE AssetPath LIKE 'PARK_Areleoch%'
-- OR AssetPath LIKE 'PARK_Lynemouth%'
-- OR AssetPath LIKE 'PARK_MarkHill%'





