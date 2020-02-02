Create Or Replace Package SNAPSHOT_PKG Is

Procedure Snap_ItemSubLoc(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ItemId In Number Default Null,
                          p_PeriodName Varchar2 Default Null,
                          p_TransDateFrom Date Default Null,
                          p_TransDateTo   Date Default Null,
                          p_NotifGroup    In Varchar2 Default Null);
-----------------------------------------------------
Procedure Snap_MonthlyMovement(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_PeriodName Varchar2 Default Null,
                          p_TransDateFrom Date Default Null,
                          p_TransDateTo   Date Default Null);
-----------------------------------------------------
Procedure OpeningStockValue(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ValuedItem    In Varchar2 Default 'N',
                          p_Month         In Varchar2,
                          p_Year          In Number,
                          p_SubLocGroupCode In Varchar2 Default Null,
                          p_ValuedNonValued Varchar2,
                          p_PeriodName     Varchar2,
                          p_OpenValueBase Out Number,
			  p_OpenValueAverage Out Number,
			  p_OpenValueLastBought Out Number);
---------------------------------------------------------------
Procedure MovementStockValue(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ValuedItem    In Varchar2 Default 'N',
                          p_Month         In Varchar2,
                          p_Year          In Number,
                          p_SubLocGroupCode In Varchar2 Default Null,
                          p_ValuedNonValued Varchar2,
                          p_PeriodName     Varchar2,
                          p_TransDateFrom  Date,
                          p_TransDateTo    Date,
                          p_ValueBase Out Number,
			  p_ValueAverage Out Number,
			  p_ValueLastBought Out Number);
---------------------------------------------------------------
Procedure Pop_ReportColumns(p_Report_Identifier  In VARCHAR2 Default Null
			,p_Column1_Title  In VARCHAR2 Default Null
			,p_Column2_Title  In VARCHAR2 Default Null
			,p_Column3_Title  In VARCHAR2 Default Null
			,p_Column4_Title  In VARCHAR2 Default Null
			,p_Column5_Title  In VARCHAR2 Default Null
			,p_Column6_Title  In VARCHAR2 Default Null
			,p_Column7_Title  In VARCHAR2 Default Null
			,p_Column8_Title  In VARCHAR2 Default Null
			,p_Column9_Title  In VARCHAR2 Default Null
			,p_Column10_Title  In VARCHAR2 Default Null
			,p_Column11_Title  In VARCHAR2 Default Null
			,p_Column12_Title  In VARCHAR2 Default Null
			,p_Column13_Title  In VARCHAR2 Default Null
			,p_Column14_Title  In VARCHAR2 Default Null
			,p_Column15_Title  In VARCHAR2 Default Null
			,p_Column16_Title  In VARCHAR2 Default Null
			,p_Column17_Title  In VARCHAR2 Default Null
			,p_Column18_Title  In VARCHAR2 Default Null
			,p_Column19_Title  In VARCHAR2 Default Null
			,p_Column20_Title  In VARCHAR2 Default Null
			,p_Column21_Title  In VARCHAR2 Default Null
			,p_Column22_Title  In VARCHAR2 Default Null
			,p_Column23_Title  In VARCHAR2 Default Null
			,p_Column24_Title  In VARCHAR2 Default Null
			,p_Column25_Title  In VARCHAR2 Default Null
			,p_Column26_Title  In VARCHAR2 Default Null
			,p_Column27_Title  In VARCHAR2 Default Null
			,p_Column28_Title  In VARCHAR2 Default Null
			,p_Column29_Title  In VARCHAR2 Default Null
			,p_Column30_Title  In VARCHAR2 Default Null
			,p_Report_Type  In VARCHAR2 Default Null
			,p_Bu_Id  In NUMBER Default Null) ;
----------------------------------------------------------------------
Procedure Pop_MonthlyINVRepCols;
---------------------------------------------------------------
Procedure Pop_ReportOutputValues(p_Snapshot_Date In DATE Default Null
			,p_Snapshot_Month In VARCHAR2 Default Null
			,p_Snapshot_Year In NUMBER Default Null
			,p_Report_Identifier In VARCHAR2 Default Null
			,p_Report_Description In VARCHAR2 Default Null
                        ,p_Period_Header_ID   In Number Default Null
			,p_Period_Line_Id In NUMBER Default Null
			,p_Period_Name In VARCHAR2 Default Null
			,p_Location_Id In NUMBER Default Null
			,p_Sub_Location_Id In NUMBER Default Null
			,p_Row_Identifier In VARCHAR2 Default Null
			,p_Sl_No In NUMBER Default Null
			,p_Report_Date_From In Date Default Null
			,p_Report_Date_To    In Date Default Null
			,p_SL_Date_From In Date Default Null
			,p_SL_Date_To In Date Default Null
			,p_Column1_Value In NUMBER Default Null
			,p_Column2_Value In NUMBER Default Null
			,p_Column3_Value In NUMBER Default Null
			,p_Column4_Value In NUMBER Default Null
			,p_Column5_Value In NUMBER Default Null
			,p_Column6_Value In NUMBER Default Null
			,p_Column7_Value In NUMBER Default Null
			,p_Column8_Value In NUMBER Default Null
			,p_Column9_Value In NUMBER Default Null
			,p_Column10_Value In NUMBER Default Null
			,p_Column11_Value In NUMBER Default Null
			,p_Column12_Value In NUMBER Default Null
			,p_Column13_Value In NUMBER Default Null
			,p_Column14_Value In NUMBER Default Null
			,p_Column15_Value In NUMBER Default Null
			,p_Column16_Value In NUMBER Default Null
			,p_Column17_Value In NUMBER Default Null
			,p_Column18_Value In NUMBER Default Null
			,p_Column19_Value In NUMBER Default Null
			,p_Column20_Value In NUMBER Default Null
			,p_Column21_Value In NUMBER Default Null
			,p_Column22_Value In NUMBER Default Null
			,p_Column23_Value In NUMBER Default Null
			,p_Column24_Value In NUMBER Default Null
			,p_Column25_Value In NUMBER Default Null
			,p_Column26_Value In NUMBER Default Null
			,p_Column27_Value In NUMBER Default Null
			,p_Column28_Value In NUMBER Default Null
			,p_Column29_Value In NUMBER Default Null
			,p_Column30_Value In NUMBER Default Null
			,p_Total1         In NUMBER Default Null
			,p_Total2         In NUMBER Default Null
			,p_Total3         In NUMBER Default Null
			,p_Total4         In NUMBER Default Null
			,p_Grand_Total1   In NUMBER Default Null
			,p_Grand_Total2   In NUMBER Default Null
			,p_Created_By In NUMBER Default Null
			,p_Bu_Id In NUMBER Default Null
			,p_Creation_Date In DATE Default Null
			,p_Record_Status In VARCHAR2 Default Null
			,p_Last_Update_Date In DATE Default Null
			,p_Last_Updated_By In NUMBER Default Null
			,p_Update_Source In VARCHAR2 Default Null);
----------------------------------------------------------------------
Procedure MIR_GoodsReceipt(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
----------------------------------------------------------------------------
Procedure MIR_EXTMOVEMENT(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                           p_ItemMovementCategory  In Varchar2 Default 'EWS');
-----------------------------------------------------
Procedure MIR_InternalDebitMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-----------------------------------------------------
Procedure MIR_InternalCreditMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-----------------------------------------------------
Procedure MIR_LocationCreditMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-----------------------------------------------------
Procedure MIR_LocationDebitMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-----------------------------------------------------
Procedure MIR_StockCreditVariance(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType );
----------------------------------------------------------------------------
Procedure MIR_StockDebitVariance(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType );
-----------------------------------------------------
Procedure MIR_ExpectedClosingStock(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType );
-----------------------------------------------------
Procedure MIR_StockValuation(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType );
-----------------------------------------------------
Procedure MIR_VarianceStockValuation(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                                   p_PrevSnaprow in CMN_REPORTOUTPUTS_SNAP%RowType );
----------------------------------------------------------------------------
Procedure Snap_MIR(p_PeriodName Varchar2 Default Null
                   ,p_LocationID In Number Default Null
                   ,p_BUID In Number Default 1
                   ,p_SubLocationID In Number Default Null
                   ,p_TransDateFrom Date Default Null
                   ,p_TransDateTo   Date Default Null);
-----------------------------------------------------------------------------
Procedure MIR_OpeningStock(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-------------------------------------------------------------------------------
Procedure Repoutput_Init(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType);
-----------------------------------------------------
Procedure MIR_CopyValueToSnapRow(p_RepRowTo In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                                 p_RepRowFrom In  CMN_REPORTOUTPUTS_SNAP%RowType);
----------------------------------------------------------------------------
Procedure MIR_ManualAdjustment(p_Location_Name In Varchar2
                               ,p_Period_Name In VARCHAR2
                               ,p_Row_Identifier In Varchar2 Default 'Manual Adjustment'
                               ,p_Report_Identifier In VARCHAR2 default 'MONTHLY INVENTORY REPORT'
			,p_Column1_Value In NUMBER Default Null
			,p_Column2_Value In NUMBER Default Null
			,p_Column3_Value In NUMBER Default Null
			,p_Column4_Value In NUMBER Default Null
			,p_Column5_Value In NUMBER Default Null
			,p_Column6_Value In NUMBER Default Null
			,p_Column7_Value In NUMBER Default Null
			,p_Column8_Value In NUMBER Default Null
			,p_Column9_Value In NUMBER Default Null
			,p_Column10_Value In NUMBER Default Null
			,p_Column11_Value In NUMBER Default Null
			,p_Column12_Value In NUMBER Default Null
			,p_Column13_Value In NUMBER Default Null
			,p_Column14_Value In NUMBER Default Null
			,p_Column15_Value In NUMBER Default Null
			,p_Column16_Value In NUMBER Default Null
			,p_Column17_Value In NUMBER Default Null
			,p_Column18_Value In NUMBER Default Null
			,p_Column19_Value In NUMBER Default Null
			,p_Column20_Value In NUMBER Default Null
			,p_Column21_Value In NUMBER Default Null
			,p_Column22_Value In NUMBER Default Null
			,p_Column23_Value In NUMBER Default Null
			,p_Column24_Value In NUMBER Default Null
			,p_Column25_Value In NUMBER Default Null
			,p_Column26_Value In NUMBER Default Null
			,p_Column27_Value In NUMBER Default Null
			,p_Column28_Value In NUMBER Default Null
			,p_Column29_Value In NUMBER Default Null
			,p_Column30_Value In NUMBER Default Null);
----------------------------------------------------------------------
Function GetDatePart(p_Transdate in Date,
                     p_WhatPart  in Varchar2) return Varchar2;
---------------------------------------------------------------------
Function GetDatePartval(p_Transdate in Date,
                     p_WhatPart  in Varchar2,
                     p_MatchWith in Varchar2,
                     p_value  In number) return number;
---------------------------------------------------------------------
Procedure PopItemssum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) ;
----------------------------------------------------------------------
Procedure PopCustomerssum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) ;
----------------------------------------------------------------------
Procedure PopSupplierssum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) ;
----------------------------------------------------------------------
Procedure PopAllSnapshots(p_What in Varchar2 Default 'ALL',
                          p_NotifGroup    In Varchar2 Default Null) ;
----------------------------------------------------------------------
Procedure Purge_ItemSubLocSnap(P_Age   In Number Default 365,
                          p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ItemId In Number Default Null,
                          p_NotifGroup    In Varchar2 Default Null);
----------------------------------------------------------------------
Procedure Update_Last4years_Sum(p_What in Varchar2 Default 'BOTH',
			        p_buID In Number Default 1,
                          p_NotifGroup    In Varchar2 Default Null) ;
-----------------------------------------------------------------------

end SNAPSHOT_PKG;
/
Show Error
  
  
Create or Replace Package Body SNAPSHOT_PKG Is

Pub_ErrorLevel  Varchar2(100);
Pub_ClosingStock Constant Varchar2(30) := 'Closing Stock';
Pub_RetValue     number := 0;
------------------------------------------------------------
Procedure Snap_ItemSubLoc(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ItemId In Number Default Null,
                          p_PeriodName Varchar2 Default Null,
                          p_TransDateFrom Date Default Null,
                          p_TransDateTo   Date Default Null,
                          p_NotifGroup    In Varchar2 Default Null)
IS
 SnapRow Inv_Item_SubLoc_Snap%RowType;
