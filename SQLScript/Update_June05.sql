USE [MotorIns]

GO

/****** Object:  StoredProcedure [dbo].[PGetSearchMasterMotor]    Script Date: 05-06-2021 10:49:43 ******/
SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

ALTER PROC [dbo].[PGetSearchMasterMotor] (@RoleId         bigint,
                                          @PolicyNo       nvarchar(50),
                                          @DivisionName   nvarchar(50),
                                          @AssuredName    nvarchar(50),
                                          @ProductName    nvarchar(50),
                                          @Status         nvarchar(50),
                                          @ProducerName   nvarchar(50)=NULL,
                                          @PolicyFromDate datetime = NULL,
                                          @PolicyToDate   datetime=NULL,
                                          @PageNo         int,
                                          @PageType       Nvarchar(100))
AS
  BEGIN
      declare @Flag int

      if exists(select 1
                from   TB_Users
                where  UserName = @ProducerName
                       and RoleId = 6)
        begin
            set @flag=1
        end

      if( @PolicyNo = '' )
        set @PolicyNo=null

      --if(@DivisionName='') set @DivisionName=null 
      --if(@AssuredName='') set @AssuredName=null 
      --if(@ProductName='') set @ProductName=null 
      if( @Status = '' )
        set @Status=null

      if( @ProducerName = '' )
        set @ProducerName=null

      if( @DivisionName = '' )
        set @DivisionName=null

      Declare @Query Nvarchar(Max)=''
      Declare @Where Nvarchar(Max)=''
      Declare @FromDate Nvarchar(50)=''
      Declare @ToDate Nvarchar(50)=''

      IF ( ( @PolicyFromDate = '1753-01-01 00:00:00'
              OR @PolicyFromDate = ''
              OR @PolicyFromDate = '1900-01-01' )
           AND ( @PolicyToDate = ''
                  OR @PolicyToDate = '1753-01-01 00:00:00'
                  OR @PolicyToDate = '1900-01-01' ) )
        BEGIN
            SET @PolicyFromDate = NULL -- DATEADD(DD, -120, GETDATE())
            SET @PolicyToDate = NULL --GETDATE()
        END
      ELSE
        BEGIN
            SET @FromDate = CONVERT(varchar, CONVERT(date, @PolicyFromDate))
            SET @ToDate =Convert(varchar, CONVERT(date, @PolicyToDate))
        END

      Set @Query ='SELECT Top 2000 Isnull(InsuranceID,'''') as InsuranceID,Isnull(DivisionName,'''') as DivisionName,Isnull(ProductCode,'''') as ProductCode, Isnull(ProductName,'''') as ProductName,Isnull(BusinessType,'''') as BusinessType, Isnull(PolicyNo,'''') as PolicyNo,Isnull(AssuredName,'''') as AssuredName, Isnull(AssuredMobile,'''') as AssuredMobile,Isnull(CustomerName,'''') as CustomerName,Isnull(SourceCode,'''') as SourceCode, Isnull(SourceName,'''') as SourceName,Isnull(CustomerCategory,'''') as CustomerCategory, Isnull(PolicyFromDate,'''') as PolicyFromDate,Isnull(PolicyToDate,'''') as PolicyToDate, Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured, Isnull(SumInsured,0.00) as SumInsured, Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium, Isnull(MarketingExecutive,'''') as MarketingExecutive, Isnull(Remarks,'''') as Remarks,Isnull(DivnCode,'''') as DivnCode,Isnull(CustomerCode,'''') as CustomerCode,Isnull(Charges,0.00) as Charges, LTRIM(RTRIM(isnull(Status,''Under Process''))) as Status, Isnull(InsType,'''') as InsType,Isnull(CreatedAt,'''') as CreatedAt,Isnull(ModifiedAt,'''') as ModifiedAt, Isnull(DivisionCode ,'''') as DivisionCode, Isnull(Producer ,'''') as ProducerName         FROM TB_Insurance '

      IF( @RoleId = 1 )
        BEGIN
            IF( @PolicyNo is not null )
              BEGIN
                  SET @Where ='PolicyNO = ''' + @PolicyNo + ''''
              END
            ELSE
              BEGIN
                  IF ( @PolicyFromDate IS NOT NULL
                       AND @PolicyToDate IS NOT NULL )
                    BEGIN
                        --SET @Where = 'CONVERT(date, PolicyFromDate) >= '''+@FromDate+''' AND CONVERT(Date,PolicyToDate) <= '''+@ToDate+'''';
                        SET @Where = ' CONVERT(date, PolicyToDate) BETWEEN '''
                                     + @FromDate + ''' AND ''' + @ToDate + ''' '
                    END

                  IF( @Status IS NOT NULL )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Status = ''' + @Status + ''''
                        ELSE
                          SET @Where = @Where + ' AND Status = ''' + @Status +
                                       ''''
                    END

                  IF( @ProducerName IS NOT NULL
                      and @Flag = 1 )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Producer = ''' + @ProducerName + ''''
                        ELSE
                          SET @Where = @Where + ' AND Producer = ''' +
                                       @ProducerName
                                       + ''''
                    END
                  --ELSE
                  --  BEGIN
                  --      IF ( @Where = '' )
                  --        SET @Where = 'CustomerCode = ''' + @ProducerName +
                  --                     ''''
                  --      ELSE
                  --        SET @Where = @Where + ' AND CustomerCode = '''
                  --                     + @ProducerName + ''''
                  --  END

                  IF( @DivisionName IS NOT NULL )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Divisioncode = ''' + @DivisionName +
                                       ''''
                        ELSE
                          SET @Where = @Where + ' AND Divisioncode = '''
                                       + @DivisionName + ''''
                    END
              END
        END
      ELSE
        BEGIN
            IF( @ProducerName IS NOT NULL
                and @Flag = 1 )
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'Producer = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND Producer = ''' + @ProducerName
                                 + ''''
              END
            ELSE IF( @RoleId = 4
                AND @ProducerName IS NOT NULL )
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'DivisionCode = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND DivisionCode = '''
                                 + @ProducerName + ''''
              END
            ELSE
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'CustomerCode = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND CustomerCode = '''
                                 + @ProducerName + ''''
              END

            IF( @PolicyNo is not null )
              BEGIN
                  SET @Where = @Where + ' AND  PolicyNO = ''' + @PolicyNo + ''''
              END

            IF ( @PolicyFromDate IS NOT NULL
                 AND @PolicyToDate IS NOT NULL )
              BEGIN
                  -- SET @Where = @Where+ ' AND Convert(Date,PolicyFromDate ) >= '''+@FromDate+''' AND Convert(Date,PolicyToDate) <= '''+@ToDate+'''';
                  SET @Where = @Where
                               + ' AND CONVERT(date, PolicyToDate) BETWEEN '''
                               + @FromDate + ''' AND ''' + @ToDate + ''' '
              END

            IF( @Status IS NOT NULL )
              BEGIN
                  SET @Where = @Where + ' AND Status = ''' + @Status + ''''
              END

            IF( @DivisionName IS NOT NULL )
              BEGIN
                  SET @Where = @Where + ' AND Divisioncode = '''
                               + @DivisionName + ''''
              END
        END

      IF ( @Where != '' )
        BEGIN
            --Select @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' 
            EXEC ( @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' )
        END
      ELSE
        BEGIN
            EXEC (@Query)
        END
  END 