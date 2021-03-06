USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoardYearWise]    Script Date: 19-03-2021 16:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SP_GetBIDashBoardYearWise] (@BusinessType nvarchar(50))
AS 
BEGIN
declare @tt table(
Calenderid int,
MonthName nvarchar(50),
Lost int,
Renewed int,
[Under Process] int,
Year int
)
insert into @tt(Year,Lost,Renewed,[Under Process])

select * from (select Year(PolicyToDate) Year,PolicyNo,IsNull(Status,'Under Process') as Status from
TB_Insurance M 


where BusinessType=@BusinessType --and year(policyToDate)=year(Getdate())
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under Process])) as pivot_final_table 

select Year as y,Renewed as a, sum(lost+Renewed+[Under Process])  as b,@BusinessType as BusinessType from @tt  group by Lost,year,Renewed order by year

--declare @tt table(
--Calenderid int,
--MonthName nvarchar(50),
--Lost int,
--Renewed int,
--[Under process] int
--)

--begin 

--select  [2011], [2012], [2013], [2014], [2015], [2016], [2017],[2018],[2019],[2020],[2021]
--from
--(
--  SELECT i.PolicyNo, 
--     Cast(I.PolicyFromDate as Date) as M_Date,
--     year(i.PolicyFromDate) yr
--  FROM TB_Insurance I where BusinessType=@BusinessType
 
--) d
--pivot
--(

--  count(PolicyNo)
--  for yr in ([2011], [2012], [2013], [2014], [2015], [2016], [2017],[2018],[2019],[2020],[2021])
--) piv;
--END
END