BEGIN
For LocRow In (Select Location_Id,Location_Name,
                      Item_Snapshot_Schedule_ID,
                      Purge_Snapshot_Days,
                      Item_Snapshot_Type,
                      Take_Snapshot loc_TakeSnapshot
               From  Inv_Locations
               Where Active = 'Y'
               And   Stockable = 'Y'
               And   Location_ID = Nvl(p_LocationID,Location_Id)
               Order By Location_Name
               )
 Loop --- Locations
  Dbms_OutPut.Put_Line('Location:'||LocRow.Location_Name);
   Begin
     Delete Inv_Item_SubLoc_Snap
     Where Snapshot_Date = Trunc(Sysdate)
     And   Location_ID   = LocRow.Location_ID;
   Exception When Others Then Null;
   End;
  For ItemSubLocRow in ( select il.Quantity,il.Minus_Quantity,
                                sl.IL_Location_ID,sl.Sub_Location_ID,
                                sl.Bu_ID,il.Min_qty,il.Max_Qty,
                                il.Item_ID,Inv_PKG.Get_OptionVal('SNAPSHOT_ALL_ITEMS') SnapshotAllItems,
                                i.Take_Snapshot Item_TakeSnapshot,
                                sl.Take_Snapshot subloc_TakeSnapshot,
                                c.Take_Snapshot category_TakeSnapshot,
                                sc.Take_Snapshot subcategory_TakeSnapshot                               
                         From   inv_Sub_locations sl, 
                                Inv_Item_Sub_Locations il,
                                Inv_Item_Masters i,
                                Inv_Item_Categories c,
                                Inv_Item_Sub_Categories sc
                         Where  il.Item_Id = nvl(p_ItemID,il.Item_Id)
                         And    il.Location_ID = LocRow.Location_ID
                         And    il.Location_ID = sl.IL_Location_ID
                         And    il.Sub_Location_ID = Sl.Sub_Location_ID
                         And    sl.Include_Stock = 'Y'
                         And    sl.Stockable = 'Y'
                         And    il.Item_ID   = i.Item_Id
                         And    i.Stockable = 'Y'
                         And    i.IIC_Category_Id = c.Category_ID
                         And    i.IISC_Sub_category_Id = sc.Sub_Category_ID 
                         And    il.Quantity > 0 
                       )
                         
     Loop -- Sub Location Items
      if nvl(ItemSubLocRow.SnapshotAllItems,'Y') = 'N' then
        if ItemSubLocRow.Item_TakeSnapshot = 'N' Or LocRow.loc_TakeSnapshot = 'N' or
           ItemSubLocRow.subloc_TakeSnapshot = 'N' or ItemSubLocRow.category_TakeSnapshot = 'N' or
           ItemSubLocRow.subcategory_TakeSnapshot = 'N' then
        goto nothing;
       end If;
      End If; 
      SnapRow.Snapshot_ID := -1;
      SnapRow.Snapshot_Date := Trunc(Sysdate);
      SnapRow.BU_ID   := ItemSubLocRow.Bu_ID;
      SnapRow.LOCATION_ID   := ItemSubLocRow.IL_LOCATION_ID;
      SnapRow.SUB_LOCATION_ID   := ItemSubLocRow.SUB_LOCATION_ID;
      SnapRow.ITEM_ID   := ItemSubLocRow.ITEM_ID;
      SnapRow.MIN_QTY   := ItemSubLocRow.MIN_QTY;
      SnapRow.MAX_QTY   := ItemSubLocRow.MAX_QTY;
      SnapRow.Quantity   := ItemSubLocRow.Quantity;
      SnapRow.Minus_Quantity   := ItemSubLocRow.Minus_Quantity;
      SnapRow.Created_By := -1;
      SnapRow.Last_Updated_By := -1;
      INV_ITEM_SUBLOC_SNAPAPI('INSERT',SnapRow);
    <<nothing>>
       Null;
    End Loop;  -- Sub Locations;
 End Loop;  -- Locations;
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Snapshot By Sub Loc on:'||Sysdate,
                        p_text          => 'Snapshot By Sub Loc on:'||Sysdate);
Exception When Others then 
 Raise_Application_Error(-20001,'ITEMSNAP:'||SqlErrm);
END; 
-----------------------------------------------------
Procedure Snap_MonthlyMovement(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_PeriodName Varchar2 Default Null,
                          p_TransDateFrom Date Default Null,
                          p_TransDateTo   Date Default Null)
IS
 SnapRow Inv_SUBLOC_VAL_Snap%RowType;
 vMonth  Varchar2(20);
 vYear   Number;
 vlastMonth  Varchar2(20);
 vlastYear   Number;
 vlastMonthDate Date;
 vValuedItem  Varchar2(1);
 SnapRevRow  INV_MONHLYREVIEW_VAL_SNAP%RowType;
 PeriodHRow  CMN_PERIOD_HEADERS%RowType;
 PeriodLRow  CMN_PERIOD_LINES%RowType;
 vTransDateFrom Date;
 vTransDateTo   Date;
 vLastPeriodName Varchar2(100);
 PrevPeriodLRow  CMN_PERIOD_LINES%RowType;
BEGIN
if p_PeriodName is Not Null Then 
  PeriodLRow.Period_Name := p_PeriodName;
Else
  PeriodLRow.Period_Name := PERIOD_PKG.Get_PeriodNameByDate(Sysdate);
End If;
Dbms_OutPut.Put_Line('In Snap:'||PeriodLRow.Period_Name);
CMN_PERIOD_LINESAPI('SELECT',PeriodLRow);
If PeriodLRow.Period_Line_ID is Null Then 
 Return;
End If;
Dbms_OutPut.Put_Line('In Snap:'||PeriodLRow.Period_Line_ID);
If P_TransDateFrom is Null Then 
  vTransDateFrom := Nvl( PeriodLRow.Actual_Date_From,SysDate);
Else
  vTransDateFrom := p_TransDateFrom;
End If;
If P_TransDateTo is Null Then 
  vTransDateTo := Nvl( PeriodLRow.Actual_Date_To,SysDate);
Else
  vTransDateTo := p_TransDateTo;
End If;
Dbms_OutPut.Put_Line('In Snap:'||vTransDateFrom||' '||vTransDateTo);
 PrevPeriodLRow.Period_Name := 
       Period_Pkg.Get_PrevPeriodName(PeriodLRow.Period_Name,PeriodLRow.Period_Header_ID);
CMN_PERIOD_LINESAPI('SELECT',PrevPeriodLRow);
vLastMonthDate := PrevPeriodLRow.Actual_Date_From;
vLastMonth := To_Char(vLastMonthDate,'FMMONTH');
vLastYear  := To_Char(vLastMonthDate,'RRRR');
IF PeriodLRow.Period_Month is Not Null Then 
  vMonth := PeriodLRow.Period_Month;
  vYear  := PeriodLRow.Period_Year;
Else
vMonth := To_Char(vTransDateFrom,'FMMONTH');
vYear  := To_Char(vTransDateTo,'RRRR');
End If; 

For LocRow In (Select Location_Id,Location_Name,
                      Item_Snapshot_Schedule_ID,
                      Purge_Snapshot_Days,
                      Item_Snapshot_Type
               From  Inv_Locations
               Where Active = 'Y'
               And   Stockable = 'Y'
               And   Location_ID = Nvl(p_LocationID,Location_Id)
               Order By Location_Name
               )
 Loop --- Locations
  Dbms_OutPut.Put_Line('Location:'||LocRow.Location_Name);
   Begin
     Delete Inv_SubLoc_VAL_Snap
     Where  Period_Name = PeriodLRow.Period_Name
     And   Location_ID   = LocRow.Location_ID;
     Delete INV_MONHLYREVIEW_VAL_SNAP
     Where  Period_Name = PeriodLRow.Period_Name
     And   Location_ID   = LocRow.Location_ID;
    
   Exception When Others Then Null;
   End;
  For ItemSubLocRow in ( select sl.IL_Location_ID,sl.Sub_Location_ID,
                                sl.Bu_ID
                                ,Decode(i.Valuable,'Y','VALUED','NON VALUED') Groupedby1_Value
                                , Sum((nvl(il.Quantity,0)-Nvl(il.Minus_Quantity,0))*Nvl(i.Unit_Cp,0)) Value_Base
                                , Sum((nvl(il.Quantity,0)-Nvl(il.Minus_Quantity,0))*Nvl(i.Average_UnitCP,0)) Value_Average
                                , Sum((nvl(il.Quantity,0)-Nvl(il.Minus_Quantity,0))*Nvl(i.Last_Bought_UnitCP,0)) Value_Lastbought
                         From   inv_Sub_locations sl, 
                                Inv_Item_Sub_Locations il,
                                Inv_Item_Masters i
                         Where  il.Location_ID = LocRow.Location_ID
                         And    il.Location_ID = sl.IL_Location_ID
                         And    il.Sub_Location_ID = Sl.Sub_Location_ID
                         And    sl.Include_Stock = 'Y'
                         And    sl.Stockable = 'Y'
                         And    il.Item_ID   = i.Item_Id
                         And    i.Stockable = 'Y'
                         And    il.Quantity > 0 
                         Group By  sl.IL_Location_ID,sl.Sub_Location_ID,
                                sl.Bu_ID,Decode(i.Valuable,'Y','VALUED','NON VALUED')
                       )
                         
     Loop -- Sub Location Items
      SnapRow.Snapshot_ID    := -1;
      SnapRow.Snapshot_Date  := Trunc(Sysdate);
      SnapRow.Snapshot_Month := vMonth;
      SnapRow.Snapshot_Year  := vYear;
      SnapRow.BU_ID   := ItemSubLocRow.Bu_ID;
       SnapRow.GROUPEDBY1_VALUE   := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRow.LOCATION_ID   := ItemSubLocRow.IL_LOCATION_ID;
      SnapRow.SUB_LOCATION_ID   := ItemSubLocRow.SUB_LOCATION_ID;
      SnapRow.PERIOD_NAME       :=  PeriodLRow.Period_Name;
      SnapRow.PERIOD_LINE_ID       :=  PeriodLRow.Period_Line_ID;
      select Decode(SnapRow.GROUPEDBY1_VALUE,'VALUED','Y','N')
      Into   vValuedItem
      From Dual;
      MovementStockValue(p_LocationID =>SnapRow.LOCATION_ID,
                          p_SubLocationID =>SnapRow.Sub_LOCATION_ID,
                          p_ValuedItem   => vValuedItem,
                          p_Month        => vMonth,
                          p_Year         => vYear,
                          p_ValuedNonValued => SnapRow.GROUPEDBY1_Value,
                          p_PeriodName   =>   PeriodLRow.Period_Name,
                          p_TransDateFrom   =>   vTransDateFrom,
                          p_TransDateTo     =>   vTransDateTo,
                          p_ValueBase => SnapRow.Movement_Value_Base,
			  p_ValueAverage => SnapRow.Movement_Value_Average,
			  p_ValueLastBought => SnapRow.Movement_Value_LastBought);
      SnapRow.Created_By := -1;
      SnapRow.Last_Updated_By := -1;
      
      OpeningStockValue(p_LocationID =>SnapRow.LOCATION_ID,
                          p_SubLocationID =>SnapRow.Sub_LOCATION_ID,
                          p_ValuedItem   => vValuedItem,
                          p_Month        => vLastMonth,
                          p_Year         => vLastYear,
                          p_ValuedNonValued => SnapRow.GROUPEDBY1_Value,
                          p_PeriodName   => PrevPeriodLRow.Period_Name,
                          p_OpenValueBase => SnapRow.Open_Value_Base,
			  p_OpenValueAverage => SnapRow.Open_Value_Average,
			  p_OpenValueLastBought => SnapRow.Open_Value_LastBought);
     -- SnapRow.Movement_Value_Base     :=  SnapRow.Movement_Value_Base + SnapRow.Open_Value_Base;
     -- SnapRow.Movement_Value_Average  :=  SnapRow.Movement_Value_Average + SnapRow.Open_Value_Average;
    --  SnapRow.Movement_Value_LastBought := SnapRow.Movement_Value_LastBought + SnapRow.Open_Value_LastBought;
      SnapRow.Close_Value_Base      :=  ItemSubLocRow.Value_Base ;
      SnapRow.Close_Value_Average   :=  ItemSubLocRow.Value_Average ;
      SnapRow.Close_Value_LastBought   := ItemSubLocRow.Value_LastBought ;   
      INV_SUBLOC_VAL_SNAPAPI('INSERT',SnapRow);
     IF ItemSubLocRow.GROUPEDBY1_VALUE = 'VALUED' Then 
      SnapRevRow.Snapshot_Date  := Trunc(Sysdate);
      SnapRevRow.Snapshot_Month := vMonth;
      SnapRevRow.Snapshot_Year  := vYear;
      SnapRevRow.BU_ID   := ItemSubLocRow.Bu_ID;
      SnapRevRow.LOCATION_ID   := ItemSubLocRow.IL_LOCATION_ID;
      SnapRevRow.SUB_LOCATION_ID   := ItemSubLocRow.SUB_LOCATION_ID;
      SnapRevRow.Created_By := -1;
      SnapRevRow.Last_Updated_By := -1;
      SnapRevRow.Creation_Date := Sysdate;
      SnapRevRow.Last_Update_Date := Sysdate;
      SnapRevRow.PERIOD_NAME       :=  PeriodLRow.Period_Name;
      SnapRevRow.PERIOD_LINE_ID       :=  PeriodLRow.Period_Line_ID;

      SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'OPENING BALANCE';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := SnapRow.OPEN_Value_Average;
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
      SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'MOVEMENT';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := SnapRow.Movement_Value_Average;
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
      SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'CLOSING BALANCE';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := SnapRow.CLOSE_Value_Average;
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
      SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'A CLASS ITEMS';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := 
          Inv_Pkg.SubLocItemCategoryVal(SnapRevRow.Location_Id,SnapRevRow.Sub_Location_Id,'A CLASS','AVERAGE');
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
      SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'B CLASS ITEMS';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := 
          Inv_Pkg.SubLocItemCategoryVal(SnapRevRow.Location_Id,SnapRevRow.Sub_Location_Id,'B CLASS','AVERAGE');
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
       SnapRevRow.Snapshot_ID    := -1;
      SnapRevRow.IDENTIFIER1    := 'C CLASS ITEMS';
      SnapRevRow.IDENTIFIER2    := ItemSubLocRow.GROUPEDBY1_VALUE;
      SnapRevRow.RECORD_VALUE  := 
      Inv_Pkg.SubLocItemCategoryVal(SnapRevRow.Location_Id,SnapRevRow.Sub_Location_Id,'C CLASS','AVERAGE');
      INV_MONHLYREVIEW_VAL_SNAPAPI('INSERT',SnapRevRow);
     End If;
    End Loop;  -- Sub Locations;
 End Loop;  -- Locations;

Exception When Others then 
 Raise_Application_Error(-20001,'ITEMSNAP:'||SqlErrm);
END; 
-----------------------------------------------------
Procedure OpeningStockValue(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ValuedItem    In Varchar2 Default 'N',
                          p_Month         In Varchar2,
                          p_Year          In Number,
                          p_SubLocGroupCode In Varchar2 Default Null,
                          p_ValuedNonValued Varchar2,
			  p_PeriodName     Varchar2,
                          p_OpenValueBase Out Number,
			  p_OpenValueAverage Out Number,
			  p_OpenValueLastBought Out Number)
IS
 SnapShotCount Number := 0;
 InitialStockCount Number := 0;
