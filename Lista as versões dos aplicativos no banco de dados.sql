DECLARE @TMP TABLE (
       [UF] CHAR(2),
       [CD_CneVrsMra] Int
      ,[DT_IcnCneVrsMra] Smalldatetime
      ,[NR_VrsMraCln] Int
      ,[NR_VrsRleMraCln] Int
      ,[NR_VrsMraSrvApl] int
      ,[NR_VrsMraPdvCln] Int
      ,[NR_VrsRlePdvCln] Int
      ,[NR_VrsMraSrvPdvApl] Int)

INSERT INTO @TMP
SELECT TOP 1
       'AC'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAAC].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'AL'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAAL].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'AM'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAAM].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'AP'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAAP].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'DN'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRADN].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'ES'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAES].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'MA'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAMA].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'PA'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAPA].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'PE'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRAPE].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'RN'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRARN].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'RO'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRARO].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'RR'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRARR].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC

INSERT INTO @TMP
SELECT TOP 1
       'TO'
      ,[CD_CneVrsMra]
      ,[DT_IcnCneVrsMra]
      ,[NR_VrsMraCln]
      ,[NR_VrsRleMraCln]
      ,[NR_VrsMraSrvApl]
      ,[NR_VrsMraPdvCln]
      ,[NR_VrsRlePdvCln]
      ,[NR_VrsMraSrvPdvApl]
  FROM [DBMIRATO].[dbo].[TB_CneVrsMra]
  ORDER BY [DT_IcnCneVrsMra] DESC


SELECT * FROM @TMP
