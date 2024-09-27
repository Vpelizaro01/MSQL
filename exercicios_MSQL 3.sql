SELECT a.nm_assinante
FROM Assinante a
JOIN ass_end ae ON a.cd_assinante = ae.cd_assinante
JOIN Endereco e ON ae.cd_endereco = e.cd_endereco
JOIN Municipio m ON e.cd_municipio = m.cd_municipio
JOIN ass_tipo at ON a.cd_assinante = at.cd_assinante
JOIN Tipo_Assinante ta ON at.cd_tipo = ta.cd_tipo
WHERE m.ds_municipio = 'Pelotas' AND ta.ds_tipo = 'residencial';