Begin
Select nvl(count(1),0)
Into   SnapShotCount
From   Inv_SubLOC_Val_Snap r
Where  r.Period_Name           = p_PeriodName;   
If SnapshotCount = 0 then 
   Select nvl(count(1),0)
   Into   InitialStockCount
   From   Rep_stktakeaudit_V
   Where  stktake_Type = 'INITIAL';
 Dbms_Output.Put_Line('StockCount:'||InitialStockCount);
   If InitialStockCount = 0 Then Return; End If;
 Select Nvl(Sum(r.BaseValue),0),
        Nvl(Sum(r.AverageValue),0)
       ,Nvl(Sum(r.LastBoughtValue),0)
  Into   p_OpenValueBase,p_OpenValueAverage,p_OpenValueLastBought
 From   REP_StkTakeAudit_V r, Inv_Sub_Locations sl
 Where  r.Location_Id 		= p_LocationID
 And    r.Sub_Location_ID 	= p_SubLocationID
 And    r.Sub_Location_ID       = sl.Sub_Location_ID
 And    r.Valuable              = p_ValuedItem
 And    r.StkTake_Type = 'INITIAL';
 Dbms_Output.Put_Line('OPENValue:'||p_OpenValueBase);
 Return;
Else
Select Nvl(Sum(r.Close_Value_Base),0),
       Nvl(Sum(r.Close_Value_Average),0),
       Nvl(Sum(r.Close_Value_Lastbought),0)
  Into   p_OpenValueBase,p_OpenValueAverage,p_OpenValueLastBought
 From    INV_SUBLOC_VAL_SNAP r
 Where  r.Location_Id 		= p_LocationID
 And    r.Sub_Location_ID 	= p_SubLocationID
 And    r.GROUPEDBY1_VALUE      = p_ValuedNonValued
 And    r.Period_Name           = p_PeriodName;
 Return;
End If; 


Exception When Others then Null;
End;

-----------------------------------------------------
Procedure MovementStockValue(p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ValuedItem    In Varchar2 Default 'N',
                          p_Month         In Varchar2,
                          p_Year          In Number,
                          p_SubLocGroupCode In Varchar2 Default Null,
                          p_ValuedNonValued Varchar2,
			  p_PeriodName     Varchar2,
                          p_TransDateFrom  Date,
                          p_TransDateTo    Date,
                          p_ValueBase Out Number,
			  p_ValueAverage Out Number,
			  p_ValueLastBought Out Number)
IS
p_OpenValueBase      Number     := 0;
p_OpenValueAverage   Number     := 0;
p_OpenValueLastBought Number    := 0;

Begin
p_ValueBase := 0;
p_ValueAverage := 0;
p_ValueLastBought := 0;
p_OpenValueBase := 0;
p_OpenValueAverage := 0;
p_OpenValueLastBought := 0;
Select Sum((Nvl(Credit_Quantity,0)-Nvl(Debit_Quantity,0))* Unit_Cp),
       Sum((Nvl(Credit_Quantity,0)-Nvl(Debit_Quantity,0))* Average_UnitCp),
       Sum((Nvl(Credit_Quantity,0)-Nvl(Debit_Quantity,0))* Last_Bought_UnitCp)
  Into   p_ValueBase,p_ValueAverage,p_ValueLastBought
 From    REP_ITEM_MOVEMENTHIST_V r
 Where  r.Location_Id 		= p_LocationID
 And    r.Sub_Location_ID 	= p_SubLocationID
 And    r.Valuable              = p_ValuedItem
 And    Trunc(r.Report_Date) Between p_TransDateFrom and p_TransDateTo; 
 p_ValueBase := p_OpenValueBase + p_ValueBase;
 p_ValueAverage := p_OpenValueAverage + p_ValueAverage;
 p_ValueLastBought := p_OpenValueLastBought + p_ValueLastBought;
Dbms_Output.Put_Line(p_LocationID ||'SL: '||p_SubLocationID ||' VL:'||p_ValuedItem);
Exception When Others then Null;
End;
-----------------------------------------------------
Procedure Pop_ReportColumns(p_Report_Identifier  In VARCHAR2 Default Null
			,p_Column1_Title  In VARCHAR2 Default Null
			,p_Column2_Title  In VARCHAR2 Default Null
			,p_Column3_Title  In VARCHAR2 Default Null
			,p_Column4_Title  In VARCHAR2 Default Null
			,p_Column5_Title  In VARCHAR2 Default Null
			,p_Column6_Title  In VARCHAR2 Default Null
			,p_Column7_Title  In VARCHAR2 Default Null
			,p_Column8_Title  In VARCHAR2 Default Null
			,p_Column9_Title  In VARCHAR2 Default Null
			,p_Column10_Title  In VARCHAR2 Default Null
			,p_Column11_Title  In VARCHAR2 Default Null
			,p_Column12_Title  In VARCHAR2 Default Null
			,p_Column13_Title  In VARCHAR2 Default Null
			,p_Column14_Title  In VARCHAR2 Default Null
			,p_Column15_Title  In VARCHAR2 Default Null
			,p_Column16_Title  In VARCHAR2 Default Null
			,p_Column17_Title  In VARCHAR2 Default Null
			,p_Column18_Title  In VARCHAR2 Default Null
			,p_Column19_Title  In VARCHAR2 Default Null
			,p_Column20_Title  In VARCHAR2 Default Null
			,p_Column21_Title  In VARCHAR2 Default Null
			,p_Column22_Title  In VARCHAR2 Default Null
			,p_Column23_Title  In VARCHAR2 Default Null
			,p_Column24_Title  In VARCHAR2 Default Null
			,p_Column25_Title  In VARCHAR2 Default Null
			,p_Column26_Title  In VARCHAR2 Default Null
			,p_Column27_Title  In VARCHAR2 Default Null
			,p_Column28_Title  In VARCHAR2 Default Null
			,p_Column29_Title  In VARCHAR2 Default Null
			,p_Column30_Title  In VARCHAR2 Default Null
			,p_Report_Type  In VARCHAR2 Default Null
			,p_Bu_Id  In NUMBER Default Null) 
IS 
 RepColRow   CMN_REPORT_COLUMNS%RowType;
Begin
 if p_Report_Identifier is Null Then Return; End If; 
 RepColRow.Report_Column_Id    	:= -1;
 RepColRow.Report_Identifier    := p_Report_Identifier;
 RepColRow.Column1_Title    	:= p_Column1_Title;
 RepColRow.Column2_Title    	:= p_Column2_Title;
 RepColRow.Column3_Title    	:= p_Column3_Title;
 RepColRow.Column4_Title    	:= p_Column4_Title;
 RepColRow.Column5_Title    	:= p_Column5_Title;
 RepColRow.Column6_Title    	:= p_Column6_Title;
 RepColRow.Column7_Title    	:= p_Column7_Title;
 RepColRow.Column8_Title    	:= p_Column8_Title;
 RepColRow.Column9_Title    	:= p_Column9_Title;
 RepColRow.Column10_Title    	:= p_Column10_Title;
 RepColRow.Column11_Title    	:= p_Column11_Title;
 RepColRow.Column12_Title    	:= p_Column12_Title;
 RepColRow.Column13_Title    	:= p_Column13_Title;
 RepColRow.Column14_Title    	:= p_Column14_Title;
 RepColRow.Column15_Title    	:= p_Column15_Title;
 RepColRow.Column16_Title    	:= p_Column16_Title;
 RepColRow.Column17_Title    	:= p_Column17_Title;
 RepColRow.Column18_Title    	:= p_Column18_Title;
 RepColRow.Column19_Title    	:= p_Column19_Title;
 RepColRow.Column20_Title    	:= p_Column20_Title;
 RepColRow.Column21_Title    	:= p_Column21_Title;
 RepColRow.Column22_Title    	:= p_Column22_Title;
 RepColRow.Column23_Title    	:= p_Column23_Title;
 RepColRow.Column24_Title   	:= p_Column24_Title;
 RepColRow.Column25_Title   	:= p_Column25_Title;
 RepColRow.Column26_Title    	:= p_Column26_Title;
 RepColRow.Column27_Title    	:= p_Column27_Title;
 RepColRow.Column28_Title    	:= p_Column28_Title;
 RepColRow.Column29_Title    	:= p_Column29_Title;
 RepColRow.Column30_Title    	:= p_Column30_Title;
 RepColRow.Report_Type    	:= p_Report_Type;
 RepColRow.Created_By    	:= Session_Pkg.GetContextValue('USER_ID');
 RepColRow.Bu_Id    		:= Session_Pkg.GetContextValue('BU_ID');
 CMN_REPORT_COLUMNSAPI('INSERT',RepColRow);
 
Exception When Others Then 
 Raise_Application_Error(-20001,SqlErrm);
End;
----------------------------------------------------------------------
Procedure Pop_MonthlyINVRepCols 
IS
Begin
 Pop_ReportColumns(p_Report_Identifier    => 'MONTHLY INVENTORY REPORT'
			,p_Column1_Title  => 'Working Valued'
			,p_Column2_Title  => 'Working Non Valued'
			,p_Column3_Title  => 'Programme Valued'
			,p_Column4_Title  => 'Programme Non Valued'
			,p_Column5_Title  => 'Redundtant Valued'
			,p_Column6_Title  => 'Redundant Non Valued'
			,p_Column7_Title  => 'Obsolete Valued'
			,p_Column8_Title  => 'Obsolete Non  Valued'
			,p_Column9_Title  => 'VAN Valued'
			,p_Column10_Title => 'VAN Non Valued'
			,p_Report_Type    => 'SNAPSHOT');
Exception When Others Then 
 Raise_Application_Error(-20002,SqlErrm);
End;
---------------------------------------------------------------
Procedure Pop_ReportOutputValues(p_Snapshot_Date In DATE Default Null
			,p_Snapshot_Month In VARCHAR2 Default Null
			,p_Snapshot_Year In NUMBER Default Null
			,p_Report_Identifier In VARCHAR2 Default Null
			,p_Report_Description In VARCHAR2 Default Null
                        ,p_Period_Header_ID   In Number Default Null
			,p_Period_Line_Id In NUMBER Default Null
			,p_Period_Name In VARCHAR2 Default Null
			,p_Location_Id In NUMBER Default Null
			,p_Sub_Location_Id In NUMBER Default Null
			,p_Row_Identifier In VARCHAR2 Default Null
			,p_Sl_No In NUMBER Default Null
			,p_Report_Date_From In Date Default Null
			,p_Report_Date_To    In Date Default Null
			,p_SL_Date_From In Date Default Null
			,p_SL_Date_To In Date Default Null
			,p_Column1_Value In NUMBER Default Null
			,p_Column2_Value In NUMBER Default Null
			,p_Column3_Value In NUMBER Default Null
			,p_Column4_Value In NUMBER Default Null
			,p_Column5_Value In NUMBER Default Null
			,p_Column6_Value In NUMBER Default Null
			,p_Column7_Value In NUMBER Default Null
			,p_Column8_Value In NUMBER Default Null
			,p_Column9_Value In NUMBER Default Null
			,p_Column10_Value In NUMBER Default Null
			,p_Column11_Value In NUMBER Default Null
			,p_Column12_Value In NUMBER Default Null
			,p_Column13_Value In NUMBER Default Null
			,p_Column14_Value In NUMBER Default Null
			,p_Column15_Value In NUMBER Default Null
			,p_Column16_Value In NUMBER Default Null
			,p_Column17_Value In NUMBER Default Null
			,p_Column18_Value In NUMBER Default Null
			,p_Column19_Value In NUMBER Default Null
			,p_Column20_Value In NUMBER Default Null
			,p_Column21_Value In NUMBER Default Null
			,p_Column22_Value In NUMBER Default Null
			,p_Column23_Value In NUMBER Default Null
			,p_Column24_Value In NUMBER Default Null
			,p_Column25_Value In NUMBER Default Null
			,p_Column26_Value In NUMBER Default Null
			,p_Column27_Value In NUMBER Default Null
			,p_Column28_Value In NUMBER Default Null
			,p_Column29_Value In NUMBER Default Null
			,p_Column30_Value In NUMBER Default Null
			,p_Total1         In NUMBER Default Null
			,p_Total2         In NUMBER Default Null
			,p_Total3         In NUMBER Default Null
			,p_Total4         In NUMBER Default Null
			,p_Grand_Total1   In NUMBER Default Null
			,p_Grand_Total2   In NUMBER Default Null
			,p_Created_By In NUMBER Default Null
			,p_Bu_Id In NUMBER Default Null
			,p_Creation_Date In DATE Default Null
			,p_Record_Status In VARCHAR2 Default Null
			,p_Last_Update_Date In DATE Default Null
			,p_Last_Updated_By In NUMBER Default Null
			,p_Update_Source In VARCHAR2 Default Null)
IS 
 RepRow   CMN_REPORTOUTPUTS_SNAP%RowType;
