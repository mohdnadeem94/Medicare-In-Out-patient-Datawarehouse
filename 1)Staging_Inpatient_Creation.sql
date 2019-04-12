DROP Table Staging_Inpatient
DROP TABLE Staging_Outpatient
DROP TABLE StagingError_log
Drop Table Audit_Table

TRUNCATE TABLE Staging_Inpatient
TRUNCATE TABLE Staging_Outpatient
TRUNCATE TABLE StagingError_log
Truncate Table Audit_Table

SELECT * FROM Staging_Inpatient
SELECT * FROM Staging_Outpatient
SELECT * FROM StagingError_log
Select * FROM Audit_Table

CREATE TABLE [Staging_Inpatient] (
	[Loading_Id] int Identity(1000000,1),
    [DRG_Number] varchar(50),
    [DRG_Definition] varchar(255),
    [Provider_Id] varchar(50),
    [Provider_Name] varchar(255),
    [Provider_Street_Address] varchar(255),
    [Provider_City] varchar(50),
    [Provider_State] varchar(50),
    [Provider_Zip_Code] varchar(50),
    [Hospital_Referral_Region_(HRR)_Description] varchar(50),
    [Total_Discharges] varchar(50),
    [Average_Covered_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Average_Medicare_Payments] varchar(50),
    [Year] nvarchar(10),
    [Execution instance GUID] uniqueidentifier,
    [Package ID] uniqueidentifier,
    [Package name] nvarchar(64),
    [Version ID] uniqueidentifier,
    [Execution start time] datetime,
    [Machine name] nvarchar(15),
    [User name] nvarchar(64),
    [Task name] nvarchar(64),
    [Task ID] uniqueidentifier
)

CREATE TABLE [StagingError_log] (
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int,
    [Execution instance GUID] uniqueidentifier,
    [Package ID] uniqueidentifier,
    [Package name] nvarchar(64),
    [Version ID] uniqueidentifier,
    [Execution start time] datetime,
    [Machine name] nvarchar(15),
    [User name] nvarchar(64),
    [Task name] nvarchar(64),
    [Task ID] uniqueidentifier
)

CREATE TABLE [Audit_Table] (
	[Audit_Id] int,
    [Execution instance GUID] uniqueidentifier,
    [Package ID] uniqueidentifier,
    [Package name] nvarchar(64),
    [Version ID] uniqueidentifier,
    [Execution start time] datetime,
    [Machine name] nvarchar(15),
    [Task name] nvarchar(64),
    [Task ID] uniqueidentifier
)

CREATE TABLE [Staging_Outpatient] (
	[Loading_Id] int Identity(1,1),
	[APC_Number] varchar(50),
    [APC_Definition] varchar(255),
    [Provider_Id] varchar(50),
    [Provider_Name] varchar(255),
    [Provider_Street_Address] varchar(255),
    [Provider_City] varchar(50),
    [Provider_State] varchar(50),
    [Provider_Zip_Code] varchar(50),
    [Hospital_Referral_Region_(HRR)_Description] varchar(50),
    [Outpatient_Services] varchar(50),
    [Average__Estimated_Submitted_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Year] nvarchar(10),
    [Execution instance GUID] uniqueidentifier,
    [Package ID] uniqueidentifier,
    [Package name] nvarchar(64),
    [Version ID] uniqueidentifier,
    [Execution start time] datetime,
    [Machine name] nvarchar(15),
    [User name] nvarchar(64),
    [Task name] nvarchar(64),
    [Task ID] uniqueidentifier
)

