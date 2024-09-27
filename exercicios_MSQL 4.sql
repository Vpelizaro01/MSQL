SELECT a.nm_assinante, ra.Ods_ramo
FROM Assinante a
JOIN ass_ramo ar ON a.cd_assinante = ar.cd_assinante
JOIN Ramo_Atividade ra ON ar.cd_ramo = ra.cd_ramo
ORDER BY ra.Ods_ramo, a.nm_assinante;