Begin
 if p_Report_Identifier is Null or p_Row_Identifier is Null Then Return; End If; 
	RepRow.Snapshot_Date      := p_Snapshot_Date;
	RepRow.Snapshot_Month     := p_Snapshot_Month;
	RepRow.Snapshot_Year      := p_Snapshot_Year;
	RepRow.Report_Identifier  := p_Report_Identifier;
	RepRow.Report_Description := p_Report_Description;
	RepRow.Period_Line_Id     := p_Period_Line_Id;
        RepRow.Period_Header_Id   := p_Period_Header_Id;
	RepRow.Period_Name        := p_Period_Name;
	RepRow.Location_Id        := p_Location_Id;
	RepRow.Sub_Location_Id    := p_Sub_Location_Id;
	RepRow.Row_Identifier     := p_Row_Identifier;
        RepRow.REPORT_DATE_FROM   := p_REPORT_DATE_FROM;
        RepRow.REPORT_DATE_TO     := p_REPORT_DATE_TO;
        RepRow.SL_DATE_FROM       := p_SL_DATE_FROM;
        RepRow.SL_DATE_TO         := p_SL_DATE_TO;
        RepRow.Sl_No              := p_Sl_No;
	RepRow.Column1_Value      := p_Column1_Value;
	RepRow.Column2_Value      := p_Column2_Value;
	RepRow.Column3_Value      := p_Column3_Value;
	RepRow.Column4_Value      := p_Column4_Value;
	RepRow.Column5_Value      := p_Column5_Value;
	RepRow.Column6_Value      := p_Column6_Value;
	RepRow.Column7_Value      := p_Column7_Value;
	RepRow.Column8_Value      := p_Column8_Value;
	RepRow.Column9_Value      := p_Column9_Value;
	RepRow.Column10_Value      := p_Column10_Value;
	RepRow.Column11_Value      := p_Column11_Value;
	RepRow.Column12_Value      := p_Column12_Value;
	RepRow.Column13_Value      := p_Column13_Value;
	RepRow.Column14_Value      := p_Column14_Value;
	RepRow.Column15_Value      := p_Column15_Value;
	RepRow.Column16_Value      := p_Column16_Value;
	RepRow.Column17_Value      := p_Column17_Value;
	RepRow.Column18_Value      := p_Column18_Value;
	RepRow.Column19_Value      := p_Column19_Value;
	RepRow.Column20_Value      := p_Column20_Value;
	RepRow.Column21_Value      := p_Column21_Value;
	RepRow.Column22_Value      := p_Column22_Value;
	RepRow.Column23_Value      := p_Column23_Value;
	RepRow.Column24_Value      := p_Column24_Value;
	RepRow.Column25_Value      := p_Column25_Value;
	RepRow.Column26_Value      := p_Column26_Value;
	RepRow.Column27_Value      := p_Column27_Value;
	RepRow.Column28_Value      := p_Column28_Value;
	RepRow.Column29_Value      := p_Column29_Value;
	RepRow.Column30_Value      := p_Column30_Value;
	RepRow.Total1              := p_Total1;
        RepRow.Total2              := p_Total2;
        RepRow.Total3              := p_Total3;
        RepRow.Total4              := p_Total4;
        RepRow.Grand_Total1        := p_Grand_Total1;
        RepRow.Grand_Total2        := p_Grand_Total2;
	RepRow.Created_By          := Session_Pkg.GetContextValue('USER_ID');
	RepRow.Bu_Id               := Session_Pkg.GetContextValue('BU_ID');
	RepRow.Last_Updated_By     := Session_Pkg.GetContextValue('USER_ID');
 CMN_REPORTOUTPUTS_SNAPAPI('INSERT',RepRow);
 
Exception When Others Then 
 Raise_Application_Error(-20001,SqlErrm);
