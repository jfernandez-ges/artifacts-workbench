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
