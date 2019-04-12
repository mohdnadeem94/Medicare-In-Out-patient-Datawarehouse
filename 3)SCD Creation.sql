DROP TABLE SCD_Outpatient
TRUNCATE TABLE SCD_Outpatient
CREATE TABLE [SCD_Outpatient] (
    [Loading_Id] int,
    [APC_Number] varchar(50),
    [APC_Definition] varchar(255),
    [Provider_Id] varchar(50),
    [Provider_Name] varchar(255),
    [Provider_Street_Address] varchar(255),
    [Provider_City] varchar(50),
    [Provider_State] varchar(50),
    [Provider_Zip_Code] varchar(50),
    [Hospital_Referral_Region_(HRR)_Description] varchar(50),
    [Year] nvarchar(10),
    [Average__Estimated_Submitted_Charges] float,
    [Average_Total_Payments] float,
    [Outpatient_Services] float,
    [Total_Charges] money,
    [Total_Payments] money,
	[Starttime] datetime,
	[Endtime] datetime
)

Insert into SCD_Outpatient(
    [Loading_Id] ,
    [APC_Number] ,
    [APC_Definition] ,
    [Provider_Id] ,
    [Provider_Name] ,
    [Provider_Street_Address] ,
    [Provider_City] ,
    [Provider_State] ,
    [Provider_Zip_Code],
    [Hospital_Referral_Region_(HRR)_Description] ,
    [Year] ,
    [Average__Estimated_Submitted_Charges] ,
    [Average_Total_Payments] ,
    [Outpatient_Services],
    [Total_Charges] ,
    [Total_Payments] )
Values('81039','229','Level II Endovascular Procedures','40134','Arkansas Heart Hospital  Llc','1701 S Shackleford Road','Little Rock','AR','72211','AR - Little Rock','2015','18929','7121','1244','23547676','8858524')


DROP TABLE SCD_Inpatient
TRUNCATE TABLE SCD_Inpatient

CREATE TABLE [SCD_Inpatient] (
    [Loading_Id] int,
    [DRG_Number] varchar(50),
    [DRG_Definition] varchar(255),
    [Provider_Id] varchar(50),
    [Provider_Name] varchar(255),
    [Provider_Street_Address] varchar(255),
    [Provider_City] varchar(50),
    [Provider_State] varchar(50),
    [Provider_Zip_Code] varchar(50),
    [Hospital_Referral_Region_(HRR)_Description] varchar(50),
    [Year] nvarchar(10),
    [Total_Discharges] float,
    [Average_Covered_Charges] float,
    [Average_Total_Payments] float,
    [Average_Medicare_Payments] float,
    [Total_Payments] money,
    [Total_Covered_Charges] money,
    [Total_Medicare_Payments] money,
	[Starttime] datetime,
	[Endtime] datetime
)

SELECT * FROM [dbo].[Destination_Error_Inpatient]
