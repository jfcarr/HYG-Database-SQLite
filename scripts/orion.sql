SELECT hd.ProperName, hd.RightAscension, hd.Declination, hd.Magnitude, c.FullName AS InConstellation
FROM hygdata AS hd
	LEFT JOIN constellation AS c ON c.Code = hd.constellation
WHERE hd.ProperName <> '' AND c.FullName = 'Orion';
