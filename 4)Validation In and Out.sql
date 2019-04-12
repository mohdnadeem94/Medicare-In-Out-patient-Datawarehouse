DROP TABLE Validation_DRG_Def_Inp
DROP TABLE Validation_Inpatient
DROP TABLE Validation_Inpatient_No
DROP TABLE Validation_Provider_Inpatient

TRUNCATE TABLE Validation_DRG_Def_Inp
TRUNCATE TABLE Validation_Inpatient
TRUNCATE TABLE Validation_Inpatient_No
TRUNCATE TABLE Validation_Provider_Inpatient

Select * FROm Validation_Inpatient_No


DROP TABLE Validation_Def_Out
DROP TABLE Validation_Outpatient
DROP TABLE Validation_Outpatient_No
DROP TABLE Validation_Provider_Outpatient

TRUNCATE TABLE Validation_Def_Out
TRUNCATE TABLE Validation_Outpatient
TRUNCATE TABLE Validation_Outpatient_No
TRUNCATE TABLE Validation_Provider_Outpatient

Select * FROM Validation_Outpatient_No
Select * FROm Validation_Provider_Outpatient

CREATE TABLE [Validation_DRG_Def_Inp] (
    [DRG_Number] varchar(50),
    [DRG_Definition] varchar(255)
)


CREATE TABLE [Validation_Inpatient] (
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
    [Total_Medicare_Payments] money
)

CREATE TABLE [Validation_Inpatient_No] (
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
    [Total_Medicare_Payments] money
)

CREATE TABLE [Validation_Provider_Inpatient] (
    [Provider Id] varchar(50),
    [Provider Name] varchar(255)
)

CREATE TABLE [Validation_Def_Out] (
    [APC_Number] varchar(50),
    [APC_Definition] varchar(255)
)

CREATE TABLE [Validation_Provider_Outpatient] (
    [Provider_Id] varchar(50),
    [Provider_Name] varchar(50)
)

CREATE TABLE [Validation_Outpatient] (
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
    [Total_Payments] money
)

CREATE TABLE [Validation_Outpatient_No] (
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
    [Total_Payments] money
)