End;
-----------------------------------------------------
Procedure MIR_AssignColValue(p_Valuable        In Varchar2,
                             p_LocSubGroup   In Varchar2,
                             p_SubLocGroupSeq   In Varchar2, 
                             p_Value         In Number,
                             p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
Begin
     If p_SubLocGroupSeq = '1' and p_Valuable = 'Y' Then 
        p_RepRow.Column1_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '1' and p_Valuable = 'N' Then 
        p_RepRow.Column2_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '2' and p_Valuable = 'Y' Then 
        p_RepRow.Column3_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '2' and p_Valuable = 'N' Then 
        p_RepRow.Column4_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '3' and p_Valuable = 'Y' Then 
        p_RepRow.Column5_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '3' and p_Valuable = 'N' Then 
        p_RepRow.Column6_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '4' and p_Valuable = 'Y' Then 
        p_RepRow.Column7_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '4' and p_Valuable = 'N' Then 
        p_RepRow.Column8_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '5' and p_Valuable = 'Y' Then 
        p_RepRow.Column9_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '5' and p_Valuable = 'N' Then 
        p_RepRow.Column10_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '6' and p_Valuable = 'Y' Then 
        p_RepRow.Column11_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '6' and p_Valuable = 'N' Then 
        p_RepRow.Column12_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '7' and p_Valuable = 'Y' Then 
        p_RepRow.Column13_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '7' and p_Valuable = 'N' Then 
        p_RepRow.Column14_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '8' and p_Valuable = 'Y' Then 
        p_RepRow.Column15_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '8' and p_Valuable = 'N' Then 
        p_RepRow.Column16_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '9' and p_Valuable = 'Y' Then 
        p_RepRow.Column17_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '9' and p_Valuable = 'N' Then 
        p_RepRow.Column18_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '10' and p_Valuable = 'Y' Then 
        p_RepRow.Column19_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '10' and p_Valuable = 'N' Then 
        p_RepRow.Column20_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '11' and p_Valuable = 'Y' Then 
        p_RepRow.Column21_Value := p_Value;
     End If;
     If p_SubLocGroupSeq = '11' and p_Valuable = 'N' Then 
        p_RepRow.Column22_Value := p_Value;
     End If;
  p_RepRow.Total1 :=  Nvl(p_RepRow.Column1_Value,0) + Nvl(p_RepRow.Column3_Value,0)
                    + Nvl(p_RepRow.Column5_Value,0) + Nvl(p_RepRow.Column7_Value,0)
                    + Nvl(p_RepRow.Column9_Value,0) + Nvl(p_RepRow.Column11_Value,0)
                    + Nvl(p_RepRow.Column13_Value,0) + Nvl(p_RepRow.Column15_Value,0);

 p_RepRow.Total2 :=  Nvl(p_RepRow.Column2_Value,0) + Nvl(p_RepRow.Column4_Value,0)
                    + Nvl(p_RepRow.Column6_Value,0) + Nvl(p_RepRow.Column8_Value,0)
                    + Nvl(p_RepRow.Column10_Value,0) + Nvl(p_RepRow.Column12_Value,0)
                    + Nvl(p_RepRow.Column14_Value,0) + Nvl(p_RepRow.Column16_Value,0);

 p_RepRow.Grand_Total1 := p_RepRow.Total1 + p_RepRow.Total2;
End;
-----------------------------------------------------
Procedure MIR_OpeningStock(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
 SnapShotCount Number := 0;
 InitialStockCount Number := 0;
Begin
CMN_REPORTOUTPUTS_SNAPAPI('SELECT',p_RepRow);
 Dbms_Output.Put_Line('MIR OPENSTOCK:SnapshotID:'||p_RepRow.Snapshot_ID);
If p_RepRow.Snapshot_ID is Not Null Then
  Return;
End If;
   Select nvl(count(1),0)
   Into   InitialStockCount
   From   Rep_stktakeaudit_V
   Where  stktake_Type = 'INITIAL'
   And    Location_Id  = p_RepRow.Location_ID;
 Dbms_Output.Put_Line('StockCount:'||InitialStockCount);
   If InitialStockCount = 0 Then Return; End If;
   For I in (Select cl.Attribute1, cl.Lookup_Code,r.Valuable,
                    Nvl(Sum(r.AverageValue),0) AverageValue
            From   REP_StkTakeAudit_V r,
                   Inv_Sub_Locations sl,
                   CMN_LOOKUP_CODES cl
            Where  r.Location_Id        = p_RepRow.Location_ID
            And    r.Sub_Location_ID    = sl.Sub_Location_ID
            And    sl.Sub_Loc_Group_Code = cl.Lookup_Code 
            And    cl.CLT_LOOKUP_TYPE   = 'SUB_LOCATION_GROUP_CODE'
            And    r.StkTake_Type = 'INITIAL'
            Group By cl.Attribute1,cl.Lookup_Code,r.Valuable
            Order By cl.Attribute1,r.Valuable desc)
   Loop
     MIR_AssignColValue(p_Valuable      => i.Valuable,
                        p_LocSubGroup   => i.Lookup_Code,
                        p_SubLocGroupSeq => i.Attribute1  , 
                        p_Value          => i.AverageValue,
                        p_RepRow         => p_RepRow);
  End Loop;
Exception When Others then Null;
End;
------------------------------------------------------------
Procedure MIR_GoodsReceipt(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GRN',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Qty_Received_Units*l.Unit_Cp) GRN_Amount,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   PO_GRN_LINES l, PO_GRN_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.PGH_GRN_ID = h.GRN_ID
          And    l.Item_ID    = i.Item_Id
          And    h.SHIPTO_LOCATION_ID = p_RepRow.Location_ID
          And    h.GRN_STATUS  = 'APPROVED'
          And    Trunc(h.Grn_Status_Date) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    l.Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.GRN_Amount,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('GRN:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
---------------------------------------------------------------
Procedure MIR_EXTMOVEMENT(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                          p_ItemMovementCategory  In Varchar2 Default 'EWS' )
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'TRT',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Quantity*i.Average_UnitCp) MovementValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_MOVEMENT_LINES l, INV_ITEM_MOVEMENT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.IIMH_ITEM_MOVEMENT_HEADER_ID = h.ITEM_MOVEMENT_HEADER_ID
          And    l.IIM_Item_ID    = i.Item_Id
          And    h.FROM_LOCATION_ID = p_RepRow.Location_ID
          And    h.ITEM_MOVEMENT_CATEGORY = p_ItemMovementCategory
          And    h.HEADER_MOVEMENT_STATUS  = 'TRANSFERRED'
          ANd    h.Movement_Type  = 'INTERNALTOEXTERNAL'
         And    Trunc(h.HEADER_MOVEMENT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    h.From_Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('EXT MOVEMENT: Seq'||J.Attribute1||' Value:'||J.MovementValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.MovementValue*-1,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('EXT MOVEMENT:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;

-----------------------------------------------------
Procedure MIR_InternalDebitMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Quantity*i.Average_UnitCp) MovementValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_MOVEMENT_LINES l, INV_ITEM_MOVEMENT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.IIMH_ITEM_MOVEMENT_HEADER_ID = h.ITEM_MOVEMENT_HEADER_ID
          And    l.IIM_Item_ID    = i.Item_Id
          And    h.FROM_LOCATION_ID = p_RepRow.Location_ID
          And    h.HEADER_MOVEMENT_STATUS  = 'TRANSFERRED'
          And    Nvl(h.ITEM_MOVEMENT_CATEGORY,'NONE') not in ('EWS','SUPPLIER RETURNS')
          ANd    h.Movement_Type  in ('INTERNALTOINTERNAL','INTERNALTOEXTERNAL')
         And    Trunc(h.HEADER_MOVEMENT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    h.From_Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.MovementValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.MovementValue*-1,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('INT DEBIT MOVEMENT:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;

-----------------------------------------------------
Procedure MIR_InternalCreditMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Quantity*i.Average_UnitCp) MovementValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_MOVEMENT_LINES l, INV_ITEM_MOVEMENT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.IIMH_ITEM_MOVEMENT_HEADER_ID = h.ITEM_MOVEMENT_HEADER_ID
          And    l.IIM_Item_ID    = i.Item_Id
          And    h.TO_LOCATION_ID = p_RepRow.Location_ID
          And    h.HEADER_MOVEMENT_STATUS  = 'TRANSFERRED'
          ANd    h.Movement_Type  = 'INTERNALTOINTERNAL'
         And    Trunc(h.HEADER_MOVEMENT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    h.TO_Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.MovementValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.MovementValue,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('INT CREDIT MOVEMENT:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;

-----------------------------------------------------
Procedure MIR_LocationDebitMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Quantity*i.Average_UnitCp) MovementValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_MOVEMENT_LINES l, INV_ITEM_MOVEMENT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.IIMH_ITEM_MOVEMENT_HEADER_ID = h.ITEM_MOVEMENT_HEADER_ID
          And    l.IIM_Item_ID    = i.Item_Id
          And    h.FROM_LOCATION_ID = p_RepRow.Location_ID
          And    h.HEADER_MOVEMENT_STATUS  in ('INTRANSIT','RECEIVED')
          ANd    h.Movement_Type  = 'INTEROFFICE'
         And    Trunc(h.HEADER_MOVEMENT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    h.FROM_Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.MovementValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.MovementValue*-1,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('LOC Debit MOVEMENT:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
-----------------------------------------------------

Procedure MIR_LocationCreditMovement(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum(l.Quantity*i.Average_UnitCp) MovementValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_MOVEMENT_LINES l, INV_ITEM_MOVEMENT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.IIMH_ITEM_MOVEMENT_HEADER_ID = h.ITEM_MOVEMENT_HEADER_ID
          And    l.IIM_Item_ID    = i.Item_Id
          And    h.TO_LOCATION_ID = p_RepRow.Location_ID
          And    h.HEADER_MOVEMENT_STATUS  in ('RECEIVED')
          ANd    h.Movement_Type  = 'INTEROFFICE'
         And    Trunc(h.HEADER_MOVEMENT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    h.TO_Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.MovementValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.MovementValue,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('LOCA CREDIT MOVEMENT:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;

-----------------------------------------------------
Procedure MIR_StockCreditVariance(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType )
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum((nvl(l.Qty_Counted,0) - (nvl(l.Qty_InStock,0)-Nvl(l.Minus_Quantity,0)))
                                 *i.Average_UnitCp) VarianceValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_COUNT_LINES l, INV_ITEM_COUNT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl, Inv_Stktake_Types st
          Where  l.item_Count_header_id = h.item_Count_header_id
          And    l.Item_ID    = i.Item_Id
          And    h.LOCATION_ID = p_RepRow.Location_ID
          And    h.COUNT_STATUS  in ('APPROVED')
         And    Trunc(h.COUNT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    l.Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          And   nvl(l.Qty_Counted,0) - nvl(l.Qty_InStock,0) > 0 
          And   h.StkTake_Type_ID    = st.StkTake_Type_ID
          And   st.StkTake_Type <> 'INITIAL'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.VarianceValue,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('Stock Varaiance Credit:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
-----------------------------------------------------
Procedure MIR_StockDebitVariance(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType )
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
RetValue := PERIOD_PKG.Get_SubLedgerDates(p_SubLedgerCode => 'GL',
                                          p_CategoryCode  => 'NONE',
                                          p_Date          =>  Null,
                                          p_HeaderID      => p_RepRow.PERIOD_HEADER_ID ,
                                          p_LineID        => p_RepRow.PERIOD_LINE_ID ,
                                          p_DateFrom      => p_RepRow.SL_DATE_FROM,
                                          p_DateTo        => p_RepRow.SL_DATE_TO);

For J In (Select i.Valuable,Sum((nvl(l.Qty_Counted,0) - (nvl(l.Qty_InStock,0)-Nvl(l.Minus_Quantity,0)))
                                 *i.Average_UnitCp) VarianceValue,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_COUNT_LINES l, INV_ITEM_COUNT_HEADERS h, 
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl, Inv_StkTake_Types st
          Where  l.item_Count_header_id = h.item_Count_header_id
          And    l.Item_ID    = i.Item_Id
          And    h.LOCATION_ID = p_RepRow.Location_ID
          And    h.COUNT_STATUS  in ('APPROVED')
         And    Trunc(h.COUNT_STATUS_DATE) between p_RepRow.SL_DATE_FROM and p_RepRow.SL_DATE_TO
          And    l.Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          And   nvl(l.Qty_Counted,0) - nvl(l.Qty_InStock,0) < 0  
          And   h.StkTake_Type_ID    = st.StkTake_Type_ID
          And   st.StkTake_Type <> 'INITIAL'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.VarianceValue);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.VarianceValue,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('Stock Varaiance Debit:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
-----------------------------------------------------
Procedure MIR_ExpectedClosingStock(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType )
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin
Select Sum(nvl(Column1_Value,0)) COLUMN1_VLAUE
                 ,Sum(nvl(Column2_Value,0)) COLUMN2_VALUE
		,Sum(nvl(Column3_Value,0)) COLUMN3_VALUE
		,Sum(nvl(Column4_Value,0)) COLUMN4_VALUE
		,Sum(nvl(Column5_Value,0)) COLUMN5_VALUE
		,Sum(nvl(Column6_Value,0)) COLUMN6_VALUE
		,Sum(nvl(Column7_Value,0)) COLUMN7_VALUE
		,Sum(nvl(Column8_Value,0)) COLUMN8_VALUE
		,Sum(nvl(Column9_Value,0)) COLUMN9_VALUE
		,Sum(nvl(Column10_Value,0)) COLUMN10_VALUE
		,Sum(nvl(Column11_Value,0)) COLUMN11_VALUE
		,Sum(nvl(Column12_Value,0)) COLUMN12_VALUE
		,Sum(nvl(Column13_Value,0)) COLUMN13_VALUE
		,Sum(nvl(Column14_Value,0)) COLUMN14_VALUE
		,Sum(nvl(Column15_Value,0)) COLUMN15_VALUE
		,Sum(nvl(Column16_Value,0)) COLUMN16_VALUE
		,Sum(nvl(Column17_Value,0)) COLUMN17_VALUE
		,Sum(nvl(Column18_Value,0)) COLUMN18_VALUE
		,Sum(nvl(Column19_Value,0)) COLUMN19_VALUE
		,Sum(nvl(Column20_Value,0)) COLUMN20_VALUE
		,Sum(nvl(Column21_Value,0)) COLUMN21_VALUE
		,Sum(nvl(Column22_Value,0)) COLUMN22_VALUE
		,Sum(nvl(Column23_Value,0)) COLUMN23_VALUE
		,Sum(nvl(Column24_Value,0)) COLUMN24_VALUE
		,Sum(nvl(Column25_Value,0)) COLUMN25_VALUE
		,Sum(nvl(Column26_Value,0)) COLUMN26_VALUE
		,Sum(nvl(Column27_Value,0)) COLUMN27_VALUE
		,Sum(nvl(Column28_Value,0)) COLUMN28_VALUE
		,Sum(nvl(Column29_Value,0)) COLUMN29_VALUE
		,Sum(nvl(Column30_Value,0)) COLUMN30_VALUE
		,Sum(nvl(Total1,0)) TOTAL1
		,Sum(nvl(Total2,0)) TOTAL2
		,Sum(nvl(Total3,0)) TOTAL3
		,Sum(nvl(Total4,0)) TOTAL4
		,Sum(nvl(Grand_Total1,0)) GRAND_TOTAL1
		,Sum(nvl(Grand_Total2,0)) GRAND_TOTAL2
    Into        P_RepRow.Column1_Value
		,P_RepRow.Column2_Value
		,P_RepRow.Column3_Value
		,P_RepRow.Column4_Value
		,P_RepRow.Column5_Value
		,P_RepRow.Column6_Value
		,P_RepRow.Column7_Value
		,P_RepRow.Column8_Value
		,P_RepRow.Column9_Value
		,P_RepRow.Column10_Value
		,P_RepRow.Column11_Value
		,P_RepRow.Column12_Value
		,P_RepRow.Column13_Value
		,P_RepRow.Column14_Value
		,P_RepRow.Column15_Value
		,P_RepRow.Column16_Value
		,P_RepRow.Column17_Value
		,P_RepRow.Column18_Value
		,P_RepRow.Column19_Value
		,P_RepRow.Column20_Value
		,P_RepRow.Column21_Value
		,P_RepRow.Column22_Value
		,P_RepRow.Column23_Value
		,P_RepRow.Column24_Value
		,P_RepRow.Column25_Value
		,P_RepRow.Column26_Value
		,P_RepRow.Column27_Value
		,P_RepRow.Column28_Value
		,P_RepRow.Column29_Value
		,P_RepRow.Column30_Value
		,P_RepRow.Total1
		,P_RepRow.Total2
		,P_RepRow.Total3
		,P_RepRow.Total4
		,P_RepRow.Grand_Total1
                ,P_RepRow.Grand_Total2
          From   CMN_REPORTOUTPUTS_SNAP
          Where  LOCATION_ID = p_RepRow.Location_ID
          And    PERIOD_NAME = p_RepRow.Period_Name;

Dbms_Output.Put_Line('Expected Closing Stock:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
-----------------------------------------------------
Procedure MIR_VarianceStockValuation(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                                   p_PrevSnaprow in CMN_REPORTOUTPUTS_SNAP%RowType )
IS
RetValue           Number;
Begin
 p_reprow.Column1_Value := p_PrevSnapRow.COLUMN1_VALUE - p_RepRow.COLUMN1_VALUE;
p_reprow.Column2_Value := p_PrevSnapRow.COLUMN2_VALUE - p_RepRow.COLUMN2_VALUE;
p_reprow.Column3_Value := p_PrevSnapRow.COLUMN3_VALUE - p_RepRow.COLUMN3_VALUE;
p_reprow.Column4_Value := p_PrevSnapRow.COLUMN4_VALUE - p_RepRow.COLUMN4_VALUE;
p_reprow.Column5_Value := p_PrevSnapRow.COLUMN5_VALUE - p_RepRow.COLUMN5_VALUE;
p_reprow.Column6_Value := p_PrevSnapRow.COLUMN6_VALUE - p_RepRow.COLUMN6_VALUE;
p_reprow.Column7_Value := p_PrevSnapRow.COLUMN7_VALUE - p_RepRow.COLUMN7_VALUE;
p_reprow.Column8_Value := p_PrevSnapRow.COLUMN8_VALUE - p_RepRow.COLUMN8_VALUE;
p_reprow.Column9_Value := p_PrevSnapRow.COLUMN9_VALUE - p_RepRow.COLUMN9_VALUE;
p_reprow.Column10_Value := p_PrevSnapRow.COLUMN10_VALUE - p_RepRow.COLUMN10_VALUE;
p_reprow.Column11_Value := p_PrevSnapRow.COLUMN11_VALUE - p_RepRow.COLUMN11_VALUE;
p_reprow.Column12_Value := p_PrevSnapRow.COLUMN12_VALUE - p_RepRow.COLUMN12_VALUE;
p_reprow.Column13_Value := p_PrevSnapRow.COLUMN13_VALUE - p_RepRow.COLUMN13_VALUE;
p_reprow.Column14_Value := p_PrevSnapRow.COLUMN14_VALUE - p_RepRow.COLUMN14_VALUE;
p_reprow.Column15_Value := p_PrevSnapRow.COLUMN15_VALUE - p_RepRow.COLUMN15_VALUE;
p_reprow.Column16_Value := p_PrevSnapRow.COLUMN16_VALUE - p_RepRow.COLUMN16_VALUE;
p_reprow.Column17_Value := p_PrevSnapRow.COLUMN17_VALUE - p_RepRow.COLUMN17_VALUE;
p_reprow.Column18_Value := p_PrevSnapRow.COLUMN18_VALUE - p_RepRow.COLUMN18_VALUE;
p_reprow.Column19_Value := p_PrevSnapRow.COLUMN19_VALUE - p_RepRow.COLUMN19_VALUE;
p_reprow.Column20_Value := p_PrevSnapRow.COLUMN20_VALUE - p_RepRow.COLUMN20_VALUE;
p_reprow.Column21_Value := p_PrevSnapRow.COLUMN21_VALUE - p_RepRow.COLUMN21_VALUE;
p_reprow.Column22_Value := p_PrevSnapRow.COLUMN22_VALUE - p_RepRow.COLUMN22_VALUE;
p_reprow.Column23_Value := p_PrevSnapRow.COLUMN23_VALUE - p_RepRow.COLUMN23_VALUE;
p_reprow.Column24_Value := p_PrevSnapRow.COLUMN24_VALUE - p_RepRow.COLUMN24_VALUE;
p_reprow.Column25_Value := p_PrevSnapRow.COLUMN25_VALUE - p_RepRow.COLUMN25_VALUE;
p_reprow.Column26_Value := p_PrevSnapRow.COLUMN26_VALUE - p_RepRow.COLUMN26_VALUE;
p_reprow.Column27_Value := p_PrevSnapRow.COLUMN27_VALUE - p_RepRow.COLUMN27_VALUE;
p_reprow.Column28_Value := p_PrevSnapRow.COLUMN28_VALUE - p_RepRow.COLUMN28_VALUE;
p_reprow.Column29_Value := p_PrevSnapRow.COLUMN29_VALUE - p_RepRow.COLUMN29_VALUE;
p_reprow.Column30_Value := p_PrevSnapRow.COLUMN30_VALUE - p_RepRow.COLUMN30_VALUE;
p_reprow.Total1 := p_PrevSnapRow.TOTAL1 - p_RepRow.TOTAL1;
p_reprow.Total2 := p_PrevSnapRow.TOTAL2 - p_RepRow.TOTAL2;
p_reprow.Total3 := p_PrevSnapRow.TOTAL3 - p_RepRow.TOTAL3;
p_reprow.Total4 := p_PrevSnapRow.TOTAL4 - p_RepRow.TOTAL4;
p_reprow.Grand_Total1 := p_PrevSnapRow.GRAND_TOTAL1 - p_RepRow.GRAND_TOTAL1;
p_reprow.Grand_Total2 := p_PrevSnapRow.GRAND_TOTAL2 - p_RepRow.GRAND_TOTAL2;

End;

-----------------------------------------------------
Procedure MIR_StockValuation(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType )
IS
v_OpenValueBase       Number     := 0;
v_OpenValueAverage    Number     := 0;
v_OpenValueLastBought Number    := 0;
v_SLDateFrom          Date;
v_SLDateTo            Date;
RetValue           Number;

Begin

For J In (Select i.Valuable,Sum((nvl(l.Quantity,0)-Nvl(l.Minus_Quantity,0))*i.Average_UnitCp) StockValuation,
                 sl.Sub_Loc_Group_Code,cl.Attribute1
          From   INV_ITEM_SUB_LOCATIONS l,
                 INV_ITEM_MASTERS i, Inv_Sub_Locations sl,
                 cmn_Lookup_Codes cl
          Where  l.Item_ID    = i.Item_Id
          And    l.LOCATION_ID = p_RepRow.Location_ID
          And    l.Sub_Location_ID = sl.Sub_location_ID
          And    sl.Sub_Loc_Group_Code = cl.Lookup_Code
          And    cl.CLT_LOOKUP_TYPE =  'SUB_LOCATION_GROUP_CODE'
          Group  By i.Valuable,sl.Sub_Loc_Group_Code,cl.Attribute1
         )
 Loop
Dbms_Output.Put_Line('INTERNAL MOVEMENT: Seq'||J.Attribute1||' Value:'||J.StockValuation);
     MIR_AssignColValue(p_Valuable      => J.Valuable,
                        p_LocSubGroup   => J.Sub_Loc_Group_Code,
                        p_SubLocGroupSeq => J.Attribute1  , 
                        p_Value          => J.StockValuation,
                        p_RepRow         => p_RepRow);
 End Loop;

Dbms_Output.Put_Line('Stock Valuation:'||p_RepRow.Location_ID);
Exception When Others then Null;
End;
-----------------------------------------------------
Procedure Snap_MIR(p_PeriodName Varchar2 Default Null
                   ,p_LocationID In Number Default Null
                   ,p_BUID In Number Default 1
                   ,p_SubLocationID In Number Default Null
                   ,p_TransDateFrom Date Default Null
                   ,p_TransDateTo   Date Default Null)
IS
 SnapRow 	CMN_REPORTOUTPUTS_SNAP%RowType;
 OpenStockRow   CMN_REPORTOUTPUTS_SNAP%RowType;
 CurStkValRow CMN_REPORTOUTPUTS_SNAP%RowType;
 CloseStockRow   CMN_REPORTOUTPUTS_SNAP%RowType;
 vMonth  	Varchar2(20);
 vYear   	Number;
 vlastMonth  	Varchar2(20);
 vlastYear   	Number;
 vlastMonthDate Date;
 vValuedItem  	Varchar2(1);
 SnapRevRow  	INV_MONHLYREVIEW_VAL_SNAP%RowType;
 PeriodHRow  	CMN_PERIOD_HEADERS%RowType;
 PeriodLRow  	CMN_PERIOD_LINES%RowType;
 PeriodBRow     CMN_PERIOD_BREAKDOWNS%RowType;
 vTransDateFrom Date;
 vTransDateTo   Date;
 vLastPeriodName Varchar2(100);
 PrevPeriodLRow  CMN_PERIOD_LINES%RowType;
 PrevSnapRow     CMN_REPORTOUTPUTS_SNAP%RowType;
BEGIN
if p_PeriodName is Not Null Then 
  PeriodLRow.Period_Name := p_PeriodName;
Else
  PeriodLRow.Period_Name := PERIOD_PKG.Get_PeriodNameByDate(Sysdate);
End If;
Dbms_OutPut.Put_Line('In Snap:'||PeriodLRow.Period_Name);
CMN_PERIOD_LINESAPI('SELECT',PeriodLRow);
If PeriodLRow.Period_Line_ID is Null Then 
 Return;
End If;
Dbms_OutPut.Put_Line('In Snap:'||PeriodLRow.Period_Line_ID);
If P_TransDateFrom is Null Then 
  vTransDateFrom := Nvl( PeriodLRow.Actual_Date_From,SysDate);
Else
  vTransDateFrom := p_TransDateFrom;
End If;
If P_TransDateTo is Null Then 
  vTransDateTo := Nvl( PeriodLRow.Actual_Date_To,SysDate);
Else
  vTransDateTo := p_TransDateTo;
End If;
Dbms_OutPut.Put_Line('In Snap:'||vTransDateFrom||' '||vTransDateTo);
 PrevPeriodLRow.Period_Name := 
       Period_Pkg.Get_PrevPeriodName(PeriodLRow.Period_Name,PeriodLRow.Period_Header_ID);
CMN_PERIOD_LINESAPI('SELECT',PrevPeriodLRow);
vLastMonthDate := PrevPeriodLRow.Actual_Date_From;
vLastMonth := To_Char(vLastMonthDate,'FMMONTH');
vLastYear  := To_Char(vLastMonthDate,'RRRR');
IF PeriodLRow.Period_Month is Not Null Then 
  vMonth := PeriodLRow.Period_Month;
  vYear  := PeriodLRow.Period_Year;
Else
vMonth := To_Char(vTransDateFrom,'FMMONTH');
vYear  := To_Char(vTransDateTo,'RRRR');
End If; 

For LocRow In (Select Location_Id,Location_Name,
                      Item_Snapshot_Schedule_ID,
                      Purge_Snapshot_Days,
                      Item_Snapshot_Type,BU_ID
               From  Inv_Locations
               Where Active = 'Y'
               And   Stockable = 'Y'
               And   Location_ID = Nvl(p_LocationID,Location_Id)
               And   BU_ID = p_BuID
               Order By Location_ID
               )
 Loop --- Locations
  Dbms_OutPut.Put_Line('Location:'||LocRow.Location_Name);
   Begin
     Delete CMN_REPORTOUTPUTS_SNAP
     Where  Period_Name  = PeriodLRow.Period_Name
     And   Location_ID   = LocRow.Location_ID;
   
   Exception When Others Then Null;
   End;
      SnapRow := Null;
      SnapRow.Snapshot_ID    	:= -1;
      SnapRow.Snapshot_Date  	:= Trunc(Sysdate);
      SnapRow.Snapshot_Month 	:= vMonth;
      SnapRow.Snapshot_Year  	:= vYear;
      SnapRow.BU_ID   		:= LocRow.Bu_ID;
      SnapRow.REPORT_IDENTIFIER := 'MONTHLY INVENTORY REPORT';
      SnapRow.LOCATION_ID       := LocRow.LOCATION_ID;
      SnapRow.PERIOD_NAME       :=  PeriodLRow.Period_Name;
      SnapRow.PERIOD_LINE_ID    :=  PeriodLRow.Period_Line_ID;
      SnapRow.PERIOD_HEADER_ID    :=  PeriodLRow.Period_Header_ID;
      SnapRow.Report_Date_From  :=  PeriodLRow.Actual_Date_From;
      SnapRow.Report_Date_To    :=  PeriodLRow.Actual_Date_To;
      SnapRow.SL_Date_From      :=  PeriodLRow.Actual_Date_From;
      SnapRow.SL_Date_To        :=  PeriodLRow.Actual_Date_To;
      SnapRow.SL_No             := 1;
      SnapRow.ROW_IDENTIFIER    := 'Opening Stock';
      SnapRow.Created_By := -1;
      SnapRow.Last_Updated_By := -1;
      Repoutput_Init(p_RepRow => SnapRow);
      Repoutput_Init(p_RepRow => OpenStockRow);
      OpenStockRow := Null;
      OpenStockRow.Location_ID  := LocRow.Location_ID;
      OpenStockRow.Period_Name  := PrevPeriodLRow.Period_Name;
      OpenStockRow.Report_Identifier := SnapRow.Report_Identifier;
      OpenStockRow.Row_Identifier    := Pub_ClosingStock;
      MIR_OpeningStock(OpenStockRow);
      MIR_CopyValueToSnapRow(p_RepRowTo => SnapRow,
                                 p_RepRowFrom => OpenStockRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'GRN CR';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_GoodsReceipt(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'EWS DB';
      SnapRow.SL_No              := Snaprow.SL_No + 10;
      MIR_EXTMOVEMENT(SnapRow,'EWS');
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'SUPPLIER RETURNS DB';
      SnapRow.SL_No              := Snaprow.SL_No + 10;
      MIR_EXTMOVEMENT(SnapRow,'SUPPLIER RETURNS');
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Internal CR';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_InternalCreditMOVEMENT(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Internal DB';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_InternalDebitMOVEMENT(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
     Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Inter Office DB';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_LocationDebitMOVEMENT(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
     Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Inter Office CR';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_LocationCreditMOVEMENT(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Stock Var CR';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_StockCreditVariance(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      Repoutput_Init(p_RepRow => SnapRow);
      SnapRow.ROW_IDENTIFIER    := 'Stock Var DB';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_StockDebitVariance(SnapRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);

      Repoutput_Init(p_RepRow => CurStkValRow );
      CurStkValrow.Location_Id := SnapRow.Location_Id;
      MIR_StockValuation(p_RepRow => CurStkValRow);

      Repoutput_Init(p_RepRow => CloseStockRow);
      CloseStockrow.Location_Id := SnapRow.Location_Id;
      CloseStockRow.Period_Name := Snaprow.Period_Name;
      MIR_ExpectedClosingStock(CloseStockRow);

      MIR_VarianceStockValuation(p_RepRow => CloseStockRow ,
                                 p_PrevSnaprow => CurStkValRow );
      SnapRow.ROW_IDENTIFIER    := 'Auto Adjustment';
      SnapRow.SL_No             := Snaprow.SL_No + 10;
      MIR_CopyValueToSnapRow(p_RepRowTo => SnapRow,
                                 p_RepRowFrom => CloseStockRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',Snaprow);

      SnapRow.ROW_IDENTIFIER    := Pub_ClosingStock;
      SnapRow.SL_No             := 9999;
     MIR_CopyValueToSnapRow(p_RepRowTo => SnapRow,
                                 p_RepRowFrom => CurStkValRow);
      CMN_REPORTOUTPUTS_SNAPAPI('INSERT',SnapRow);
      
 End Loop;  -- Locations;

Exception When Others then 
 Raise_Application_Error(-20001,'SNAP MIR:'||SqlErrm);
END; 
-----------------------------------------------------
Procedure MIR_CopyValueToSnapRow(p_RepRowTo In Out CMN_REPORTOUTPUTS_SNAP%RowType,
                                 p_RepRowFrom In  CMN_REPORTOUTPUTS_SNAP%RowType)
IS
Begin
      p_RepRowTo.Column1_Value  := nvl(p_RepRowFrom.Column1_Value,0);
      p_RepRowTo.Column2_Value  := nvl(p_RepRowFrom.Column2_Value,0);
      p_RepRowTo.Column3_Value  := nvl(p_RepRowFrom.Column3_Value,0);
      p_RepRowTo.Column4_Value  := nvl(p_RepRowFrom.Column4_Value,0);
      p_RepRowTo.Column5_Value  := nvl(p_RepRowFrom.Column5_Value,0);
      p_RepRowTo.Column6_Value  := nvl(p_RepRowFrom.Column6_Value,0);
      p_RepRowTo.Column7_Value  := nvl(p_RepRowFrom.Column7_Value,0);
      p_RepRowTo.Column8_Value  := nvl(p_RepRowFrom.Column8_Value,0);
      p_RepRowTo.Column9_Value  := nvl(p_RepRowFrom.Column9_Value,0);
      p_RepRowTo.Column10_Value := nvl(p_RepRowFrom.Column10_Value,0);  
      p_RepRowTo.Column11_Value := nvl(p_RepRowFrom.Column11_Value,0); 
      p_RepRowTo.Column12_Value := nvl(p_RepRowFrom.Column12_Value,0); 
      p_RepRowTo.Total1         := nvl(p_RepRowFrom.Total1,0);  
      p_RepRowTo.Total2         := nvl(p_RepRowFrom.Total2,0); 
      p_RepRowTo.Total3         := nvl(p_RepRowFrom.Total3,0);  
      p_RepRowTo.Total4         := nvl(p_RepRowFrom.Total4,0); 
      p_RepRowTo.Grand_Total1   := nvl(p_RepRowFrom.Grand_Total1,0); 
      p_RepRowTo.Grand_Total2   := nvl(p_RepRowFrom.Total2,0); 
End;
-------------------------------------------------------------------------

Procedure RepOutput_Init(p_RepRow In Out CMN_REPORTOUTPUTS_SNAP%RowType)
IS
Begin
p_RepRow.Column1_Value  := 0;
p_RepRow.Column2_Value  := 0;
p_RepRow.Column3_Value  := 0;
p_RepRow.Column4_Value  := 0;
p_RepRow.Column5_Value  := 0;
p_RepRow.Column6_Value  := 0;
p_RepRow.Column7_Value  := 0;
p_RepRow.Column8_Value  := 0;
p_RepRow.Column9_Value  := 0;
p_RepRow.Column10_Value  := 0;
p_RepRow.Column11_Value  := 0;
p_RepRow.Column12_Value  := 0;
p_RepRow.Column13_Value  := 0;
p_RepRow.Column14_Value  := 0;
p_RepRow.Column15_Value  := 0;
p_RepRow.Column16_Value  := 0;
p_RepRow.Column17_Value  := 0;
p_RepRow.Column18_Value  := 0;
p_RepRow.Column19_Value  := 0;
p_RepRow.Column20_Value  := 0;
p_RepRow.Column21_Value  := 0;
p_RepRow.Column22_Value  := 0;
p_RepRow.Column23_Value  := 0;
p_RepRow.Column24_Value  := 0;
p_RepRow.Column25_Value  := 0;
p_RepRow.Column26_Value  := 0;
p_RepRow.Column27_Value  := 0;
p_RepRow.Column28_Value  := 0;
p_RepRow.Column29_Value  := 0;
p_RepRow.Column30_Value  := 0;
p_RepRow.Total1  := 0;
p_RepRow.Total2  := 0;
p_RepRow.Total3  := 0;
p_RepRow.Total4  := 0;
p_RepRow.Grand_Total1  := 0;
p_RepRow.Grand_Total2  := 0;
End;
----------------------------------------------------------------------------
Procedure MIR_ManualAdjustment(p_Location_Name In Varchar2
                               ,p_Period_Name In VARCHAR2
                               ,p_Row_Identifier In Varchar2 Default 'Manual Adjustment'
                               ,p_Report_Identifier In VARCHAR2 default 'MONTHLY INVENTORY REPORT'
			,p_Column1_Value In NUMBER Default Null
			,p_Column2_Value In NUMBER Default Null
			,p_Column3_Value In NUMBER Default Null
			,p_Column4_Value In NUMBER Default Null
			,p_Column5_Value In NUMBER Default Null
			,p_Column6_Value In NUMBER Default Null
			,p_Column7_Value In NUMBER Default Null
			,p_Column8_Value In NUMBER Default Null
			,p_Column9_Value In NUMBER Default Null
			,p_Column10_Value In NUMBER Default Null
			,p_Column11_Value In NUMBER Default Null
			,p_Column12_Value In NUMBER Default Null
			,p_Column13_Value In NUMBER Default Null
			,p_Column14_Value In NUMBER Default Null
			,p_Column15_Value In NUMBER Default Null
			,p_Column16_Value In NUMBER Default Null
			,p_Column17_Value In NUMBER Default Null
			,p_Column18_Value In NUMBER Default Null
			,p_Column19_Value In NUMBER Default Null
			,p_Column20_Value In NUMBER Default Null
			,p_Column21_Value In NUMBER Default Null
			,p_Column22_Value In NUMBER Default Null
			,p_Column23_Value In NUMBER Default Null
			,p_Column24_Value In NUMBER Default Null
			,p_Column25_Value In NUMBER Default Null
			,p_Column26_Value In NUMBER Default Null
			,p_Column27_Value In NUMBER Default Null
			,p_Column28_Value In NUMBER Default Null
			,p_Column29_Value In NUMBER Default Null
			,p_Column30_Value In NUMBER Default Null)
IS
 SnapRow CMN_REPORTOUTPUTS_SNAP%RowType;
 StatusText  Varchar2(2000);
 failed      exception;
Begin
if p_Location_Name is Null or p_Period_Name is Null or 
   p_Report_Identifier is null or p_Row_Identifier is Null then 
   StatusText := 'Invalid / Blank Parameters';
   Raise  failed;
End If;
Select Location_Id,Bu_Id
Into   SnapRow.Location_Id,Snaprow.Bu_ID
From   Inv_Locations
Where  Location_Name = p_Location_Name;
Snaprow.Period_Name := p_Period_Name;
SnapRow.Row_Identifier := Pub_ClosingStock;
SnapRow.Report_Identifier := p_Report_Identifier;
Cmn_ReportOutputs_SnapAPI('SELECT',SnapRow);
  Snaprow.Snapshot_Id := null;

  if p_Row_Identifier <> Pub_ClosingStock then 
    Snaprow.Sl_No := Snaprow.Sl_No - 100;
  End If;
   Repoutput_Init(p_RepRow => SnapRow);
  Snaprow.Row_Identifier := p_Row_Identifier;
   Snaprow.Column1_Value := nvl(p_Column1_Value,0);
  Snaprow.Column30_Value := nvl(p_Column30_Value,0);
  Snaprow.Column29_Value := nvl(p_Column29_Value,0);
  Snaprow.Column28_Value := nvl(p_Column28_Value,0);
  Snaprow.Column27_Value := nvl(p_Column27_Value,0);
  Snaprow.Column26_Value := nvl(p_Column26_Value,0);
  Snaprow.Column25_Value := nvl(p_Column25_Value,0);
  Snaprow.Column24_Value := nvl(p_Column24_Value,0);
  Snaprow.Column23_Value := nvl(p_Column23_Value,0);
  Snaprow.Column22_Value := nvl(p_Column22_Value,0);
  Snaprow.Column12_Value := nvl(p_Column12_Value,0);
  Snaprow.Column11_Value := nvl(p_Column11_Value,0);
  Snaprow.Column10_Value := nvl(p_Column10_Value,0);
  Snaprow.Column9_Value := nvl(p_Column9_Value,0);
  Snaprow.Column8_Value := nvl(p_Column8_Value,0);
  Snaprow.Column7_Value := nvl(p_Column7_Value,0);
  Snaprow.Column6_Value := nvl(p_Column6_Value,0);
  Snaprow.Column5_Value := nvl(p_Column5_Value,0);
  Snaprow.Column4_Value := nvl(p_Column4_Value,0);
  Snaprow.Column3_Value := nvl(p_Column3_Value,0);
  Snaprow.Column2_Value := nvl(p_Column2_Value,0);
  Snaprow.Column18_Value := nvl(p_Column18_Value,0);
  Snaprow.Column17_Value := nvl(p_Column17_Value,0);
  Snaprow.Column16_Value := nvl(p_Column16_Value,0);
  Snaprow.Column15_Value := nvl(p_Column15_Value,0);
  Snaprow.Column14_Value := nvl(p_Column14_Value,0);
  Snaprow.Column13_Value := nvl(p_Column13_Value,0);
  Snaprow.Column21_Value := nvl(p_Column21_Value,0);
  Snaprow.Column20_Value := nvl(p_Column20_Value,0);
  Snaprow.Column19_Value := nvl(p_Column19_Value,0);

  SnapRow.Total1 :=  Nvl(SnapRow.Column1_Value,0) + Nvl(SnapRow.Column3_Value,0)
                    + Nvl(SnapRow.Column5_Value,0) + Nvl(SnapRow.Column7_Value,0)
                    + Nvl(SnapRow.Column9_Value,0) + Nvl(SnapRow.Column11_Value,0)
                    + Nvl(SnapRow.Column13_Value,0) + Nvl(SnapRow.Column15_Value,0);

 SnapRow.Total2 :=  Nvl(SnapRow.Column2_Value,0) + Nvl(SnapRow.Column4_Value,0)
                    + Nvl(SnapRow.Column6_Value,0) + Nvl(SnapRow.Column8_Value,0)
                    + Nvl(SnapRow.Column10_Value,0) + Nvl(SnapRow.Column12_Value,0)
                    + Nvl(SnapRow.Column14_Value,0) + Nvl(SnapRow.Column16_Value,0);
 SnapRow.Grand_Total1 := SnapRow.Total1 + SnapRow.Total2;

  Dbms_OutPut.Put_Line('Delete:'||SnapRow.Row_Identifier);
  CMN_REPORTOUTPUTS_SNAPAPI('DELETE',Snaprow);
  CMN_REPORTOUTPUTS_SNAPAPI('INSERT',Snaprow);

      Repoutput_Init(p_RepRow => SnapRow);
      Snaprow.Row_Identifier := Pub_closingStock;
      SnapRow.sl_No          := 9999;
    CMN_REPORTOUTPUTS_SNAPAPI('DELETE',Snaprow);
  Dbms_OutPut.Put_Line('Delete:'||SnapRow.Row_Identifier);
        MIR_ExpectedClosingStock(SnapRow);
  CMN_REPORTOUTPUTS_SNAPAPI('INSERT',Snaprow);

Exception When others Then 
   Raise_Application_Error(-20000,'ManualAdjustment:'||StatusText||' '||SqlErrm);
End;
----------------------------------------------------------------------
Function GetDatePart(p_Transdate in Date,
                     p_WhatPart  in Varchar2) return Varchar2
IS
Retvalue    varchar2(400);
vDate       Date := Sysdate;
vPart       varchar2(100);
vTranWeek   number;
vCurrWeek   number;
vTranmonth  number;
vCurrMonth  number;
vtranyear   number;
vcurryear   number;
vWeekDiff   number;
vMonthdiff  number;
vYeardiff   number;
Begin
vTranweek := to_char(p_transdate,'rrrrWW');
vCurrWeek := to_char(sysdate,'rrrrWW');
vTranmonth := to_char(p_transdate,'rrrrmm');
vCurrmonth := to_char(sysdate,'rrrrmm');
vTranyear := to_char(p_transdate,'rrrr');
vCurryear := to_char(sysdate,'rrrr');
vWeekdiff  := vCurrWeek - vTranWeek;
if vWeekDiff>=47 Then 
 vWeekDiff := vWeekDiff - 47;
End If; 
--vmonthdiff  := vCurrmonth - vTranmonth;
vmonthdiff  := round( Months_Between(sysdate,p_transdate));
dbms_output.Put_line('MonthDiff:'||vmonthdiff);
vyeardiff  := vCurryear - vTranyear;

vPart := Upper(p_WhatPart);
 if vPart = 'WEEK' Then
   if vWeekDiff = 0 Then Return('THISWEEK'); end If;
   Return('WEEK'||vWeekDiff);
  End If;
 if vPart = 'THISMONTH' Then
   if vmonthDiff = 0 Then Return('THISMONTH'); end If;
 end if;
  if vPart = 'LASTMONTH' Then
   if vmonthDiff = 1 Then Return('LASTMONTH'); end If;
  end if;
 if vPart = 'LAST3MONTH' Then
   if vmonthDiff = 3 Then Return('LAST3MONTH'); end If;
  end if;
 if vPart = 'LAST6MONTH' Then
   if vmonthDiff = 6 Then Return('LAST6MONTH'); end If;
  end if; 
  if vPart = 'LAST9MONTH' Then
   if vmonthDiff = 9 Then Return('LAST9MONTH'); end If;
  end if;
  if vPart = 'MONTH' Then
   if vyeardiff in (0,1) then 
      Return(To_Char(p_TransDate,'MON'));
  End If;
  End If;
  if vPart = 'YEAR' Then
   if vyeardiff = 0 then   Return('YTD');  End If;
   if vyeardiff = 1 then   Return('LASTYEAR');  End If;
   Return('YEAR'||vyearDiff);
  End If;

Return('NONE');
End;
   
---------------------------------------------------------------------
Function GetDatePartval(p_Transdate in Date,
                     p_WhatPart  in Varchar2,
                     p_MatchWith in Varchar2,
                     p_value  In number) return number
IS
 retvalue varchar2(100);
Begin
 retvalue := GetDatePart(p_TransDate,p_whatPart);
 if retvalue = p_MatchWith then Return(p_Value); end If;
 Return(0);
End;
---------------------------------------------------------------------
Procedure PopItemsSum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) 
IS
 SalRow INV_ITEMSALPURSUM_SNAP%RowType;
 PurRow INV_ITEMSALPURSUM_SNAP%RowType;
 vSnapshotID  Number;
Begin
if upper(p_What) in ('SALES','BOTH') Then 
for i in (Select r.Location_Id,r.Item_Id,r.bu_id,Ytd,Lastyear,
	Thismonth,Lastmonth,Jan,Feb,Mar,Apr,May,Jun,
	Jul,Aug,Sep,Oct,Nov,Dec,Thisweek,
	Week1,Week2,Week3,Week4,Week5,
	Week6,Year2,Year3,Year4,Quantity,report_date
      From Rep_ItemSalesSum_V r, Inv_Item_Masters i
      Where i.Item_Id = r.Item_Id 
       )
 Loop
  Begin 
    select Snapshot_Id
    Into   vSnapShotId 
    From   INV_ITEMSALPURSUM_SNAP
    where  Location_Id = i.Location_Id
    And    Item_Id     = i.Item_Id
    And    Rownum = 1;
  Exception when Others then vSnapShotId := -1;
 End;
Pub_ErrorLevel := '1';
  Salrow := Null;
  Salrow.Snapshot_Id    	:= vSnapshotId;
  Salrow.Snapshot_Date    	:= sysdate;
  Salrow.Created_By    		:= -1;
  Salrow.Location_Id    	:= i.Location_Id;
  Salrow.Sub_Location_Id    	:= null;
  Salrow.Bu_Id    		:= to_number(i.bu_id);
  Salrow.Creation_Date    	:= sysdate;
  Salrow.Item_Id    		:= i.Item_Id;
Pub_ErrorLevel := '2';
  Salrow.Last_Update_Date    	:= sysdate;
  Salrow.Last_Updated_By    	:= -1;
  Salrow.Sal_Week1    		:= i.Week1;
  Salrow.Sal_Week2    		:= i.Week2;
  Salrow.Sal_Week3    		:= i.Week3;
  Salrow.Sal_Week4    		:= i.Week4;
  Salrow.Sal_Week5    		:= i.Week5;
  Salrow.Sal_Week6    		:= i.Week6;
  Salrow.Sal_Lastmonth    	:= i.Lastmonth;
  Salrow.Sal_Jan    		:= i.Jan;
  Salrow.Sal_Feb    		:= i.Feb;
  Salrow.Sal_Mar    		:= i.Mar;
  Salrow.Sal_Apr    		:= i.Apr;
  Salrow.Sal_May    		:= i.May;
Pub_ErrorLevel := '3';
  Salrow.Sal_Jun    		:= i.Jun;
  Salrow.Sal_Jul    		:= i.Jul;
  Salrow.Sal_Aug    		:= i.Aug;
  Salrow.Sal_Sep    		:= i.Sep;
Pub_ErrorLevel := '3a';
  Salrow.Sal_Oct    		:= i.Oct;
  Salrow.Sal_Nov    		:= i.Nov;
Pub_ErrorLevel := '3a1';
  Salrow.Sal_Dec    		:= i.Dec;
Pub_ErrorLevel := '3a2:'||i.ytd;
  Salrow.Sal_Ytd    		:= i.Ytd;
Pub_ErrorLevel := '3b:'||i.Lastyear;
  Salrow.Sal_Lastyear    	:= i.Lastyear;
Pub_ErrorLevel := '3b1:'||i.Year2;
  Salrow.Sal_Year2    		:= i.Year2;
Pub_ErrorLevel := '4';
  Salrow.Sal_Year3    		:= i.Year3;
  Salrow.Sal_Year4    		:= i.Year4;
  Salrow.Sal_Thisweek    	:= i.Thisweek;
  Salrow.Sal_Lasttrandate    	:= i.report_date;
  Salrow.Sal_Total    		:= i.Quantity;
Pub_ErrorLevel := '5';
  if vSnapshotID > 0 then            
    INV_ITEMSALPURSUM_SNAPAPI('UPDATE',SalRow);
  Else  
    INV_ITEMSALPURSUM_SNAPAPI('INSERT',SalRow);
  end If; 
End Loop;
End if;
if upper(p_What) in ('PURCHASES','BOTH') Then 
for i in (Select Location_Id,Item_Id,bu_id,Ytd,Lastyear,
	Thismonth,Lastmonth,Jan,Feb,Mar,Apr,May,Jun,
	Jul,Aug,Sep,Oct,Nov,Dec,Thisweek,
	Week1,Week2,Week3,Week4,Week5,
	Week6,Year2,Year3,Year4,Quantity,report_date
      From Rep_ItempurchasesSum_v
       )
 Loop
  Begin 
    select Snapshot_Id
    Into   vSnapShotId 
    From   INV_ITEMSALPURSUM_SNAP
    where  Location_Id = i.Location_Id
    And    Item_Id     = i.Item_Id
    And    Rownum = 1;
  Exception when Others then vSnapShotId := -1;
 End;
  purrow := Null;
Pub_ErrorLevel := '6';
  Purrow.Snapshot_Id    	:= vSnapshotId;
  Purrow.Snapshot_Date    	:= sysdate;
  Purrow.Created_By    		:= -1;
  Purrow.Location_Id    	:= i.Location_Id;
  Purrow.Sub_Location_Id    	:= null;
  Purrow.Bu_Id    		:= to_number(i.bu_id);
  Purrow.Creation_Date    	:= sysdate;
  Purrow.Item_Id    		:= i.Item_Id;
  Purrow.Last_Update_Date    	:= sysdate;
  Purrow.Last_Updated_By    	:= -1;
  Purrow.Pur_Week1    		:= i.Week1;
  Purrow.Pur_Week2    		:= i.Week2;
  Purrow.Pur_Week3    		:= i.Week3;
  Purrow.Pur_Week4    		:= i.Week4;
  Purrow.Pur_Week5    		:= i.Week5;
  Purrow.Pur_Week6    		:= i.Week6;
Pub_ErrorLevel := '7';
  Purrow.Pur_Lastmonth    	:= i.Lastmonth;
  Purrow.Pur_Jan    		:= i.Jan;
  Purrow.Pur_Feb    		:= i.Feb;
  Purrow.Pur_Mar    		:= i.Mar;
  Purrow.Pur_Apr    		:= i.Apr;
  Purrow.Pur_May    		:= i.May;
  Purrow.Pur_Jun    		:= i.Jun;
  Purrow.Pur_Jul    		:= i.Jul;
  Purrow.Pur_Aug    		:= i.Aug;
  Purrow.Pur_Sep    		:= i.Sep;
Pub_ErrorLevel := '8';
  Purrow.Pur_Oct    		:= i.Oct;
  Purrow.Pur_Nov    		:= i.Nov;
  Purrow.Pur_Dec    		:= i.Dec;
  Purrow.Pur_Ytd    		:= i.Ytd;
  Purrow.Pur_Lastyear    	:= i.Lastyear;
  Purrow.Pur_Year2    		:= i.Year2;
  Purrow.Pur_Year3    		:= i.Year3;
  Purrow.Pur_Year4    		:= i.Year4;
  Purrow.Pur_Thisweek    	:= i.Thisweek;
  Purrow.Pur_Lasttrandate    	:= i.report_date;
  Purrow.Pur_Total    		:= i.Quantity;
Pub_ErrorLevel := '9';
  if vSnapshotID > 0 then 
    INV_ITEMSALPURSUM_SNAPAPI('UPDATE',purRow);
  Else  
    INV_ITEMSALPURSUM_SNAPAPI('INSERT',purRow);
  end If; 
End Loop;
End if;
Commit;
begin
  Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Sales Summary Fired on:'||Sysdate,
                        p_text          => null);
Exception When Others Then Null;
End;
Exception When Others then Raise_Application_Error(-20001,'SalesSnap:'||Pub_ErrorLevel||':'||Sqlerrm);
end;
---------------------------------------------------------------------
Procedure PopCustomersSum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) 
IS
 InvRow  AR_CUSTSUM_SNAP%RowType;
 PmntRow  AR_CUSTSUM_SNAP%RowType;
 vSnapshotID  Number;
Begin
if upper(p_What) in ('INVOICE','BOTH') Then 
for i in (Select Customer_ID,bu_id,Ytd,Lastyear,
	Thismonth,Lastmonth,Jan,Feb,Mar,Apr,May,Jun,
	Jul,Aug,Sep,Oct,Nov,Dec,Thisweek,
	Week1,Week2,Week3,Week4,Week5,
	Week6,Year2,Year3,Year4,Total,report_date
      From Rep_CustomerSalesSum_v
       )
 Loop
  Begin 
    select Snapshot_Id
    Into   vSnapShotId 
    From    AR_CUSTSUM_SNAP
    where  Customer_Id     = i.Customer_Id
    And    Rownum = 1;
  Exception when Others then vSnapShotId := -1;
 End;
  InvRow := Null;
  InvRow.Snapshot_Id    	:= vSnapshotId;
  InvRow.Snapshot_Date    	:= sysdate;
  InvRow.Created_By    		:= -1;
  InvRow.Location_Id    	:= null;
  InvRow.Sub_Location_Id    	:= null;
  InvRow.Bu_Id    		:= i.bu_id;
  InvRow.Creation_Date    	:= sysdate;
  InvRow.Customer_ID    		:= i.Customer_ID;
  InvRow.Last_Update_Date    	:= sysdate;
  InvRow.Last_Updated_By    	:= -1;
  InvRow.Inv_Week1    		:= i.Week1;
  InvRow.Inv_Week2    		:= i.Week2;
  InvRow.Inv_Week3    		:= i.Week3;
  InvRow.Inv_Week4    		:= i.Week4;
  InvRow.Inv_Week5    		:= i.Week5;
  InvRow.Inv_Week6    		:= i.Week6;
  InvRow.Inv_Lastmonth    	:= i.Lastmonth;
  InvRow.Inv_Jan    		:= i.Jan;
  InvRow.Inv_Feb    		:= i.Feb;
  InvRow.Inv_Mar    		:= i.Mar;
  InvRow.Inv_Apr    		:= i.Apr;
  InvRow.Inv_May    		:= i.May;
  InvRow.Inv_Jun    		:= i.Jun;
  InvRow.Inv_Jul    		:= i.Jul;
  InvRow.Inv_Aug    		:= i.Aug;
  InvRow.Inv_Sep    		:= i.Sep;
  InvRow.Inv_Oct    		:= i.Oct;
  InvRow.Inv_Nov    		:= i.Nov;
  InvRow.Inv_Dec    		:= i.Dec;
  InvRow.Inv_Ytd    		:= i.Ytd;
  InvRow.Inv_Lastyear    	:= i.Lastyear;
  InvRow.Inv_Year2    		:= i.Year2;
  InvRow.Inv_Year3    		:= i.Year3;
  InvRow.Inv_Year4    		:= i.Year4;
  InvRow.Inv_Thisweek    	:= i.Thisweek;
  InvRow.Inv_Lasttrandate    	:= i.report_date;
  InvRow.Inv_Total    		:= i.Total;
  if vSnapshotID > 0 then 
     AR_CUSTSUM_SNAPAPI('UPDATE',InvRow);
  Else  
     AR_CUSTSUM_SNAPAPI('INSERT',InvRow);
  end If; 
End Loop;
End if;
if upper(p_What) in ('PAYMENT','BOTH') Then 
for i in (Select Customer_ID,bu_id,Ytd,Lastyear,
	Thismonth,Lastmonth,Jan,Feb,Mar,Apr,May,Jun,
	Jul,Aug,Sep,Oct,Nov,Dec,Thisweek,
	Week1,Week2,Week3,Week4,Week5,
	Week6,Year2,Year3,Year4,total,report_date
      From Rep_CustomerPmntsSum_v
       )
 Loop
  Begin 
    select Snapshot_Id
    Into   vSnapShotId 
    From   AR_CUSTSUM_SNAP
    where Customer_Id = i.Customer_Id
    And    Rownum = 1;
  Exception when Others then vSnapShotId := -1;
 End;
  Pmntrow := Null;
  Pmntrow.Snapshot_Id    	:= vSnapshotId;
  Pmntrow.Snapshot_Date    	:= sysdate;
  Pmntrow.Created_By    		:= -1;
  Pmntrow.Location_Id    	:= null;
  Pmntrow.Sub_Location_Id    	:= null;
  Pmntrow.Bu_Id    		:= i.bu_id;
  Pmntrow.Creation_Date    	:= sysdate;
  Pmntrow.Customer_ID   		:= i.Customer_ID;
  Pmntrow.Last_Update_Date    	:= sysdate;
  Pmntrow.Last_Updated_By    	:= -1;
  Pmntrow.Pmnt_Week1    		:= i.Week1;
  Pmntrow.Pmnt_Week2    		:= i.Week2;
  Pmntrow.Pmnt_Week3    		:= i.Week3;
  Pmntrow.Pmnt_Week4    		:= i.Week4;
  Pmntrow.Pmnt_Week5    		:= i.Week5;
  Pmntrow.Pmnt_Week6    		:= i.Week6;
  Pmntrow.Pmnt_Lastmonth    	:= i.Lastmonth;
  Pmntrow.Pmnt_Jan    		:= i.Jan;
  Pmntrow.Pmnt_Feb    		:= i.Feb;
  Pmntrow.Pmnt_Mar    		:= i.Mar;
  Pmntrow.Pmnt_Apr    		:= i.Apr;
  Pmntrow.Pmnt_May    		:= i.May;
  Pmntrow.Pmnt_Jun    		:= i.Jun;
  Pmntrow.Pmnt_Jul    		:= i.Jul;
  Pmntrow.Pmnt_Aug    		:= i.Aug;
  Pmntrow.Pmnt_Sep    		:= i.Sep;
  Pmntrow.Pmnt_Oct    		:= i.Oct;
  Pmntrow.Pmnt_Nov    		:= i.Nov;
  Pmntrow.Pmnt_Dec    		:= i.Dec;
  Pmntrow.Pmnt_Ytd    		:= i.Ytd;
  Pmntrow.Pmnt_Lastyear    	:= i.Lastyear;
  Pmntrow.Pmnt_Year2    		:= i.Year2;
  Pmntrow.Pmnt_Year3    		:= i.Year3;
  Pmntrow.Pmnt_Year4    		:= i.Year4;
  Pmntrow.Pmnt_Thisweek    	:= i.Thisweek;
  Pmntrow.Pmnt_Lasttrandate    	:= i.report_date;
  Pmntrow.Pmnt_Total    		:= i.total;
  if vSnapshotID > 0 then 
     dbms_OutPut.Put_Line('Update:'||vSnapshotId||';'||Pmntrow.Pmnt_Total );
     AR_CUSTSUM_SNAPAPI('UPDATE',PmntRow);
  Else  
     AR_CUSTSUM_SNAPAPI('INSERT',PmntRow);
  end If; 
End Loop;
End if;


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Customer Summary Fired on:'||Sysdate,
                        p_text          => null);
Exception When Others then Raise_Application_Error(-20001,'custSnap:'||Sqlerrm);
end;
---------------------------------------------------------------------------
Procedure PopSuppliersSum(p_What in Varchar2 Default 'BOTH',
                          p_NotifGroup    In Varchar2 Default Null) 
IS
 InvRow  AP_SUPSUM_SNAP%RowType;
 PmntRow  AP_SUPSUM_SNAP%RowType;
 vSnapshotID  Number;
Begin
if upper(p_What) in ('GRN','BOTH') Then 
for i in (Select Supplier_ID,bu_id,Ytd,Lastyear,
	Thismonth,Lastmonth,Jan,Feb,Mar,Apr,May,Jun,
	Jul,Aug,Sep,Oct,Nov,Dec,Thisweek,
	Week1,Week2,Week3,Week4,Week5,
	Week6,Year2,Year3,Year4,Total,report_date
      From Rep_SupurchasesSum_v
       )
 Loop
  Begin 
    select Snapshot_Id
    Into   vSnapShotId 
    From    AP_SUPSUM_SNAP
    where  Supplier_Id     = i.Supplier_Id
    And    Rownum = 1;
  Exception when Others then vSnapShotId := -1;
 End;
  InvRow := Null;
  InvRow.Snapshot_Id    	:= vSnapshotId;
  InvRow.Snapshot_Date    	:= sysdate;
  InvRow.Created_By    		:= -1;
  InvRow.Location_Id    	:= null;
  InvRow.Sub_Location_Id    	:= null;
  InvRow.Bu_Id    		:= i.bu_id;
  InvRow.Creation_Date    	:= sysdate;
  InvRow.Supplier_ID    		:= i.Supplier_ID;
  InvRow.Last_Update_Date    	:= sysdate;
  InvRow.Last_Updated_By    	:= -1;
  InvRow.Inv_Week1    		:= i.Week1;
  InvRow.Inv_Week2    		:= i.Week2;
  InvRow.Inv_Week3    		:= i.Week3;
  InvRow.Inv_Week4    		:= i.Week4;
  InvRow.Inv_Week5    		:= i.Week5;
  InvRow.Inv_Week6    		:= i.Week6;
  InvRow.Inv_Lastmonth    	:= i.Lastmonth;
  InvRow.Inv_Jan    		:= i.Jan;
  InvRow.Inv_Feb    		:= i.Feb;
  InvRow.Inv_Mar    		:= i.Mar;
  InvRow.Inv_Apr    		:= i.Apr;
  InvRow.Inv_May    		:= i.May;
  InvRow.Inv_Jun    		:= i.Jun;
  InvRow.Inv_Jul    		:= i.Jul;
  InvRow.Inv_Aug    		:= i.Aug;
  InvRow.Inv_Sep    		:= i.Sep;
  InvRow.Inv_Oct    		:= i.Oct;
  InvRow.Inv_Nov    		:= i.Nov;
  InvRow.Inv_Dec    		:= i.Dec;
  InvRow.Inv_Ytd    		:= i.Ytd;
  InvRow.Inv_Lastyear    	:= i.Lastyear;
  InvRow.Inv_Year2    		:= i.Year2;
  InvRow.Inv_Year3    		:= i.Year3;
  InvRow.Inv_Year4    		:= i.Year4;
  InvRow.Inv_Thisweek    	:= i.Thisweek;
  InvRow.Inv_Lasttrandate    	:= i.report_date;
  InvRow.Inv_Total    		:= i.Total;
  if vSnapshotID > 0 then 
     AP_SUPSUM_SNAPAPI('UPDATE',InvRow);
  Else  
     AP_SUPSUM_SNAPAPI('INSERT',InvRow);
  end If; 
End Loop;
End if;


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Supplier Summary Fired on:'||Sysdate,
                        p_text          => null);

Exception When Others then Raise_Application_Error(-20001,'supSnap:'||Sqlerrm);
end;
---------------------------------------------------------------------------

Procedure PopAllSnapshots(p_What in Varchar2 Default 'ALL',
                          p_NotifGroup    In Varchar2 Default Null) 
IS 
Begin
 PopItemsSum(p_NotifGroup => p_NotifGroup);
 PopCustomersSum(p_NotifGroup => p_NotifGroup);
 PopSuppliersSum(p_NotifGroup => p_NotifGroup);
End;
----------------------------------------------------------------------
Procedure Purge_ItemSubLocSnap(P_Age   In Number Default 365,
                          p_LocationID In Number Default Null,
                          p_SubLocationID In Number Default Null,
                          p_ItemId In Number Default Null,
                          p_NotifGroup    In Varchar2 Default Null)
IS
vStatus Number := 0;
Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'PURGE ITEM SNAPSHOT',
                         p_logType   => 'PURGE',
                         p_logDesc   => 'Purging Item Snapshots',
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => Null);


 SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'PURGE ITEM SNAPSHOT',
                         p_Desc       => 'Purging Age:'||P_Age ,
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'INV_ITEM_SUBLOC_SNAP',
                         p_ObjectID1  => Null
                        );
 if p_Age >= 180 then 
    Delete Inv_Item_SubLoc_Snap
     Where  (Trunc(Sysdate) - Trunc(Snapshot_Date)) > p_Age
     And   Location_ID     	= Nvl(p_LocationID,Location_ID)
     And   Sub_Location_ID     	= Nvl(p_SubLocationID,Sub_Location_ID)
     And   Item_ID        	= Nvl(p_ItemID,Item_ID);
 End If; 
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,
   'SUCCESSFULLY Purged:'||SQl%RowCount);


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Item Snapshot Purged on :'||sysdate,
                        p_text          => null);

Exception When Others Then
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
 Raise_Application_Error(-20001,'at ' || Pub_ErrorLevel||'  '||SqlErrm);
end Purge_ItemSubLocSnap;
-----------------------------------------------------
Procedure Update_Last4years_Sum(p_What in Varchar2 Default 'BOTH',
			        p_buID In Number Default 1,
                          p_NotifGroup    In Varchar2 Default Null) 
IS

Begin

if upper(p_What) in ('SALES','BOTH') Then 
 Update Inv_Item_Statuses i
 Set    (Last_year1_sales_qty, 
         Last_year2_sales_qty , 
         Last_year3_sales_qty , 
         Last_year4_sales_qty )
    = (Select r.Lastyear, r.year2,r.year3,r.year4 
       From  Rep_Last4yearsSalessum_v r
       where r.item_ID = i.Item_ID
       And  r.Bu_ID  = p_BuID);
 end If;

if upper(p_What) in ('PURCHASE','BOTH') Then 
 Update Inv_Item_Statuses i
 Set    (ytd_purchase_qty,
          Last_year1_purchase_qty, 
         Last_year2_purchase_qty , 
         Last_year3_purchase_qty , 
         Last_year4_purchase_qty )
    = (Select r.ytd, r.Lastyear, r.year2,r.year3,r.year4 
       From  Rep_Last4yearsGRNsum_v r
       where r.item_ID = i.Item_ID
       And  r.Bu_ID  = p_BuID);

end If;
Commit;
begin
  Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'Sales Summary Fired on:'||Sysdate,
                        p_text          => null);
Exception When Others Then Null;
End;
Exception When Others then Raise_Application_Error(-20001,'SalesSnap:'||Pub_ErrorLevel||':'||Sqlerrm);
end;
---------------------------------------------------------------------
end SNAPSHOT_PKG;
/

Show Error;
