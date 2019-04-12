Drop Table Destination_Inpatient
Drop Table Destination_Error_Inpatient
Drop Table Archive_Inpatient_Table

Drop Table Destination_Outpatient
Drop Table Archive_Outpatient_Table
DROP Table Destination_Error_Outpatient

Truncate Table Destination_Inpatient
Truncate Table Archive_Inpatient_Table
Truncate Table Destination_Error_Inpatient

Truncate Table Destination_Outpatient
Truncate Table Archive_Outpatient_Table
Truncate Table Destination_Error_Outpatient

Select * FROM Destination_Inpatient
Select * FROM Archive_Inpatient_Table
Select * FROM Destination_Error_Inpatient

Select * FROM Destination_Outpatient
Where Loading_Id = '81039'
Select * FROM Archive_Outpatient_Table
Select * FROM Destination_Error_Outpatient
Where Year = '2015.csv'

CREATE TABLE [Destination_Inpatient] (
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

CREATE TABLE [Archive_Inpatient_Table] (
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
    [Total_Discharges] varchar(50),
    [Average_Covered_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Average_Medicare_Payments] varchar(50),
    [Year] nvarchar(10)
)

CREATE TABLE [Destination_Error_Inpatient] (
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
    [Total_Discharges] varchar(50),
    [Average_Covered_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Average_Medicare_Payments] varchar(50),
    [Year] nvarchar(10),
    [Copy of Total_Discharges] float,
    [Copy of Average_Covered_Charges] float,
    [Copy of Average_Total_Payments] float,
    [Copy of Average_Medicare_Payments] float,
    [Total_Payments] float,
    [Total_Covered_Charges] float,
    [Total_Medicare_Payments] float,
    [ErrorCode] int,
    [ErrorColumn] int
)

CREATE TABLE [Destination_Outpatient] (
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

CREATE TABLE [Archive_Outpatient_Table] (
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
    [Outpatient_Services] varchar(50),
    [Average__Estimated_Submitted_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Year] nvarchar(10)
)

CREATE TABLE [Destination_Error_Outpatient] (
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
    [Outpatient_Services] varchar(50),
    [Average__Estimated_Submitted_Charges] varchar(50),
    [Average_Total_Payments] varchar(50),
    [Year] nvarchar(10),
    [Copy of Average__Estimated_Submitted_Charges] float,
    [Copy of Average_Total_Payments] float,
    [Copy of Outpatient_Services] float,
    [Total_Charges] float,
    [Total_Payments] float,
    [ErrorCode] int,
    [ErrorColumn] int
)