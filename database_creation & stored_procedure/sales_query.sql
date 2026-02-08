-- source table
CREATE TABLE sales_data
(
    Branch_ID Varchar(200),
    Dealer_ID Varchar(200),
    Model_ID Varchar(200),
    Revenue BIGINT,
    Units_Sold BIGINT,
    Date_ID Varchar(200),
    Day INT,
    Month INT,
    Year INT,
    BranchName Varchar(2000),
    DealerName Varchar(2000),
	Product_Name Varchar(2000)
)

-- watermark table for incremental loading
CREATE TABLE watermark_table
(
    last_load Varchar(2000)
)

SELECT min(Date_ID) FROM [dbo].[sales_data]

-- inserting minimum value in the watermark table because sales table has minimum value = 'DT00001'
INSERT INTO watermark_table
Values('DT00000')

SELECT * FROM watermark_table

