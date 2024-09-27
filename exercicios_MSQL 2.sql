SELECT a.nm_assinante
FROM Assinante a
JOIN ass_end ae ON a.cd_assinante = ae.cd_assinante
JOIN end_fone ef ON ae.cd_endereco = ef.cd_endereco
GROUP BY a.cd_assinante, a.nm_assinante
HAVING COUNT(ef.cd_fone) > 1;