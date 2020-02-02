Create Or Replace Package IMPEXP_PKG Is

Procedure  Export_ViewData(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
-----------------------------------------------------
Procedure  Export_ViewData32k(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
-----------------------------------------------------
Procedure  Export_ViewDataWithFilter(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_Where    In Varchar2 Default Null,
                           p_OrderBy  In Varchar2 Default Null,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
-------------------------------------------------------------------
Procedure Export_Category;
-----------------------------------------------------
Procedure Export_Subcategory;
-----------------------------------------------------
Procedure Export_Suppliers;
-----------------------------------------------------
Procedure Export_customers;
-----------------------------------------------------
Procedure Export_Items;
-----------------------------------------------------
Procedure Export_ItemsPriceRange(p_ViewName        	In Varchar2,
                                 p_FileName 	   	In Varchar2,
                                 p_PriceSlNo       	In Number Default 1,
                                 p_PriceRangeFrom  	In Number Default 0.01,
                                 p_PriceRangeTo    	In Number Default 999999,
                           	 p_DirName  		In Varchar2 Default 'DIR_OUTBOUND',
                          	 p_Delimiter 		In Varchar2 Default ',',
                          	 p_CallCode  		In Number Default 0,
                          	 p_Headers   		In Varchar2 Default Null,
                          	 p_NotifGroup 		In Varchar2 Default Null,
                          	 p_Hint       		In Varchar2 Default Null);
-----------------------------------------------------
Function RecordStatus(p_Status in Varchar2) Return Varchar2;
---------------------------------------------------------
Procedure Export_QtyInStock(p_ForWhom   In Varchar2,
                            p_Delimiter In Varchar2 Default 'TAB',
                            p_FileName  In Varchar2 Default 'MOR_AMAZON_QTY.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
---------------------------------------------------------
Procedure Export_QtyInStock01(p_ForWhom   In Varchar2  Default Null,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'QTYINSTOCK.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
			   p_QtyPercent In Number Default 100,
			   p_IncludeBOM In Varchar2 Default 'Y',
                          p_VariationGroup In Varchar2 Default Null);
---------------------------------------------------------
Procedure Export_AmazonTemplate(p_ForWhom   In Varchar2,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'WEBAMAZON.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
---------------------------------------------------------
Procedure Export_ItemTemplate(p_Delimiter In Varchar2 Default '|',
                            p_ForWhom   In Varchar2 Default Null,
                            p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null);
---------------------------------------------------------
Procedure Export_ItemTemplate02(p_Delimiter In Varchar2 Default ',',
                            p_ForWhom   In Varchar2 Default Null,
                            p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
                              p_MultiGroup In Varchar2 Default 'Y',
                              p_InStockOnly  In Varchar2 Default 'Y');

-----------------------------------------------------------------
Function FormatDate(p_Date In Date,
                    p_Format in Varchar2 Default 'DD/MM/YYYY')
 Return Varchar2;
---------------------------------------------------------
Procedure Export_ItemTemplate03(p_Delimiter In Varchar2 Default ',',
                            p_ForWhom   In Varchar2 Default Null,
                            p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
                              p_MultiGroup In Varchar2 Default 'Y',
                              p_InStockOnly  In Varchar2 Default 'N',
			      p_FilterCriteria In Varchar2 Default Null,
			      p_Datasource     In varchar2 default null,
                           p_Substitute  In Varchar2 Default Null,
			   p_IncludeBom	In Varchar2 Default 'Y',   
			   p_File0Header In Varchar2 Default Null,
			   p_File0Columns In Varchar2 Default Null,
			   p_File1	In Varchar2 Default Null,
			   p_File1Header In Varchar2 Default Null,
			   p_File1Columns In Varchar2 Default Null,
			   p_File2	In Varchar2 Default Null,
			   p_File2Header In Varchar2 Default Null,
			   p_File2Columns In Varchar2 Default Null,
			   p_File3	In Varchar2 Default Null,
			   p_File3Header In Varchar2 Default Null,
			   p_File3Columns In Varchar2 Default Null,
			   p_File4	In Varchar2 Default Null,
			   p_File4Header In Varchar2 Default Null,
			   p_File4Columns In Varchar2 Default Null,
			   p_File5	In Varchar2 Default Null,
			   p_File5Header In Varchar2 Default Null,
			   p_File5Columns In Varchar2 Default Null,
			   p_BatchID	  In Number Default Null,
			   p_ApplySUFilter In Number Default  0,
                           p_Language       In varchar2 Default 'NULL',
                           p_currency      In Varchar2 Default 'NULL',
                           p_Country       In Varchar2 Default 'NULL',
	           p_Stage	 In Varchar2 Default 'NO',
		   p_outdelimiter  In Varchar2 Default ',',
		   p_Outformat	   In Varchar2 Default null,
		   p_MinQty	   In Number Default .10);
---------------------------------------------------------
Procedure POP_BESTWORST(p_BestWorst in Varchar2 Default 'BEST',
                                         p_Howmany   in Number Default 10,
                                         p_Bywhat    in Varchar2 Default 'VALUE',
                                         p_ReturnType In Varchar2 Default 'ALL',
                                         p_DateFrom    In Date Default Null,
                                         p_DateTo      in date Default Null,
					 p_ObjectName In Varchar2 Default 'SALES',
                                         p_Identifier In Varchar2 Default 'ITEM',
                                         p_ID         in varchar2  default '521',
                                         p_AggFunction In Varchar2 Default 'SUM',
                                         p_LocationId  in Number Default Null,
                                         p_FilterQry   In varchar2 default null,
                                         p_Filtertype  in Varchar2 default null,
                                         p_FilterId    In Number  Default Null);
--------------------------------------------------------------------------------
Function Get_GLACCODE(p_LookupType In Varchar2 Default 'SAGE_DEFAULTS',
                      p_TransType in Varchar2 ,
                      p_Source    In Varchar2,
                      p_Id       In  number,
		      p_INOUT    In  Varchar2 Default 'IN')
 Return Varchar2;
--------------------------------------------------------------------------------
Procedure Export_SAGETRANS(p_TransType   In Varchar2 Default 'ALL',
                           p_Delimiter In Varchar2 Default ',',
                           p_FileName  In Varchar2 Default 'SAGETRANS.csv',
                           p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_DateCriteria  In Varchar2 Default 'YESTERDAY',
                           p_NotifGroup In Varchar2 Default Null);
--------------------------------------------------------------------------------
Function Get_WwwMinSalesUnit(p_CustomerId In Number,
                             p_customerNumber Varchar2 Default Null,
                             p_ItemId  In Number,
                             p_Barcode  in Varchar2)
Return Number;
--------------------------------------------------------------------------------
Function Copy_WebSiteItems(p_FromId In Number,
                           p_ToId   In Number,
                           p_ItemID In Number Default Null,
                           p_Hint   In varchar2 Default 'REPLACE')
 Return Varchar2;
----------------------------------------------------------------------------------
Function Get_WWWColumnList(p_ForWhom In Varchar2 ,
                           p_Hint    In Varchar2 Default 'BODY')
Return Varchar2;
---------------------------------------------------------------------------------
Procedure Import_SalesOrder(p_Hint  		In Varchar2 Default 'SALESORDER',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null,
			    p_HeaderRecord	In Varchar2 Default 'Y');
---------------------------------------------------------------------------------

Function Is_ImportBatchExist(p_Batch in Varchar2) Return  number;
----------------------------------------------------------------------------------
Procedure Import_Customers(p_Hint  		In Varchar2 Default 'CUSTOMER',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null); 
----------------------------------------------------------------

Function Is_ImportBatchApproved(p_Batch in Varchar2) Return  number;		
--------------------------------------------------------------------------------------
Function IncludeExclude_ItemBatch(p_BatchId   In Number,
                                  p_itemId    In Number,
                                  p_Hint      In Varchar2 Default Null)
 Return Number;	    
--------------------------------------------------------------------------------------
Procedure Import_parties(p_Hint  		In Varchar2 Default 'PARTIES',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null);
-------------------------------------------------------------------------------

Procedure Import_partiesYahoo(p_Hint  		In Varchar2 Default 'PARTIES',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null);
-------------------------------------------------------------------------------------

Procedure Import_partiesOutlook(p_Hint  		In Varchar2 Default 'OUTLOOK',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null);
------------------------------------------------------------
Procedure Get_ContactString(p_Target 		in Varchar2 Default 'ORATECH',
			      p_FirstLine	out Varchar2,
			      p_HeaderList	out Varchar2 ,
			      p_ColumnList	out Varchar2 ,
			      p_LastLine	out Varchar2  );
	    
-----------------------------------------------------------------------------------------------
Procedure Export_Contacts01(  p_Target		In Varchar2 Default 'ORATECH',
                              p_FileName  	In Varchar2 Default 'contacts.csv',
                              p_Directory 	In Varchar2 Default 'DIR_OUTBOUND',
                              p_Delimiter 	In Varchar2 Default ',',
                              p_ForWhom   	In Varchar2 Default Null,
                              p_NotifGroup 	In Varchar2 Default Null,
                              p_Hint       	In Varchar2 Default Null,
                              p_ContactbatchId  In Number   Default Null,
			      p_FirstLine	In Varchar2 Default Null,
			      p_HeaderList	In Varchar2 Default Null,
			      p_ColumnList	In Varchar2 Default Null,
			      p_LastLine	In Varchar2 Default Null );
-----------------------------------------------------------------------------
Function Get_wwwMapCategoryDesc(p_SubCategoryID in Number,
				p_CustomerID    In Number,
			        p_Hint		In Varchar2 default 'DESCRIPTION')
 Return Varchar2;

----------------------------------------------------------------------------
Procedure AutoImport(p_Hint  		In Varchar2 Default 'CUSTOMER',
		     p_FilePrefix	In Varchar2 Default 'CU%',
                     p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                     p_FileName 	In Varchar2 Default Null,
                     p_NotifGroup 	In Varchar2 Default Null,
                     p_LocationID       In Varchar2 Default Null,
		     p_NextAction       In Varchar2 Default 'NONE',
			    p_HeaderRecord	In Varchar2 Default 'Y'); 
-----------------------------------------------------------------------------
Procedure Export_ItemOffers(p_Delimiter In Varchar2 Default ',',
                            p_ForWhom   In Varchar2 Default Null,
                            p_FileName  In Varchar2 Default 'OFFER.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                            p_NotifGroup In Varchar2 Default Null,
                            p_Hint       In Varchar2 Default Null,
                            p_InStockOnly  In Varchar2 Default 'N',
			    p_FilterCriteria In Varchar2 Default Null,
			    p_Datasource     In varchar2 default null );
---------------------------------------------------------
Procedure Export_BOMITEMS01(p_ForWhom   In Varchar2 Default Null,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'BOMS.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
			   p_QtyPercent In Number Default 100,
			   p_IncludeBOM In Varchar2 Default 'Y');
---------------------------------------------------------
 			    
              

end IMPEXP_PKG;
/
Show Error
  
  
Create or Replace Package Body IMPEXP_PKG Is

  Pub_ErrorLevel  		Varchar2(100);
  Pub_RetValue  		number := 0;
  pub_CurrentLine 		Varchar2(32676);
  Pub_chartab     		Utility_Pkg.CharTab;
  Pub_Delimiter   		Varchar2(1) := ',';
  Pub_FileID      		Utility_Pkg.FileType;
  Pub_Directory   		Varchar2(100) := 'DIR_ARIMPORT';
  Pub_HeaderTab   		Utility_Pkg.Chartab;
  Pub_DataColumn  		Varchar2(100) := null;
  Pub_CurrColName 		varchar2(100);
  Pub_CurrValue   		Varchar2(4000);
  Pub_RecNo       		Number := 0;
  Pub_ColIndex    		Number := 0;
  Pub_MaxColumns  		Number := 0;
  Pub_Mode        		Varchar2(10);
  Pub_AckMsgs     		Number;
  Pub_AmazonNumber 		Varchar2(100);
  Pub_PrevTotal   		number := 0;
  Pub_ConsolidateItems 		Varchar2(10) := 'N';
  Pub_Filename                  Varchar2(100);
  PUB_Status                    Varchar2(100);
  Pub_NumStatus		        Number;
  ---------------------------------------------------------------
Procedure  Export_ViewData(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null )
IS
vCharTab4k Utility_Pkg.CharTab4k;
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
vwhere     Varchar2(1000);

Begin
if p_callCode = 1 Then 
vString := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'QUERYSTRING',  p_Delimiter => p_Delimiter);
 vHeader := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'COLUMNS',  p_Delimiter => p_Delimiter);
Else
 vString := Null;
End If;
if p_Headers is not null then 
 vheader := p_Headers;
End If; 
if p_HINT = 'INCREMENTAL' then 
 vWhere := 'where Creation_Date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')';
elsif p_HINT = 'CHANGEDSINCE' then 
 vWhere := 'where Last_Update_Date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')';
else
  vWhere := null;
End If; 
Dbms_Output.Put_Line('Where:'||vWhere);
vCharTab4k := Utility_Pkg.GetDatatoArray4k(p_ViewName=>p_ViewName,p_String=>vString,p_Where=>vWhere);
if vCharTab4k.count > 0 then 
   vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                     pDir  => p_DirName,
                                     pMode => 'w');
End If;
If vHeader is Not Null and vHeader not like 'STRING%' then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vHeader);
End If; 
for i in 1..vCharTab4k.Count 
Loop
  Utility_Pkg.Write(pfileId => vfileType,Wstring => Replace( vCharTab4k(i),'|',p_Delimiter));
  dbms_OutPut.Put_Line(Replace(Replace(vCharTab4k(i),Chr(10),' '),Chr(13),' '));
End Loop;
if p_HINT in ('INCREMENTAL','CHANGEDSINCE') then 
 Session_Pkg.SAVE_LASTSAVEDVALUE(p_Identifier => p_ViewName,
                                 p_Value     => p_ViewName,
                                 p_Description   => p_ViewName);
End If; 
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);

Utility_Pkg.closeFile(vFileType);

Exception When Others then Utility_Pkg.closeFile(vFileType);

End;
-----------------------------------------------------
Procedure  Export_ViewData32k(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null)
IS
vCharTab32k Utility_Pkg.CharTab;
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
vLAstRunDate date;
VWhere     Varchar2(400);

Begin
if p_callCode = 1 Then 
 vString := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'QUERYSTRING',  p_Delimiter => p_Delimiter);
 dBMS_oUTPUT.Put_Line(vString);
 vHeader := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'COLUMNS',  p_Delimiter => p_Delimiter);
 dBMS_oUTPUT.Put_Line(vheader);
End If;

if p_HINT = 'INCREMENTAL' then 
 vWhere := 'where Creation_date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')';
elsif p_HINT = 'CHANGEDSINCE' then 
 vWhere := 'where Last_Update_Date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')';
else
  vWhere := null;
End If; 
vCharTab32k := Utility_Pkg.GetDatatoArray32k(p_ViewNAme => p_ViewName,p_Where=>vWhere);
if vCharTab32k.count > 0 then 
   vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                     pDir  => p_DirName,
                                     pMode => 'w');
End If;
  
for i in 1..vCharTab32k.Count 
Loop
  Utility_Pkg.Write(pfileId => vfileType,Wstring => Replace( vCharTab32k(i),'|',p_Delimiter));
  dbms_OutPut.Put_Line(Replace(Replace(vCharTab32k(i),CHR(10),' '),chr(13),' '));
End Loop;

if  p_HINT in ('INCREMENTAL','CHANGEDSINCE') then  
 Session_Pkg.SAVE_LASTSAVEDVALUE(p_Identifier => p_ViewName,
                                 p_Value     => p_ViewName,
                                 p_Description   => p_ViewName);
End If; 

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then Utility_Pkg.closeFile(vFileType);

End;
-----------------------------------------------------
Procedure  Export_ViewDataWithFilter(p_ViewName In Varchar2,
                           p_FileName In Varchar2,
                           p_Where    In Varchar2 Default Null,
                           p_OrderBy  In Varchar2 Default Null,
                           p_DirName  In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter In Varchar2 Default ',',
                           p_CallCode  In Number Default 0,
                           p_Headers   In Varchar2 Default Null,
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null)
IS
vCharTab32k Utility_Pkg.CharTab;
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
vLAstRunDate date;
VWhere     Varchar2(400);

Begin
if p_callCode = 1 Then 
 vString := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'QUERYSTRING',  p_Delimiter => p_Delimiter);
 dBMS_oUTPUT.Put_Line(vString);
 vHeader := Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'COLUMNS',  p_Delimiter => p_Delimiter);
 dBMS_oUTPUT.Put_Line(vheader);
End If;
vWhere := p_Where;
if p_HINT = 'INCREMENTAL' then 
 vWhere :=  Cmn_Common_Pkg.Add_Condition(p_NewString => ' creation_date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')',
                       p_OldString => vWhere,
                       p_Operator  => ' AND ');
End If; 
vCharTab32k := Utility_Pkg.GetDatatoArray32k(p_ViewNAme => p_ViewName,p_Where=>vWhere,p_Order=>p_Orderby);
if vCharTab32k.count > 0 then 
   vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                     pDir  => p_DirName,
                                     pMode => 'w');
End If;
  
for i in 1..vCharTab32k.Count 
Loop
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vCharTab32k(i));
  dbms_OutPut.Put_Line(Replace(Replace(vCharTab32k(i),CHR(10),' '),chr(13),' '));
End Loop;

if p_HINT = 'INCREMENTAL' then 
 Session_Pkg.SAVE_LASTSAVEDVALUE(p_Identifier => p_ViewName,
                                 p_Value     => p_ViewName,
                                 p_Description   => p_ViewName);
End If; 

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then Utility_Pkg.closeFile(vFileType);

End;
-----------------------------------------------------
Procedure Export_Category
IS
Begin
 Export_ViewData('EXP_CATEGORIES_V','categories.txt');
End;

-----------------------------------------------------
Procedure Export_Subcategory
IS
Begin
 Export_ViewData('EXP_SUBCATEGORIES_V','subcategories.txt');
End;
-----------------------------------------------------
Procedure Export_Suppliers
IS
Begin
 Export_ViewData('EXP_SUPPLIERS_V','suppliers.txt');
End;
-----------------------------------------------------
Procedure Export_customers
IS
Begin
 Export_ViewData(p_viewName=>'AR_CUSTOMERS',p_fileName=>'customers.txt',p_CallCode=>1);
End;
-----------------------------------------------------
Procedure Export_Items
IS
Begin
 Export_ViewData(p_ViewName=>'INV_ITEM_MASTERS',p_Filename=>'items.txt',p_CallCode=>1);
End;
-----------------------------------------------------
Procedure Export_ItemsPriceRange(p_ViewName        	In Varchar2,
                                 p_FileName 	   	In Varchar2,
                                 p_PriceSlNo       	In Number Default 1,
                                 p_PriceRangeFrom  	In Number Default 0.01,
                                 p_PriceRangeTo    	In Number Default 999999,
                           	 p_DirName  		In Varchar2 Default 'DIR_OUTBOUND',
                          	 p_Delimiter 		In Varchar2 Default ',',
                          	 p_CallCode  		In Number Default 0,
                          	 p_Headers   		In Varchar2 Default Null,
                          	 p_NotifGroup 		In Varchar2 Default Null,
                          	 p_Hint       		In Varchar2 Default Null)
IS
vWhere   Varchar2(10000);
Begin
vWhere := 'Where Item_ID = 0 or ( Exists (Select x.IIM_ITEM_ID ' ||
                       ' From inv_Item_Prices x, Inv_Price_types y '||
                       ' Where y.Sl_No = '||p_PriceSlNo||
                       ' And   y.Price_Type_ID = x.IPT_PRice_Type_ID '||
                       ' And   x.Price_ExlTax Between '||p_PriceRangeFrom||'  and '||p_PriceRangeTo ||
                       ' And   '||p_Viewname||'.ITEM_ID = x.IIM_ITEM_ID '||'))';

 Export_ViewDataWithFilter(p_ViewName	=> p_ViewName,
                           p_Filename	=> p_FileName,
                           p_Where      => vWhere,
			   p_DirName    => p_Dirname,
                           p_Delimiter  => p_Delimiter,
                           p_Headers    => p_Headers,
                           p_NotifGroup => p_NotifGroup,
                           p_Hint       => p_Hint,
                           p_CallCode=>1);
End;
-----------------------------------------------------

Function RecordStatus(p_Status in Varchar2) Return Varchar2
IS
Retvalue Varchar2(10);
begin 
select DECODE(p_status,'I','A',
                      'U','U',
                      'D','D','A') 
Into RetValue
From Dual;
Return(RetValue);
End;
------------------------------------------------------
Procedure Export_QtyInStock(p_ForWhom   In Varchar2,
                            p_Delimiter In Varchar2 Default 'TAB',
                            p_FileName  In Varchar2 Default 'MOR_AMAZON_QTY.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null)
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
v_Stock Number(10);
vLastRunDate  Date;
vIdentifier  varchar2(100) := 'AMAZON QUANTITY';
vctr   number := 0;
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
/* v_String := 'TemplateType=ConsumerElectronics	Version=1.7/1.2.9 '||
             '	This row for Amazon.com use only.  Do not modify or delete.';  
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);

 v_String := 'sku'||vDelimiter||'item-price'||vDelimiter||'currency'||vDelimiter||'quantity'||vDelimiter||'update-delete'||vDelimiter||
             'sale-price'||vDelimiter||'sale-from-date'||vDelimiter||'sale-through-date'||vDelimiter||'leadtime-to-ship'
             ||vDelimiter||'fulfillment-center-id';
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
*/
v_String := 'sku'||vDelimiter||'Quantity';
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);

if p_HINT = 'INCREMENTAL' then 
   vLastRunDate := SESSION_PKG.get_LASTSAVEDdate(vIdentifier);
else
   vLastRundate := null;
End If; 

For i In (select Item_ID,Item_Number,Derived_SalesUnit,
                 ITemStatus_Pkg.GetQtyInStock(Item_Id,Bu_Id) QtyInStock,
                 Upload_ID
           From Cmn_WebsiteItems_V
           Where Customer_Number = p_ForWhom
         --  And   Upload_Status   in ('RELEASED','UPLOADED')
           And   nvl(Upload_Item,'Y') = 'Y'
           and  ( vLastRundate is null 
                  or 
                Item_Id in (Select sl.Item_Id from Inv_Item_Sub_Locations sl 
                              where sl.last_Update_Date >= Nvl(vLastRundate,sl.Last_Update_Date) 
                              UNION
                              Select b.Parent_Item_ID from Inv_BOM b
                              Where  b.Item_ID  in (Select sl.Item_Id from Inv_Item_Sub_Locations sl 
                              where sl.last_Update_Date >= Nvl(vLastRundate,sl.Last_Update_Date) )
                            )
                ) 
           Order By Item_Number
          )
 Loop
if Nvl(i.Derived_SalesUnit,0) = 0 then 
    i.Derived_SalesUnit := 1;
  End If; 

  v_Stock := floor(i.QtyInStock/i.Derived_SalesUnit);
  if V_Stock < 0 then V_Stock := 0; end If; 
   -- v_String := i.Item_Number||vDelimiter||vDelimiter||vDelimiter||v_Stock||vDelimiter||'Update';
    v_String := i.Item_Number||vDelimiter||v_Stock;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  for j in (Select bar.Barcode,nvl(nvl(bar.Sales_Unit,b.sales_Qty),1) Salesunit
            From AR_CUST_BARCODE_UPLOADS bar, Inv_Item_Barcodes b
            where bar.Upload_Id = i.Upload_Id
            And   bar.Barcode =   b.barcode 
           )
  Loop
    v_Stock := floor(i.QtyInStock/j.SalesUnit);
  if V_Stock < 0 then V_Stock := 0; end If; 
   -- v_String := j.barcode||vDelimiter||vDelimiter||vDelimiter||v_Stock||vDelimiter||'Update';
    v_String := j.barcode||vDelimiter||v_Stock;
    vctr :=  vctr + 1;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End Loop;
 End Loop;
 if vctr <= 0 Then 
   v_String := '99999'||vDelimiter||'0';
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End If; 

if p_HINT = 'INCREMENTAL' then 
 SESSION_PKG.SAVE_LASTSAVEDVALUE(vIdentifier,'EXPORTING AMAZON QUANTITY');
End If; 
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_QtyInStock01(p_ForWhom   In Varchar2 Default Null,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'QTYINSTOCK.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
			   p_QtyPercent In Number Default 100,
                        p_IncludeBOM In Varchar2 Default 'Y',
                        p_VariationGroup   In Varchar2  Default Null)
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
vBarcodeQty  Number;
v_Stock Number(10);
v_Stockfull Number(10);
vLastRunDate  Date;
vGoogleStatus  varchar2(100);
vIdentifier  varchar2(100) := 'QUANTITY IN STOCK 01';
vCustomerId   Number;
vctr   number := 0;
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);

if p_HINT = 'INCREMENTAL' then 
   vLastRunDate := SESSION_PKG.get_LASTSAVEDdate(vIdentifier);
else
   vLastRundate := null;
End If; 
vCustomerID := Ar_Pkg.get_customeridbynumber(p_ForWhom);

For i In (select i.Item_ID,i.Item_Number,Price_Pkg.Get_ItemQuantity('WEBSITE',i.Item_ID,Null,1,null,vCustomerId) Derived_SalesUnit,
                 ITemStatus_Pkg.GetQtyInStock(i.Item_Id,i.Bu_Id) QtyInStock,
                 po.Qty_Balance, po.Promised_Date,iis.Qty_Sold, iis.Last_Sold_Date,i.Item_Status,
                 Decode(i.Item_Status,'ACTIVE','1','0') Active_Flag , i.Min_Qty, i.Reorder_Qty, i.Max_Qty,
                 Inv_Pkg.Get_ItemBarcode('PRIMARY',i.Item_Id) PrimaryBarcode,Inv_Pkg.Get_SuBin(i.Item_ID) Bin_Identifier,
                 ITemStatus_Pkg.GetQtyInStock(i.Item_Id,Null,i.Bu_Id,'BULEVEL','FULL') QtyInStockFull
           From  Inv_Item_Masters_V i ,
                 (Select poi.Item_ID,Min(poi.Qty_Balance) Qty_Balance ,Min(poi.LinePromised_Date) Promised_Date
                  from REP_ITEMINPO_V poi
                  Group By poi.Item_ID) po,
                  inv_Item_statuses iis 
           Where i.Item_Id = po.Item_ID (+) 
           And   Decode(p_includeBom,'N',Nvl(Item_Dimension,'N'),'Y') = Decode(p_includeBom,'N','N','Y') 
           And   ( vLastRundate is null 
                  or 
                i.Item_Id in (Select sl.Item_Id from Inv_Item_Sub_Locations sl 
                              where sl.last_Update_Date >= Nvl(vLastRundate,sl.Last_Update_Date) 
                              UNION
                              Select b.Parent_Item_ID from Inv_BOM b
                              Where  b.Item_ID  in (Select sl.Item_Id from Inv_Item_Sub_Locations sl 
                              where sl.last_Update_Date >= Nvl(vLastRundate,sl.Last_Update_Date) )
                              and   p_IncludeBom = 'Y' 
                              )
                ) 
           And  i.Item_ID = iis.item_Id (+) 
           And  Exists ( Select 1
                         From   Cmn_WebsiteItems_V w
                         Where  w.Customer_Number = p_ForWhom
                         And    p_forwhom is not Null
                         Union all
                         Select 1
                         From   Dual
                         Where  p_forWhom is null
                        ) 
           Order By i.Item_Number
          )
 Loop
  if vctr = 0 then 
        vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
        v_String := 'item_id'||vDelimiter||'item_number'||vDelimiter||'qty_in_stock'||vDelimiter||'qty_balance'
            ||vDelimiter||'promised_date'||vDelimiter||'qty_sold'||vDelimiter||'last_sold_date'||vDelimiter
            ||'item_status'||vDelimiter||'is_active'||vDelimiter||'promised_date_01'||vDelimiter||'last_sold_date_01'||vDelimiter||
            'min_sales_qty'||vDelimiter||'reorder_qty'||vDelimiter||'www_Status'||vDelimiter||'Bin_Identifier'||vDelimiter||'Full_Stock'||vDelimiter;
      Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  End If; 
  vctr := vctr + 1;

    v_Stock := nvl(i.QtyInStock,0);

   if Nvl(i.Derived_SalesUnit,0) = 0 then 
    i.Derived_SalesUnit := 1;
  End If; 

  v_Stock := floor(i.QtyInStock/i.Derived_SalesUnit);

    v_StockFull := nvl(i.QtyInStockFull,0);
    begin
      v_Stock := Ceil(v_Stock*(Nvl(p_QtyPercent,0)/100));
      v_StockFull := Ceil(v_StockFull*(Nvl(p_QtyPercent,0)/100));
    Exception When Others then Null;
   End;
  if V_Stock < 0 then V_Stock := 0; end If;

  if V_StockFull < 0 then V_StockFull := 0; end If;
  vBarcodeQty := Inv_Pkg.Get_BarcodeQty(i.PrimaryBArcode);

  if v_Stock > 0 then 
     vGoogleStatus := 'in stock';
  elsif v_Stock  <=0 And i.Qty_Balance > 0 then 
      vGoogleStatus := 'available for order';
  else
      vgoogleStatus := 'preorder';
  End If; 
  if v_Stock <=0  and Nvl(i.Max_Qty,0) <= 0 and Nvl(i.Reorder_Qty,0) > 0 Then 
     vBarcodeQty := i.Reorder_Qty;
  End If;

     v_String := i.Item_ID||vDelimiter||i.Item_Number||vDelimiter||v_Stock||vDelimiter||i.Qty_Balance||vDelimiter||i.Promised_Date||vDelimiter
                   ||i.Qty_sold||vDelimiter||i.Last_Sold_Date||vDelimiter
            || i.Item_Status||vDelimiter||i.Active_Flag||vDelimiter||ImpExp_Pkg.FormatDate(i.Promised_Date,'YYYY-MM-DD HH24:MI:SS')
            ||vDelimiter||ImpExp_Pkg.FormatDate(i.Last_Sold_Date,'YYYY-MM-DD HH24:MI:SS')||vDelimiter
            ||vBarcodeQty||vDelimiter||i.Reorder_Qty||vDelimiter||vGoogleStatus||vDelimiter||i.Bin_Identifier||vDelimiter||v_StockFull||vDelimiter;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 If p_VariationGroup is Not null Then 
     v_String := i.Item_ID||vDelimiter||i.Item_Number||'-PAR'||vDelimiter||v_Stock||vDelimiter||i.Qty_Balance||vDelimiter||i.Promised_Date||vDelimiter
                   ||i.Qty_sold||vDelimiter||i.Last_Sold_Date||vDelimiter
            || i.Item_Status||vDelimiter||i.Active_Flag||vDelimiter||ImpExp_Pkg.FormatDate(i.Promised_Date,'YYYY-MM-DD HH24:MI:SS')
            ||vDelimiter||ImpExp_Pkg.FormatDate(i.Last_Sold_Date,'YYYY-MM-DD HH24:MI:SS')||vDelimiter
            ||vBarcodeQty||vDelimiter||i.Reorder_Qty||vDelimiter||vGoogleStatus||vDelimiter||i.Bin_Identifier||vDelimiter||v_StockFull||vDelimiter;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 for  su in (select Su_number,sales_Unit
                 from Inv_Item_Sales_Units 
                Where iim_Item_Id = i.Item_Id
                Order By Sales_Unit
               )
    Loop
     v_StockFull := Floor(v_StockFull/su.Sales_Unit);
  v_String := i.Item_ID||vDelimiter||su.Su_number||vDelimiter||v_Stock||vDelimiter||i.Qty_Balance||vDelimiter||i.Promised_Date||vDelimiter
                   ||i.Qty_sold||vDelimiter||i.Last_Sold_Date||vDelimiter
            || i.Item_Status||vDelimiter||i.Active_Flag||vDelimiter||ImpExp_Pkg.FormatDate(i.Promised_Date,'YYYY-MM-DD HH24:MI:SS')
            ||vDelimiter||ImpExp_Pkg.FormatDate(i.Last_Sold_Date,'YYYY-MM-DD HH24:MI:SS')||vDelimiter
            ||vBarcodeQty||vDelimiter||i.Reorder_Qty||vDelimiter||vGoogleStatus||vDelimiter||i.Bin_Identifier||vDelimiter||v_StockFull||vDelimiter;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End Loop;
 End If; 

 End Loop;

if p_HINT = 'INCREMENTAL' then 
 SESSION_PKG.SAVE_LASTSAVEDVALUE(vIdentifier,'QUANTITY IN STOCK 01');
End If; 
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_BOMITEMS01(p_ForWhom   In Varchar2 Default Null,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'BOMS.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null,
			   p_QtyPercent In Number Default 100,
			   p_IncludeBOM In Varchar2 Default 'Y')
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
vLastRunDate  Date;
vIdentifier  varchar2(100) := 'BOM ITEMS 01';
vctr   number := 0;
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);

if p_HINT = 'INCREMENTAL' then 
   vLastRunDate := SESSION_PKG.get_LASTSAVEDdate(vIdentifier);
else
   vLastRundate := null;
End If; 

For i In (select Parent_Item_Number,Bom_Level,Item_Number,Quantity
                  From Inv_BomItems_Export_V
                  Order By 1,2
          )
 Loop
  if vctr = 0 then 
        vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
        v_String := 'ParentSku'||vDelimiter||'ChildSku'||vDelimiter||'Quantity';
      Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  End If; 
  vctr := vctr + 1;


     v_String := i.Parent_Item_Number||vDelimiter||i.Item_Number||vDelimiter||i.Quantity;
   Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End Loop;

if p_HINT = 'INCREMENTAL' then 
 SESSION_PKG.SAVE_LASTSAVEDVALUE(vIdentifier,'BOM ITEMS 01');
End If; 
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_AmazonTemplate(p_ForWhom   In Varchar2,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'WEBAMAZON.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null)
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(30000);
vHeader    Varchar2(10000);
v_String  Varchar2(2000);
v_Stock Number(10);
v_UnitSP Number;
v_MinPrice Number;
v_PrimaryBarcode Varchar2(100);
v_Picturename Varchar2(400);
vCustomerId   Number; 
vunitWeight   Number(12,2);
vGrossWeight  Number(12,2);

v_section1  		Varchar2(4000);
v_section2  		Varchar2(4000);
v_section3  		Varchar2(4000);
vColumnList             Varchar2(4000);
vHeaderList             Varchar2(4000);
vfirstline                Varchar2(4000);
vlastline                 Varchar2(4000);
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');

Dbms_Output.put_Line('File Opened:');
vColumnList 	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'BODY');
vHeaderList 	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'HEADER');
vfirstline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'FIRSTLINE');
vlastline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'LASTLINE');
if vFirstLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vFirstLine);
End If;


/* v_String :=  'SKU'||p_Delimiter||  -- a
              'SHORT TITLE'||p_Delimiter|| -- b
              'LONG TITLE'||p_Delimiter||  -- c
              'FULL DESCRIPTION'||p_Delimiter|| -- d
              'PRODUCT ID'||p_Delimiter|| -- e
              'PRODUCT ID TYPE'||p_Delimiter|| --f
              'MANUFACTURER'||p_Delimiter|| --g
              'MANUFACTURER PART NUMBER' ||p_Delimiter|| --h
              'Brand'||p_Delimiter|| --i
              'LONG DESCRIPTION'  ||p_Delimiter|| --j
              'BULLET 1'||p_Delimiter|| --k
              'BULLET 2'||p_Delimiter||  --l
              'BULLET 3'||p_Delimiter||  --m
              'BULLET 4'||p_Delimiter||  --n
              'BULLET 5'||p_Delimiter||  --o
              'More Info'||p_Delimiter|| --p
              'QUANTITY'||p_Delimiter||  --q
              'ITEM PRICE'||p_Delimiter||  --r
              'CURRENCY'||p_Delimiter||  --s
              'Condition Type'||p_Delimiter||  --t
              'Condition note'||p_Delimiter||  --u
              'SHIPPING WEIGHT'||p_Delimiter||  --v
              'SHIPPING WEIGHT UNIT'||p_Delimiter||  --w
              'SEARCH 1'||p_Delimiter||  --x
              'SEARCH 2'||p_Delimiter|| --y
              'SEARCH 3'||p_Delimiter|| --z
              'main image url'||p_Delimiter|| --aa
              'picture name1 url'||p_Delimiter||  --ab
              'picture name2 url'||p_Delimiter|| --ac
              'picture name3 url'||p_Delimiter||  --ad
              'Gift Message'||p_Delimiter|| --ae
              'Gift Wrap'||p_Delimiter|| --af
              'Platinum search 1'||p_Delimiter||  --ag
              'Platinum search 2'||p_Delimiter||  --ah
              'Platinum search 3'||p_Delimiter||  --ai
              'Platinum search 4'||p_Delimiter||  --aj
              'Platinum search 5'||P_Delimiter ||  --ak
              'unit length in cm'||p_Delimiter||  --al
              'unit width in cm'||p_Delimiter||  --am
              'unit height in cm'||p_Delimiter||  --an
              'unit for dimensions'||p_Delimiter||  --ao
              'unit net weight in gramms'||p_Delimiter|| --ap
              'net weight unit'||p_Delimiter||  --aq
              'Video File Url'||p_Delimiter||  --ar
              'AmazonCategory'||p_Delimiter ||  --as 
              'AmazonSubCategory'||p_Delimiter|| --at
              'Instrunctions'||p_Delimiter|| --at
              'Style'||p_Delimiter|| --at
              'Fitting'||p_Delimiter|| --at
              'Whose for'||p_Delimiter|| --at
              'Warranty period'||p_Delimiter|| --at
              'Technical spec'||p_Delimiter|| --at
              'Location of spec file'||p_Delimiter|| --at
              SFN_AUTOSEQ('EU WARN',9,p_DElimiter)|| -- a
              'TAX Code'||p_Delimiter||'TAX Rate'||p_Delimiter||
              'BIN'||p_Delimiter||
              'Sup Note1'||p_Delimiter||
              'Sup Note2'||p_Delimiter||
              'CategoryCode'||p_Delimiter||
              'SubCategoryCode'||p_Delimiter;  
*/

v_String :=  'SKU'||p_Delimiter||  -- a
              'MASTER SKU'||p_Delimiter||  -- a
              'FULL DESCRIPTION'||p_Delimiter|| -- d
              'PRODUCT ID'||p_Delimiter|| -- e
              'PRODUCT ID TYPE'||p_Delimiter|| --f
              'MANUFACTURER'||p_Delimiter|| --g
              'MANUFACTURER PART NUMBER' ||p_Delimiter|| --h
              'Brand'||p_Delimiter|| --i
              'BULLET 1'||p_Delimiter|| --k
              'BULLET 2'||p_Delimiter||  --l
              'BULLET 3'||p_Delimiter||  --m
              'BULLET 4'||p_Delimiter||  --n
              'BULLET 5'||p_Delimiter||  --o
              'Sup Note1'||p_Delimiter||
              'Sup Note2'||p_Delimiter||
              'More Info'||p_Delimiter|| --p
              'QUANTITY'||p_Delimiter||  --q
              'ITEM PRICE'||p_Delimiter||  --r
              'Min Price'||p_Delimiter||  --r
              'CURRENCY'||p_Delimiter||  --s
              'Condition Type'||p_Delimiter||  --t
              'Condition note'||p_Delimiter||  --u
              'SHIPPING WEIGHT'||p_Delimiter||  --v
              'SHIPPING WEIGHT UNIT'||p_Delimiter||  --w
              'SEARCH 1'||p_Delimiter||  --x
              'SEARCH 2'||p_Delimiter|| --y
              'SEARCH 3'||p_Delimiter|| --z
              'main image url'||p_Delimiter|| --aa
              'picture name1 url'||p_Delimiter||  --ab
              'picture name2 url'||p_Delimiter|| --ac
              'picture name3 url'||p_Delimiter||  --ad
              'Gift Message'||p_Delimiter|| --ae
              'Gift Wrap'||p_Delimiter|| --af
              'Platinum search 1'||p_Delimiter||  --ag
              'Platinum search 2'||p_Delimiter||  --ah
              'Platinum search 3'||p_Delimiter||  --ai
              'Platinum search 4'||p_Delimiter||  --aj
              'Platinum search 5'||P_Delimiter ||  --ak
              'Platinum search 6'||P_Delimiter ||  --ak
              'Platinum code 1'||p_Delimiter||  --ag
              'Platinum code 2'||p_Delimiter||  --ah
              'Platinum Code 3'||p_Delimiter||  --ai
              'Platinum code 4'||p_Delimiter||  --aj
              'Platinum code 5'||P_Delimiter ||  --ak
              'Platinum code 6'||P_Delimiter ||  --ak
              'unit length in cm'||p_Delimiter||  --al
              'unit width in cm'||p_Delimiter||  --am
              'unit height in cm'||p_Delimiter||  --an
              'unit for dimensions'||p_Delimiter||  --ao
              'net weight unit'||p_Delimiter||  --aq
              'Video File Url'||p_Delimiter||  --ar
              'AmazonCategory'||p_Delimiter ||  --as 
              'AmazonSubCategory'||p_Delimiter|| --at
              'Instrunctions'||p_Delimiter|| --at
              'Style'||p_Delimiter|| --at
              'Fitting'||p_Delimiter|| --at
              'Whose for'||p_Delimiter|| --at
              'Warranty period'||p_Delimiter|| --at
              'Technical spec'||p_Delimiter|| --at
              'Location of spec file'||p_Delimiter|| --at
               SFN_AUTOSEQ('EU WARN',9,p_DElimiter)|| -- a
              'TAX Code'||p_Delimiter||'TAX Rate'||p_Delimiter||
              'BIN'||p_Delimiter||              
              'CategoryCode'||p_Delimiter||
              'SubCategoryCode'||p_Delimiter||
              'FreightName'||p_Delimiter
              ;  


    if vHeaderList is not null Then 
       v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vHeaderList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'HEADER');
    End If; 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
For i In (select ImpExp_Pkg.RecordStatus(Record_Status) RecordStatus,Item_ID,
                 Item_Number,SFN_REMOVESPECIALCHARS(item_name) Item_Name,short_desc,                
                 '"'||SFN_REMOVESPECIALCHARS(ITEM_comment)||'"' Item_comment,
                 IISC_Sub_Category_Id, IIC_Category_Id,Delete_Flag,
                 Picturename,PictureType,Taxrate, Host_Image_Path1,
                 FlagInWebExport,FlagInDateFrom,FlagInDateTo,
                 Gross_Unit_Weight unit_Weight,Unit_Length,Unit_Width,Unit_Height,Unit_Volume,
                 net_Case_Weight case_weight,Case_Length,Case_Height,Case_Width,Case_Volume,
                 net_ingredient,Derived_SalesUnit,
                 ItemStatus_Pkg.GetQtyInStock(Item_Id,Bu_ID) QtyInStock,
                 Utility_Pkg.ReturnInitials(Supplier_Name) Supplier_Name,
                 Category_name,Sub_Category_Name,Category_code,Sub_Category_code,
                 Customer_Notes1, Customer_Notes2, Customer_Notes3, 
                 Supplier_Notes1, Supplier_Notes2, Supplier_Notes3,
                 Supplier_Product_Code,
                 cmn_Common_Pkg.Get_SeasonName(Season_Code_Id) SeasonName  , 
                 Null BrowseNode1,Null BrowseNode2,
          '"Colours / designs and outer packaging may vary."' Feature_bullets5 ,
          '"'||SFN_REMOVESPECIALCHARS1(Customer_Notes1)||'"' Feature_Bullets1,
          '"'||SFN_REMOVESPECIALCHARS1(Customer_Notes2)||'"' Feature_Bullets2,
          '"'||SFN_REMOVESPECIALCHARS1(Customer_Notes3)||'"' Feature_Bullets3,
          '"'||SFN_REMOVESPECIALCHARS1(TECHNICAL_SPECS)||'"' Feature_Bullets4,
          Customer_ID,
           HOST_IMAGE_PATH1||Item_Number||'.'||PictureType Picture0,
           HOST_IMAGE_PATH1||Picturename1 Picture1,
           HOST_IMAGE_PATH1||Picturename2 Picture2,
           HOST_IMAGE_PATH1||Picturename3 Picture3,
           Gross_Unit_Weight, LONG_DESC,Group3, Group4,    
           HOST_IMAGE_PATH2||Demo_Video_File  DemoVideoFile,
          '"'||SFN_REMOVESPECIALCHARS1(key_words)||'"' key_words,
          '"'||SFN_REMOVESPECIALCHARS1(ITEM_SPECIFICATIONS)||'"' Item_Specifications,
          '"'||SFN_REMOVESPECIALCHARS1(Technical_Specs)||'"' Technical_Specs,
          '"'||SFN_REMOVESPECIALCHARS1(INSTRUNCTION)||'"' Instrunction,
          '"'||SFN_REMOVESPECIALCHARS1(Item_Style)||'"' Item_Style,
          '"'||SFN_REMOVESPECIALCHARS1(Item_Fitting)||'"' Item_fitting,
          '"'||SFN_REMOVESPECIALCHARS1(Whose_for)||'"' Whose_for,
          Warranty_Period Warranty_Period,
          HOST_IMAGE_PATH2||Technical_Specs_File  TechnicalSpecsFile,
          Tax_Code,Tax_Rate,Inv_Pkg.Get_SuBin(Item_ID) Bin_Identifier,
          Freight_Name
           From Cmn_WebsiteItems_V
           Where Customer_Number = p_ForWhom
           And  Upload_Status   in ('RELEASED')
           And   nvl(Upload_Item,'Y') = 'Y'
           Order By Item_Number
          )
 Loop
  if Nvl(i.Derived_SalesUnit,0) = 0 then 
    i.Derived_SalesUnit := 1;
  End If; 
  v_Stock   := floor(i.QtyInStock/i.Derived_SalesUnit);
  if v_Stock < 0 Then 
   v_Stock := 0;
  End If; 
  v_UnitSP  := null;
  begin
  Select Price_IncTax,Price_ExlTax
  Into   v_UnitSP,v_MinPrice
  From   Inv_Item_Sales_Units
  Where  iim_Item_ID = i.Item_ID
  and    Sales_Unit  = 1;
  Exception When Others Then Null;
 End;
 if v_UnitSP is null then 
    v_UnitSP  := Price_Pkg.Get_LocUnitSP( p_ItemId => i.Item_ID);
 End If; 
  v_PrimaryBarcode := Inv_Pkg.Get_ItemBarcode('PRIMARY',i.Item_Id);
  if i.Host_Image_Path1 is not Null and i.Picturename is not null  then 
    v_Picturename := i.Host_Image_Path1||i.Item_Number||'.jpg';
  else
    v_Picturename := i.Picturename;
  End If; 
  v_PictureName := v_PictureName;
  vGrossWeight := round((i.Gross_Unit_Weight*i.Derived_SalesUnit)*1000,2);
  vUnitWeight  := round((i.Unit_Weight*i.Derived_SalesUnit) * 1000,2);
  v_String := i.item_number|| p_Delimiter  --a
              ||i.item_Number||'M'|| p_Delimiter  --b
                  ||i.item_Comment|| p_Delimiter --c
                  ||v_PrimaryBarcode|| p_Delimiter --e
                  ||'EAN'||p_Delimiter  --f
                  ||i.Supplier_Name|| p_Delimiter  --g
                  ||i.Supplier_Product_Code||p_Delimiter --h
                  ||'PinkWebShop'||p_Delimiter --i
                  ||i.Feature_bullets1||p_Delimiter --k
                  ||i.Feature_bullets2||p_Delimiter --l
                  ||i.Feature_bullets3||p_Delimiter --m
                  ||i.Feature_bullets4||p_Delimiter --n
                  ||i.Feature_bullets5||p_Delimiter --o
                  ||SFN_REMOVESPECIALCHARS1(i.Supplier_Notes1) ||p_Delimiter
                  ||SFN_REMOVESPECIALCHARS1(i.Supplier_Notes2)  ||p_Delimiter
                  ||i.Item_Specifications|| p_Delimiter  --p
                  ||v_stock|| p_Delimiter  --q
                  || v_UnitSp*i.Derived_SalesUnit|| p_Delimiter  --r
                  || v_MinPrice*i.Derived_SalesUnit|| p_Delimiter  --r
                  ||'GBP'|| p_Delimiter  --s
                  ||'NEW'|| p_Delimiter  --t
                  ||' Price Includes delivery to most UK post codes - There is an extra charge for outlying post ' 
                  ||'codes/Non UK delivery - Express Delivery and Gift Wrap'||p_Delimiter    --u
                  ||trunc(vGrossWeight)|| p_Delimiter  --v
                  ||'grams'||p_Delimiter  --w
                  ||i.key_words||p_Delimiter --x
                  ||i.category_name||p_Delimiter --y
                  ||i.sub_Category_name||p_Delimiter --z
                  ||v_PictureName||p_Delimiter  --aa
                  ||i.picture1||p_Delimiter --ab
                  ||i.picture2||p_Delimiter --ac
                  ||i.picture3||p_Delimiter --ad
                  ||'TRUE'|| p_Delimiter --ae
                  ||'TRUE'||p_Delimiter  --af
             --     ||SFN_REMOVESPECIALCHARS1(i.sub_Category_name)||p_Delimiter --ag
                  ||Inv02_Pkg.Get_Multicat(i.Item_ID,6,p_Delimiter)--||p_Delimiter --ah--ak
                 -- ||SFN_REMOVESPECIALCHARS1(i.sub_category_code) --||p_Delimiter
                  ||Inv02_Pkg.Get_Multicat(i.Item_ID,6,p_Delimiter,'CODE')--||p_Delimiter --ah--ak
                  ||trunc(i.unit_Length)||p_Delimiter  --al
                  ||trunc(i.unit_width)||p_Delimiter   --am
                  ||trunc(i.unit_height)||p_Delimiter  --an
                  ||'cm'||p_Delimiter  --ao
                  ||'grams'||p_Delimiter  --aq
                  ||i.DemoVideoFile||p_Delimiter -- ar
                  ||i.Group3||p_Delimiter -- as
                  ||i.Group4||p_Delimiter -- at,
                  ||i.Instrunction||p_Delimiter -- at,
                  ||i.Item_Style||p_Delimiter -- at,
                  ||i.Item_Fitting||p_Delimiter -- at,
                  ||i.Whose_For||p_Delimiter -- at,
                  ||i.Warranty_Period||p_Delimiter -- at,
                  ||i.Technical_Specs||p_Delimiter -- at,
                  ||i.TechnicalSpecsFile||p_Delimiter -- at,                                  
                  ||SFN_REMOVESPECIALCHARS1(Inv02_Pkg.Get_ItemExtras('WARNINGS',i.Item_ID,9,p_Delimiter),'01')
                  ||i.Tax_Code||p_Delimiter
                  ||i.Tax_Rate||p_Delimiter
                  ||i.Bin_Identifier||p_Delimiter
                  ||SFN_REMOVESPECIALCHARS1(i.category_code) ||p_Delimiter
                  ||SFN_REMOVESPECIALCHARS1(i.sub_category_Code)||p_Delimiter
                  ||SFN_REMOVESPECIALCHARS1(i.Freight_Name)          
                ;  

   if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
     End If;  
                 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  vCustomerId := i.Customer_ID;
 End Loop;
if Nvl(p_Hint,'NONE') <> 'ALL' Then 
 begin
 Update Ar_Cust_item_Uploads
 Set    Upload_status = 'UPLOADED',
        last_update_Date = sysdate,
        LAST_UPLOAD_DATE = sysdate
 Where  Customer_id = vcustomerid 
 And   Upload_Status   in ('RELEASED')
 And   nvl(Upload_Item,'Y') = 'Y';
 Commit;
 Exception when others then null;
end; 
End If;



Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
 Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_SBANKTemplate(p_ForWhom   In Varchar2,
                            p_Delimiter In Varchar2 Default ',',
                            p_FileName  In Varchar2 Default 'WEB/sbank.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null)
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(20000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
v_Stock Number(10);
v_UnitSP Number;
v_PrimaryBarcode Varchar2(100);
v_Picturename Varchar2(400);
vCustomerId   Number; 
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 v_String :=  'Start'||p_Delimiter||'ProductRef'||p_Delimiter||'ShortDesc'||p_Delimiter||' LongDesc'||p_Delimiter||' Variation1'||
             p_Delimiter||' Variation2'||p_Delimiter||' Variation3'||p_Delimiter||' Variation4'||p_Delimiter||' ReviewTitle'||
             p_Delimiter||' ReviewText'||p_Delimiter||' Manufacturer'||p_Delimiter||' Model'||p_Delimiter||' shipping WEIGHT UNITs'||p_Delimiter||''||
                'MANUFACTURER'||p_Delimiter||' IMAGE'||p_Delimiter||' FEATURE Bullets 1'||p_Delimiter||' FEATURE Bullets 2'||
             p_Delimiter||' FEATURE Bullets 3'||p_Delimiter||''||
                'FEATURE Bullets 4'||p_Delimiter||' FEATURE Bullets 5'||p_Delimiter||'CONDITION'||p_Delimiter||' '||
                'SEARCH Terms 1'||p_Delimiter||' SEARCH Terms 2'||p_Delimiter||' SEARCH Terms 3'||p_Delimiter||
      ' CATEGORY'||p_Delimiter||' PRODUCT TYPE'||p_Delimiter||' BRAND'||p_Delimiter||' BROWSENODE1'||p_Delimiter||' browsenode2';
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
For i In (select ImpExp_Pkg.RecordStatus(Record_Status) RecordStatus,Item_ID,Item_Number,item_name,short_desc,
                 IISC_Sub_Category_Id, IIC_Category_Id,Delete_Flag,
                 Picturename,PictureType,Taxrate, Host_Image_Path1,
                 FlagInWebExport,FlagInDateFrom,FlagInDateTo,
                 Gross_Unit_Weight unit_Weight,Unit_Length,Unit_Width,Unit_Height,Unit_Volume,
                 net_Case_Weight case_weight,Case_Length,Case_Height,Case_Width,Case_Volume,
                 net_ingredient,Derived_SalesUnit,
                 ItemStatus_Pkg.GetQtyInStock(Item_Id,Bu_ID) QtyInStock,
                 Utility_Pkg.ReturnInitials(Supplier_Name) Supplier_Name,
                 Category_name,Sub_Category_Name,
                 Customer_Notes1, Customer_Notes2, Customer_Notes3, 
                 Supplier_Notes1, Supplier_Notes2, Supplier_Notes3,
                 Supplier_Product_Code,
                 cmn_Common_Pkg.Get_SeasonName(Season_Code_Id) SeasonName  , 
                 Null BrowseNode1,Null BrowseNode2,
          '"Colours, designs and outer packaging may vary."' Feature_bullets1 ,
          '"'||Customer_Notes1||'"' Feature_Bullets2,
          '"'||Customer_Notes2||'"' Feature_Bullets3,
          '"'||Customer_Notes3||'"' Feature_Bullets4,
          '"'||SUPPLIER_Notes1||'"' Feature_Bullets5,
          Customer_ID 
           From Cmn_WebsiteItems_V
           Where Customer_Number = p_ForWhom
           And   Upload_Status   in ('RELEASED','UPLOADED')
           And   nvl(Upload_Item,'Y') = 'Y'
           Order By Item_Number
          )
 Loop
  if Nvl(i.Derived_SalesUnit,0) = 0 then 
    i.Derived_SalesUnit := 1;
  End If; 
  v_Stock   := floor(i.QtyInStock/i.Derived_SalesUnit);
  v_UnitSP  := Price_Pkg.Get_LocUnitSP( p_ItemId => i.Item_ID);
  v_PrimaryBarcode := Inv_Pkg.Get_ItemBarcode('PRIMARY',i.Item_Id);
  if i.Host_Image_Path1 is not Null then 
    v_Picturename := i.Host_Image_Path1||i.Item_Number||'.jpg';
  else
    v_Picturename := i.Picturename;
  End If; 
  v_String := i.item_number|| p_Delimiter||Replace(i.item_name,',','-')||' ('||i.supplier_product_code||')'|| p_Delimiter||v_stock|| p_Delimiter||
                   v_UnitSp*i.Derived_SalesUnit|| p_Delimiter||'"'||v_PrimaryBarcode||'"'|| p_Delimiter||'ean'|| p_Delimiter||i.Unit_Weight*i.Derived_SalesUnit|| p_Delimiter||
                   'grams'||','||i.Supplier_Name||','||v_PictureName||','||i.Feature_Bullets1
                   || p_Delimiter||i.Feature_Bullets2|| p_Delimiter||i.Feature_Bullets3|| p_Delimiter||i.Feature_Bullets4|| p_Delimiter||i.Feature_Bullets5
                   || p_Delimiter||'new'|| p_Delimiter||i.Category_name|| p_Delimiter||i.Sub_Category_name|| p_Delimiter|| p_Delimiter
                   ||Replace(i.Seasonname,',','-')|| p_Delimiter||Replace(i.Seasonname,',','-')|| p_Delimiter||'MTGL'|| 
                    p_Delimiter||i.BrowseNode1||p_Delimiter||i.BrowseNode2||p_Delimiter;
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  vCustomerId := i.Customer_ID;
 End Loop;
 begin
 Update Ar_Cust_item_Uploads
 Set    Upload_status = 'UPLOADED',
        last_update_Date = sysdate
 Where  Customer_id = vcustomerid 
 And   Upload_Status   in ('RELEASED')
 And   nvl(Upload_Item,'Y') = 'Y';
 Commit;
 Exception when others then null;
end; 



Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
 Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_ItemTemplate(p_Delimiter In Varchar2 Default '|',
                              p_ForWhom   In Varchar2 Default Null,
                              p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                              p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_NotifGroup In Varchar2 Default Null,
                           p_Hint       In Varchar2 Default Null )
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(20000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
v_Stock Number(10);
v_UnitSP Number;
v_PrimaryBarcode Varchar2(100);
v_Picturename Varchar2(400);
 Ispicture       Varchar2(1) := 'N';
 IsNewProduct    Varchar2(1) := 'A';
 InSpOffer       Varchar2(1) := 'N';
 SpOfferText     Varchar2(400);
v_ItemString      Varchar2(4000);
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
For i In (select ImpExp_Pkg.RecordStatus(Record_Status) RecordStatus,Item_ID,Item_Number,item_name,short_desc,
                 IISC_Sub_Category_Id, IIC_Category_Id,Delete_Flag,
                 Picturename,PictureType,Taxrate, 
                 FlagInWebExport,FlagInDateFrom,FlagInDateTo,
                 Gross_Unit_Weight unit_Weight,Unit_Length,Unit_Width,Unit_Height,Unit_Volume,
                 net_Case_Weight case_weight,Case_Length,Case_Height,Case_Width,Case_Volume,
                 net_ingredient,1 Derived_SalesUnit,
                 Itemstatus_Pkg.GetQtyInStock(Item_Id,BU_ID) QtyInStock,
                 Utility_Pkg.ReturnInitials(Supplier_Name) Supplier_Name,
                 Category_name,Sub_Category_Name,
                 Customer_Notes1, Customer_Notes2, Customer_Notes3, 
                 Supplier_Notes1, Supplier_Notes2, Supplier_Notes3,
                 Supplier_Product_Code,
                 Picturename1,PictureName2,PictureName3,
                 cmn_Common_Pkg.Get_SeasonName(Season_Code_Id) SeasonName,
                 SFN_REMOVESPECIALCHARS(Technical_Specs) TechnicalSpecs,
                 Inv_Pkg.ConcatSalesUnit(Item_Id,6,p_Delimiter,'Y','N') Su_String 
           From inv_Item_Masters_VA           
           Order By Item_Number
          )
 Loop
   IF i.Picturename is null then
     Ispicture := 'N';
    Else
     Ispicture := 'Y';
    End if;
    IsNewproduct := 'N';
   InSpOffer := 'N';
     If Trunc(Sysdate) Between Nvl(i.FlagInDateFrom,Trunc(Sysdate))
                  and Nvl(i.FlagInDateTo,Trunc(Sysdate)) and i.FlagInWebExport = 'Y' Then 
       InSpOffer := 'Y';
     End IF;
  v_Stock   := floor(i.QtyInStock/i.Derived_SalesUnit);
  v_PrimaryBarcode := Inv_Pkg.Get_ItemBarcode('PRIMARY',i.Item_Id);
  v_ItemString :=  i.RecordStatus||p_Delimiter||To_char(i.item_id)||p_Delimiter||i.short_desc||p_Delimiter||
                 i.item_name||p_Delimiter||i.item_number||p_Delimiter||i.IIC_Category_Id||p_Delimiter||i.IISC_Sub_Category_Id||p_Delimiter;

  v_String := v_ItemString||i.Su_String||Ispicture||p_Delimiter||i.picturename||p_Delimiter||IsNewproduct||p_Delimiter
                           ||InSpOffer||p_Delimiter||i.taxrate||p_Delimiter||'1'||p_Delimiter||SpOfferTExt||p_Delimiter||i.Unit_Weight||p_Delimiter||
          i.Unit_Length||p_Delimiter||i.Unit_Height||p_Delimiter||i.Unit_Volume||p_Delimiter||
          i.Case_Length||p_Delimiter||i.Case_Height||p_Delimiter||i.Case_Volume||p_Delimiter||i.Net_Ingredient||p_Delimiter||'1'
          ||p_Delimiter||v_Stock||p_Delimiter||i.Unit_Weight||p_Delimiter||i.Case_Weight||p_Delimiter||i.picturename1||p_Delimiter
          ||i.picturename2||p_Delimiter||i.picturename3||p_Delimiter||i.TechNicalSpecs;

  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End Loop;


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Procedure Export_ItemTemplate02(p_Delimiter In Varchar2 Default ',',
                              p_ForWhom   In Varchar2 Default Null,
                              p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                              p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup In Varchar2 Default Null,
                              p_Hint       In Varchar2 Default Null,
                              p_MultiGroup In Varchar2 Default 'Y',
                              p_InStockOnly  In Varchar2 Default 'Y' )
IS
vDelimiter 		Varchar2(10);
vFileType  		Utility_Pkg.FileType;
vString    		Varchar2(20000);
vHeader    		varchar2(4000);
v_String  		Varchar2(4000);
v_Stock 		Number(10);
v_UnitSP 		Number;
v_PrimaryBarcode 	Varchar2(100);
v_Picturename 		Varchar2(400);
 Ispicture       	Varchar2(1) := 'N';
 IsNewProduct    	Varchar2(1) := 'A';
 InSpOffer       	Varchar2(1) := 'N';
 SpOfferText     	Varchar2(400);
v_ItemString      	Varchar2(4000);
vSuLoopCtr      	Number := 6;
vSuString       	Varchar2(4000);
vRetailPrice		Number;
vSuUnitSP               number;
v_section1  		Varchar2(4000);
v_section2  		Varchar2(4000);
v_section3  		Varchar2(4000);
vColumnList             Varchar2(4000);
vHeaderList             Varchar2(4000);
vfirstline                Varchar2(4000);
vlastline                 Varchar2(4000);
Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
Dbms_Output.put_Line('File Opened:');
vColumnList 	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'BODY');
vHeaderList 	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'HEADER');
vfirstline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'FIRSTLINE');
vlastline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'LASTLINE');
if vFirstLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vFirstLine);
End If; 
  v_String := 'StockID'||p_Delimiter
               ||'ItemNumber'||p_Delimiter
               ||'CategoryID'||p_Delimiter
               ||'CategoryName'||p_Delimiter
               ||'Sub CategoryID'||p_Delimiter
               ||'Sub CategoryName'||p_Delimiter
               ||'Categorycode'||p_Delimiter
               ||'SubCategorycode'||p_Delimiter
               ||'SupplierProductCode'||p_Delimiter
               ||'PrimaryBarcode'||p_Delimiter
               ||'ShortDesc'||p_Delimiter
               ||'ItemName'||p_Delimiter
               ||'Brand'||p_Delimiter
               ||'RecordStatus'||p_Delimiter
               ||'RetailPrice'||p_Delimiter
               ||'Su1Name'||p_Delimiter||'SU1'||p_Delimiter||'SU1SP1'||p_Delimiter||'SU1UnitSP'||p_Delimiter
               ||'Su2Name'||p_Delimiter||'SU2'||p_Delimiter||'SU2SP1'||p_Delimiter||'SU2UnitSP'||p_Delimiter
               ||'Su3Name'||p_Delimiter||'SU3'||p_Delimiter||'SU3SP1'||p_Delimiter||'SU3UnitSP'||p_Delimiter
               ||'Su4Name'||p_Delimiter||'SU4'||p_Delimiter||'SU4SP1'||p_Delimiter||'SU4UnitSP'||p_Delimiter
               ||'Su5Name'||p_Delimiter||'SU5'||p_Delimiter||'SU5SP1'||p_Delimiter||'SU5UnitSP'||p_Delimiter
               ||'Picture?'||p_Delimiter
               ||'Picturename'||p_Delimiter
               ||'In SP OFFER'||p_Delimiter
               ||'TAx Code'||P_Delimiter
               ||'Tax Rate'||P_Delimiter
               ||'Tax Type'||P_Delimiter
               ||'Constant'||p_Delimiter
               ||'SP Offer Text'||p_Delimiter
               ||'Unit Weight'||p_Delimiter
               ||'In Stock'||p_Delimiter
               ||'Unit Weight'||p_Delimiter
               ||'Comment'||p_Delimiter
               ||'SupplierNAme'||p_Delimiter
               ||'PictureName1'||p_Delimiter
               ||'PictureName2'||p_Delimiter
               ||'PictureName3'||p_Delimiter
               ||'TechnicalSpecs'||p_Delimiter
               ||'Notes1'||p_Delimiter
               ||'Notes2'||p_Delimiter
               ||'Notes3'||p_Delimiter
               ||'Notes4'||p_Delimiter
               ||'Notes5'||p_Delimiter
               ||'HintName'||p_Delimiter||'SlNo'||p_Delimiter||'DateFrom'||p_Delimiter||'DateTo'||p_Delimiter
               ||'Active'||p_Delimiter||'Attribute1'||p_Delimiter||'Attribute2'||p_Delimiter
               ||'Demo Video'||p_Delimiter 
               ||'Misc/ItemSpec'||p_Delimiter -- at,
                  ||'Instruction'||p_Delimiter -- at,
                  ||'Style'||p_Delimiter -- at,
                  ||'Fitting'||p_Delimiter -- at,
                  ||'Whose For'||p_Delimiter -- at,
                  ||'Warranty'||p_Delimiter -- at,
                  ||'Specs File'||p_Delimiter -- at, 
                  ||'Key Words'||p_Delimiter -- at, 
               ||SFN_AUTOSEQ('EU WARN',9,p_DElimiter)
               ||'Price Zero'||p_Delimiter
               ||'BIN'||p_Delimiter;
    if vHeaderList is not null Then 
       v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vHeaderList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'HEADER');
    End If; 
 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
For i In (select ImpExp_Pkg.RecordStatus(i.Record_Status) RecordStatus,i.Item_ID,i.Item_Number,i.item_name,i.short_desc,
                 i.IISC_Sub_Category_Id, i.IIC_Category_Id,i.Delete_Flag,
                 i.Picturename,i.PictureType,i.Taxrate, 
                 i.FlagInWebExport,i.FlagInDateFrom,i.FlagInDateTo,
                 i.net_Unit_Weight unit_Weight,i.Unit_Length,i.Unit_Width,i.Unit_Height,i.Unit_Volume,
                 i.net_Case_Weight case_weight,i.Case_Length,i.Case_Height,i.Case_Width,i.Case_Volume,
                 i.net_ingredient,Nvl(x.Sales_Unit,1) Derived_SalesUnit,
                 ItemStatus_Pkg.GetQtyINStock(i.Item_Id,i.BU_ID) QtyInStock,
                 Utility_Pkg.ReturnInitials(i.Supplier_Name) Supplier_Name,
                 i.Category_name,i.Category_code,i.Sub_Category_Name,i.Sub_category_Code,
                 i.Customer_Notes1, i.Customer_Notes2, i.Customer_Notes3, 
                 i.Supplier_Notes1, i.Supplier_Notes2, i.Supplier_Notes3,
                 i.Supplier_Product_Code,i.Manufacturer,i.Item_Comment,
                 i.Picturename1,i.PictureName2,i.PictureName3,
                 nvl(i.External_Reference,To_Char(i.Item_Id)) External_Reference,
                 Decode(i.picturename,null,'N','Y') PicturePresent,                
                 SFN_REMOVESPECIALCHARS(i.Customer_Notes1) Notes1,
                 SFN_REMOVESPECIALCHARS(i.Customer_Notes2) Notes2,
                 SFN_REMOVESPECIALCHARS(i.Customer_Notes3) Notes3,
                 SFN_REMOVESPECIALCHARS(i.Supplier_Notes1) Notes4,
                 SFN_REMOVESPECIALCHARS(i.Supplier_Notes2) Notes5,
                 i.Tax_Code,
                 Itembatch_Pkg.Get_BatchWebHint(i.item_Id,p_Delimiter,p_ForWhom) Batch_Hint,
                 Decode(ITEMBATCH_Pkg.HAS_SPOFFER(i.item_Id),0,'N','Y') InSpOffer ,
                 i.gross_unit_Weight,   
             c.HOST_IMAGE_PATH2||Demo_Video_File  DemoVideoFile,
          '"'||SFN_REMOVESPECIALCHARS1(key_words)||'"' key_words,
           '"'||SFN_REMOVESPECIALCHARS1(ITEM_SPECIFICATIONS)||'"' Item_Specifications,
          '"'||SFN_REMOVESPECIALCHARS1(Technical_Specs)||'"' Technical_Specs,
          '"'||SFN_REMOVESPECIALCHARS1(INSTRUNCTION)||'"' Instrunction,
          '"'||SFN_REMOVESPECIALCHARS1(Item_Style)||'"' Item_Style,
          '"'||SFN_REMOVESPECIALCHARS1(Item_Fitting)||'"' Item_fitting,
          '"'||SFN_REMOVESPECIALCHARS1(Whose_for)||'"' Whose_for,
          Warranty_Period Warranty_Period,
             c.HOST_IMAGE_PATH2||Technical_Specs_File  TechnicalSpecsFile,
             i.Unit_Cp, Inv_Pkg.Get_SuBin(i.Item_ID) Bin_Identifier
           From   inv_itemsCantoWWW_v i,  AR_cust_Item_Uploads x, ar_customers c 
           Where  x.Customer_Id = c.Customer_ID
           And    x.Upload_Item = 'Y'
           And    i.Item_Id = x.Item_ID
           And    x.upload_Status in ('NEW','RELEASED')
           And    c.Customer_Number = p_ForWhom
           Order By Item_Number
           )
 Loop
  if Nvl(P_InstockOnly,'N') = 'Y' Then
     if nvl(i.qtyinstock,0) <=0   then
           goto nothing;
     end if;
  End If;

Dbms_Output.put_Line('inside loop ------:');
   IF i.Picturename is null then
     Ispicture := 'N';
    Else
     Ispicture := 'Y';
    End if;
    IsNewproduct := 'N';
   InSpOffer := i.InSpOffer;
     If Trunc(Sysdate) Between Nvl(i.FlagInDateFrom,Trunc(Sysdate))
                  and Nvl(i.FlagInDateTo,Trunc(Sysdate)) and i.FlagInWebExport = 'Y' Then 
       InSpOffer := 'Y';
     End IF;
    if (i.Derived_SalesUnit = 0 ) Then 
       i.Derived_SalesUnit := 1;
    End If; 
  v_Stock   := floor(i.QtyInStock/i.Derived_SalesUnit);
  v_PrimaryBarcode := Inv_Pkg.Get_ItemBarcode('PRIMARY',i.Item_Id);
 vSuLoopCtr := 0;
   vSuString  := Null;
   vRetailPrice := 0;
   For SalPrice in (Select Iim_Item_Id,Price_Exltax,Markup,Price_Inctax,Update_Source,
		           Attribute2,Attribute1,Last_Updated_By,Record_Status,Last_Update_Date,
			   Print_In_Pricelist,Create_Type,Creation_Date,Created_By,Delete_Flag,
			   Bu_Id,Su_Number,Print_In_Directory,Sales_Unit,Item_Sub_Location_Id,
			   Su_Name,Su_Id,Uom_Id,Bin_Identifier,Price_Pkg.Get_SUSP(IIM_ITEM_ID,SU_ID,1) SU_SP1                          
                      From Inv_Item_Sales_Units_V
                      Where IIM_ITEM_ID = i.Item_ID
                     order by Sales_Unit
                   )
   Loop
    if vSuLoopCtr = 0 then 
       VRetailPrice := SalPrice.Price_IncTax;
    End If; 
    VSuUnitSP := round(SalPrice.Su_Sp1/SalPrice.Sales_Unit);
    vSuString := vSuString||SalPrice.Su_Name||p_Delimiter||SalPrice.Sales_Unit||p_Delimiter||SalPrice.SU_SP1||p_Delimiter||vSuUnitSp||p_Delimiter;
    vSuLoopCtr := VSuLoopCtr + 1;
   End Loop;
   
   for sufillin in vSuLoopCtr..4 
   Loop
    vSuString := vSuString||''||p_Delimiter||''||p_Delimiter||''||p_Delimiter||''||p_Delimiter;
   End Loop;
   vSuString := substr(Ltrim(Rtrim(vSuString)),1,length(vSuString)-1);
   v_Section1 :=  i.External_Reference||p_Delimiter
               ||i.item_number||p_Delimiter;
   v_Section2 := i.IIC_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.CateGory_name)||p_Delimiter
               ||i.IISC_SUB_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.Sub_Category_name)||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.Category_code)||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.Sub_category_Code)||p_Delimiter;
   v_Section3 := i.Supplier_Product_Code||p_Delimiter
               ||v_PrimaryBarcode||p_Delimiter
               ||i.Short_DESC||p_Delimiter
               ||i.Item_Name||p_Delimiter
               ||i.Manufacturer||p_Delimiter
               ||i.RecordStatus||p_Delimiter
               ||vRetailPrice||p_Delimiter
               ||vSUString||p_Delimiter
               ||i.PicturePresent||p_Delimiter
               ||i.Picturename||p_Delimiter
               ||i.InSpOffer||p_Delimiter
               ||i.Tax_Code||P_Delimiter
               ||i.TaxRate||P_Delimiter
               ||'VAT'||P_Delimiter
               ||'1'||p_Delimiter
               ||SpOfferTExt||p_Delimiter
               ||i.Unit_Weight||p_Delimiter
               ||v_Stock||p_Delimiter
               ||i.Gross_unit_Weight||p_Delimiter
               ||SFN_REMOVESPECIALCHARS(i.item_Comment)||p_Delimiter
               ||i.Supplier_name||p_Delimiter
               ||i.picturename1||p_Delimiter
               ||i.picturename2||p_Delimiter
               ||i.picturename3||p_Delimiter
               ||i.TechNical_Specs||p_Delimiter
               ||i.Notes1||p_Delimiter
               ||i.Notes2||p_Delimiter
               ||i.Notes3||p_Delimiter
               ||i.Notes4||p_Delimiter
               ||i.Notes5||p_Delimiter
               ||i.Batch_hint||p_Delimiter
               ||i.DemoVideoFile||p_Delimiter 
               ||i.Item_Specifications||p_Delimiter -- at,
               ||i.Instrunction||p_Delimiter -- at,
               ||i.Item_Style||p_Delimiter -- at,
               ||i.Item_Fitting||p_Delimiter -- at,
               ||i.Whose_For||p_Delimiter -- at,
               ||i.Warranty_Period||p_Delimiter -- at,
               ||i.TechnicalSpecsFile||p_Delimiter -- at, 
               ||i.Key_Words||p_Delimiter -- at, 
               ||SFN_REMOVESPECIALCHARS1(Inv02_Pkg.Get_ItemExtras('WARNINGS',i.Item_ID,9,p_Delimiter),'01')
               ||i.Unit_cp||p_Delimiter
               ||i.Bin_Identifier||p_Delimiter;
  v_String := v_Section1||V_Section2||v_Section3;
  
    if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
     End If; 

  Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  if p_MultiGroup = 'Y' Then 
    For mc in (select im.Record_Status,im.Update_Source,im.Delete_Flag,im.Bu_Id,
                      im.Created_By,im.Creation_Date,im.Last_Updated_By,im.Last_Update_Date,
                     im.User_Category_Desc,im.Sub_Category_Id,im.Category_Id,im.Item_Id,
                     im.Multi_Category_Id,
                     c.Category_name, S.Sub_Category_Name,c.Category_code,s.Sub_category_Code
               From INV_ITEM_MULTI_CATEGORIES im,Inv_item_Categories c, Inv_item_Sub_Categories s
               Where im.Item_ID = i.Item_ID
               And   im.Category_Id = c.Category_Id
               And   im.Sub_Category_Id = s.Sub_Category_ID
              ) 
    Loop
    if mc.Sub_Category_ID <> i.IISC_Sub_Category_Id 
      then 
       v_Section2 := mc.CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(mc.CateGory_name)||p_Delimiter
               ||mc.SUB_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(mc.Sub_Category_name)||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(mc.Category_code)||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(mc.Sub_category_Code)||p_Delimiter;

      v_String := v_Section1||V_Section2||v_Section3;
     Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
   
    if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
    End IF; 
      Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
    End If;
  End Loop;
  End If; -- Multi Group 

  <<nothing>>
     null;
 End Loop;

if vLastLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vLastLine);
End If; 

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SqlErrm);
Dbms_Output.put_Line('ERROR:'||SqlErrm);
Utility_Pkg.closeFile(vFileType);

End;
-----------------------------------------------------------------
Function FormatDate(p_Date In Date,
                    p_Format in Varchar2 Default 'DD/MM/YYYY')
 Return Varchar2
is 
Begin 
if p_Date is Null or p_Format is Null Then Return(p_Date); End If;
 Return(To_Char(p_Date,p_Format));
Exception When Others then Return(p_Date);
End;
-------------------------------------------------------------------
---- ItemExport
Procedure Export_ItemTemplate03(p_Delimiter In Varchar2 Default ',',
                              p_ForWhom   In Varchar2 Default Null,
                              p_FileName  In Varchar2 Default 'WEBSTOCK.txt',
                              p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup In Varchar2 Default Null,
                              p_Hint       In Varchar2 Default Null,
                              p_MultiGroup In Varchar2 Default 'Y',
                              p_InStockOnly  In Varchar2 Default 'N',
			      p_FilterCriteria In Varchar2 Default Null,
			      p_Datasource     In varchar2 default null,
                              p_Substitute  In Varchar2 Default Null,
			      p_IncludeBom	In Varchar2 Default 'Y',
			   p_File0Header In Varchar2 Default Null,
			   p_File0Columns In Varchar2 Default Null,
			   p_File1	In Varchar2 Default Null,
			   p_File1Header In Varchar2 Default Null,
			   p_File1Columns In Varchar2 Default Null,
			   p_File2	In Varchar2 Default Null,
			   p_File2Header In Varchar2 Default Null,
			   p_File2Columns In Varchar2 Default Null,
			   p_File3	In Varchar2 Default Null,
			   p_File3Header In Varchar2 Default Null,
			   p_File3Columns In Varchar2 Default Null,
			   p_File4	In Varchar2 Default Null,
			   p_File4Header In Varchar2 Default Null,
			   p_File4Columns In Varchar2 Default Null,
			   p_File5	In Varchar2 Default Null,
			   p_File5Header In Varchar2 Default Null,
			   p_File5Columns In Varchar2 Default Null ,
			   p_BatchID	  In Number Default Null,
			   p_ApplySUFilter In Number Default  0,
                           p_Language       In varchar2 Default 'NULL',
                           p_currency      In Varchar2 Default 'NULL',
                           p_country      In Varchar2 Default 'NULL',
	           p_Stage	 In Varchar2 Default 'NO',
		   p_outdelimiter  In Varchar2 Default ',',
		   p_Outformat	   In Varchar2 Default null,
		   p_MinQty	   In Number Default .10)
IS
 
 
vDelimiter 		Varchar2(10);
vFileType  		Utility_Pkg.FileType;
vFileType1  		Utility_Pkg.FileType;
vFileType2  		Utility_Pkg.FileType;
vFileType3  		Utility_Pkg.FileType;
vFileType4  		Utility_Pkg.FileType;
vFileType5  		Utility_Pkg.FileType;
vString    		Varchar2(20000);
vHeader    		varchar2(20000);
v_String  		Varchar2(20000);
v_StringOriginal	Varchar2(20000);
v_Stock 		Number(10);
v_UnitSP 		Number;
v_PrimaryBarcode 	Varchar2(100);
v_Picturename 		Varchar2(400);
 Ispicture       	Varchar2(1) := 'N';
 IsNewProduct    	Varchar2(1) := 'A';
 InSpOffer       	Varchar2(1) := 'N';
 SpOfferText     	Varchar2(400);
v_ItemString      	Varchar2(20000);
vSuLoopCtr      	Number := 6;
vSuString       	Varchar2(20000);
vRetailPrice		Number;
vSuUnitSP               number;
v_section1  		Varchar2(20000);
v_section2  		Varchar2(20000);
v_section3  		Varchar2(20000);
vColumnList             Varchar2(20000);
vHeaderList             Varchar2(20000);
vfirstline                Varchar2(20000);
vlastline                 Varchar2(20000);
vBarcodeQty	        Number(10);
vSu1S5                  Varchar2(400);
vDefCurrency            Varchar2(100);
vGoogleStatus           Varchar2(400) := 'preorder';
vdatasource 	        varchar2(100);
vCountryCode            Varchar2(10);
vItemFreight           Inv_Item_Freights%RowType;
i 		       Exp_ItemTemplate_03_V%RowType;
i_Prev		       Exp_ItemTemplate_03_V%RowType;
v_Step			Varchar2(100);
v_ItemName 		Varchar2(300);
v_Dummy			Varchar2(400);
v_ExchangeRate		Number := 1;
v_CurrencyCode	        Varchar2(100);
v_LanguageCode	        Varchar2(100);
v_VariationCode         Varchar2(30);
v_ParamCountry          Varchar2(20);
v_PrevItemNumber        Varchar2(100);
v_VariationGroup        Varchar2(1000);
v_slNo		  Number(10) := 0;
vExpHeaderID     number;
  v_StatusText 		Varchar2(4000);
v_BatchId		Number;
v_ReduceLayawayQty      Varchar2(10)  := 'N';
v_IncludeLayawayDays     Number(2)  := 2;
v_InvoiceQty  Number := 0;

Cursor c_Items IS
 Select e.*
  From   Exp_ItemTemplate_03_V e
  Where  e.Item_Id in (Select xx.Item_Id 
                       From  Inv_Item_Batch_Lines xx
                       Where xx.Batch_ID = v_BatchID)                                    
  And   (p_ApplySUFilter = 0 or (e.Sales_Unit <= Greatest(e.QtyInStock,e.Max_Qty,1)))
  And   v_BatchId is Not Null
  UNION
  Select e.*
  From   Exp_ItemTemplate_03_V e
  Where  v_BatchId is Null 
  And   (p_ApplySUFilter = 0 or (e.Sales_Unit <= Greatest(e.QtyInStock,e.Max_Qty,1)))
  Order By 1,2,3;
----------------------------------------
Function fn_OutString(lp_string In Varchar2) Return Varchar2 Is
 Retval   Varchar2(32676);
Begin
   Retval := lp_string;
   if nvl(instr(RetVal,'¬'),0) > 0 Then 
      Retval  := Replace(RetVal,'"');
      Retval  := '"'||Replace(Retval,p_Delimiter,'"'||p_Delimiter||'"')||'"';
      Retval := Replace(Retval,'¬',',');
   End If; 
 if p_outDelimiter <> ',' Then 
         RetVal := Replace(Lp_String,p_Delimiter,p_OutDelimiter);
         Retval := Replace(Retval,'¬',',');
  End If; 
if p_outformat is null then 
   return(Retval);
end if;
 if p_outformat = 'UPPER' then 
    Retval := Upper(Retval);
 elsif p_outformat = 'LOWER' then 
    Retval := lower(Retval);
 elsif p_outformat = 'INITCAP' then 
    Retval := initcap(Retval);
 End If;
 Return(Retval);

Exception When Others Then Return(Retval);
 
End;

-------------------------------------------------------

 Procedure Write_to_File(lp_File		In Varchar2,
			 lp_Fileid 		In Utility_Pkg.FileType,
		         lp_ActualString 	In Varchar2,
                         lp_InString 		In Varchar2,
		         lp_Hint		In Varchar2 )
 IS
  lp_String Varchar2(20000);
 begin 
 
   
  
 if lp_File is not null   Then 
       lp_String := Utility02_Pkg.CompileColumnList(p_ActualString => lp_ActualString,
                                                 p_ColumnList   => lp_InString ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  lp_Hint);
      
      
      if lp_String is not Null then 
        if  lp_Hint <> 'HEADER' 
             and p_Hint in ('VARIATION','VARIATIONP') and i.www_ParentSku is null  then 
          null;
        elsif  lp_Hint = 'HEADER' then  Utility_Pkg.Write(pfileId => lp_FileID,Wstring => fn_OutString(lp_String),pformat=>p_outformat); 
         elsif 1=1 or  v_PrimaryBarcode is Not Null   then 
             Utility_Pkg.Write(pfileId => lp_FileID,Wstring => fn_OutString(lp_String),pformat=>p_outformat);
        End If; 
      
      End If;
 End If; 
 End;
 
-------------------------------------------------
 Function lpr_xrate(p_Price in Number)
 Return Number
 Is
 Begin
if v_ExchangeRate = 0 Then Return(p_Price); End If;
  Return(Round(p_Price*v_ExchangeRate,2));

 Exception when Others Then Return(p_Price);
End;

--------------------------------------------------
Procedure Get_ItemSize is
   v_Qty Number;
 begin
   
    begin
     v_Qty   := i.www_Package_Quantity;
    Exception When Others  then v_Qty := null;
    End;
   if v_Qty is Not Null  Then 
    i.www_Package_Quantity := to_Char(v_Qty * i.sales_Unit);
    i.Item_Size  := i.www_Package_Quantity ||' '||nvl(i.Item_Style,'Units');
   Else    
     i.Item_Size               :=     i.Sales_Unit||' '||i.Uom_Short_Desc;
   End If;
End;
-------------------------------------------------

Begin
If Nvl(p_BatchId,0) = 0 Then v_BatchId := Null; Else v_BatchId := p_BatchId; End If;

v_VariationCode := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'WEB_SITE_DEFAULTS',
                              p_LookupCode => 'VARIATION',
                              p_WhichAttribute => 1),'AUTO');

v_ReduceLayawayQty  := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'ITEM_EXPORT_ATTRIBUTES',
                              p_LookupCode => 'REDUCE_LAYAWAY_QTY',
                              p_WhichAttribute => 1),'N');

v_IncludeLayawayDays  := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'ITEM_EXPORT_ATTRIBUTES',
                              p_LookupCode => 'INCLUDE_LAYAWAY_DAYS',
                              p_WhichAttribute => 1),'2');

vCountryCode   := Cmn_Common_Pkg.Get_SysOptionVal('COUNTRY_CODE');
vDefCurrency := Price_Pkg.Get_DefaultCurrency;
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
---- Additional Files
 if p_File1 is not Null then 
    vFileType1 := Utility_Pkg.OpenFile(pfile => p_file1,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 End If;
 if p_File2 is not Null then 
    vFileType2 := Utility_Pkg.OpenFile(pfile => p_file2,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 End If;
 if p_File3 is not Null then 
    vFileType3 := Utility_Pkg.OpenFile(pfile => p_file3,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 End If;
 if p_File4 is not Null then 
    vFileType4 := Utility_Pkg.OpenFile(pfile => p_file4,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 End If;
 if p_File5 is not Null then 
    vFileType5 := Utility_Pkg.OpenFile(pfile => p_file5,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
 End If;

VdataSource := Nvl(p_DataSource,Cmn_Common_Pkg.GetTradingname);
Dbms_Output.put_Line('File Opened:');

vColumnList 	:= nvl(p_File0Columns,ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'BODY'));
vHeaderList 	:= nvl(p_File0Header,ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'HEADER'));
vfirstline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'FIRSTLINE');
vlastline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'LASTLINE');

if vFirstLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => fn_Outstring(vFirstLine),pformat=>p_outformat);
End If; 
Session_Pkg.SetCustomerNumber(p_ForWhom);
Session_Pkg.SetDelimiter(p_Delimiter);
Session_Pkg.SetHint(p_Hint);
Session_Pkg.SetContextValue('SUBSTITUTE',P_SUBSTITUTE);
Session_Pkg.SetContextValue('FILTERCRITERIA',P_FILTERCRITERIA);
Session_Pkg.SetContextValue('INCLUDEBOM',P_INCLUDEBOM);
v_LanguageCode := Replace(p_Language,'NULL');
v_CurrencyCode := Replace(p_Currency,'NULL');
v_ParamCountry := Replace(p_Country,'NULL');
begin 
Select Session_Pkg.SetgetContextValue('CURRENCY_CODE',nvl(v_CurrencyCode,Currency_code))
      ,Session_Pkg.SetgetContextValue('EXCHANGE_RATE',Price_Pkg.Get_XchangeRate(nvl(v_CurrencyCode,Currency_Code)))
      ,Session_Pkg.SetgetContextValue('LANGUAGE_CODE',Nvl(nvl(v_LanguageCode,Language_Code),'ENG')),
       Session_Pkg.SetgetContextValue('COUNTRY_CODE',Nvl(v_ParamCountry,nvl(BillTo_Country_Code,vCountryCode))),
      nvl(v_BatchId,ITEM_BATCH_ID)
Into  v_CurrencyCode,v_ExchangeRate,v_LanguageCode,v_ParamCountry,v_BatchID
From  Ar_Customers
Where Customer_Number = p_ForWhom;

Exception when Others then Null;
End;

Session_Pkg.SetContextValue('ITEMBATCHID',V_BATCHID);

 Select String1||String2||String3||String4||String5
 Into  v_String
 from Exp_ItemTemplate_H_03_V;
 v_StringOriginal := v_String;

 if vHeaderList is not null Then 
       v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   	=> vHeaderList ,
                                                 p_Delimiter   	=> p_Delimiter,
                                                 p_Hint        	=>  'HEADER');
  End If; 
   
 Utility_Pkg.Write(pfileId => vfileType,Wstring => fn_OutString(v_String),pformat=>p_outformat);
 if p_Stage = 'YES' then 
     vExpHeaderID := ImpExp2_Pkg.pop_export_header(p_ExportName 	=> p_ForWhom||to_Char(Sysdate,'YYMMDDHH24MISS'),
                                                                                        p_SourceName		=>p_ForWhom||'-'||v_LanguageCode||'-'||nvl(v_BatchID,0),
					        p_ActionType   	=> 'APPEND');
  

     ImpExp2_Pkg.Pop_Export_Lines(p_ExportHeaderID => vExpHeaderID,
                                                         p_Data                   => v_String,
                                                         p_slNo                     => 0,
			         p_SourceID_1	         => 0,
                                                         p_DataType            => 'COLUMN');
 End If; 

   Write_to_File(lp_File 	=> p_File1,
		 lp_Fileid 	=> vFiletype1,
		 lp_ActualString =>  v_StringOriginal,
                 	lp_InString 	 => p_File1Header,
		 lp_Hint	=> 'HEADER');

   Write_to_File(lp_File 	=> p_File2,
		 lp_Fileid 	=> vFiletype2,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File2Header,
		 lp_Hint	=> 'HEADER');

   Write_to_File(lp_File 	=> p_File3,
		 lp_Fileid 	=> vFiletype3,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File3Header,
		 lp_Hint	=> 'HEADER');

   Write_to_File(lp_File 	=> p_File4,
		 lp_Fileid 	=> vFiletype4,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File4Header,
		 lp_Hint	=> 'HEADER');

   Write_to_File(lp_File 	=> p_File5,
		 lp_Fileid 	=> vFiletype5,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File5Header,
		 lp_Hint	=> 'HEADER');


  v_slNo := 1;
OPEN c_Items;
LOOP 
 Fetch c_Items Into i;
 exit When not c_Items%Found;
 i_Prev := i;   -- Copy the Values into another cursor;
  
  If Nvl(v_LanguageCode,'ENG')  <> 'ENG'  then 
    i.Item_Name := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'ITEM_NAME',i.Item_Name);
   -- i.Long_Desc := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'LONG_DESC',i.Long_Desc);
    i.Item_Specifications := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'ITEM_SPECIFICATIONS',i.Item_Specifications);
    i.ITEM_Comment := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'ITEM_COMMENT',i.Item_Comment);
    i.Key_Words   := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'KEY_WORDS',i.Key_Words);
    i.Technical_specs  := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'TECHNICAL_SPECS',i.Technical_Specs);
    i.Notes1 := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'CUSTOMER_NOTES1',i.Notes1);
    i.Notes2 := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'CUSTOMER_NOTES2',i.Notes2);
    i.Notes3 := Inv02_Pkg.Get_LanguageText(i.Item_Id,v_LanguageCode,'CUSTOMER_NOTES3',i.Notes3);
    i.Category_Name := Inv02_Pkg.Get_LanguageText(i.IIC_Category_Id,v_LanguageCode,'CATEGORY_NAME',i.Category_Name,'INV_ITEM_CATEGORIES');
    i.Sub_Category_Name := Inv02_Pkg.Get_LanguageText(i.IISC_SUB_CATEGORY_ID,v_LanguageCode,'SUB_CATEGORY_NAME',i.Sub_Category_Name,'INV_ITEM_SUB_CATEGORIES');
    i.ITEM_COLOUR := Inv02_Pkg.Get_LanguageText(i.Item_ID,v_LanguageCode,'ITEM_COLOUR',i.Item_Colour,'INV_ITEM_MASTERS');
    i.ITEM_Style := Inv02_Pkg.Get_LanguageText(i.Item_ID,v_LanguageCode,'ITEM_STYLE',i.Item_STYLE,'INV_ITEM_MASTERS');
    i.ITEM_SIZE  := NVL(Inv02_Pkg.Get_LanguageText(i.Item_ID,v_LanguageCode,'ITEM_SIZE',i.Item_SIZE,'INV_ITEM_MASTERS'),i.ITEM_SIZE);
    i.Uom_Short_Desc := nvl(Inv02_Pkg.Get_LanguageText(i.UOM_ID,v_LanguageCode,'UOM_SHORT_DESC',i.Uom_Short_Desc,'CMN_UNIT_OF_MEASUREMENTS'),i.Uom_Short_Desc);
   -- i.Su_Name := i.Item_Name||' X '||i.Uom_Short_Desc||'-'||i.Sales_Unit;

  End If;
 i.Su_Name := Substr(i.Item_Name,1,80)||' X '|| Inv02_Pkg.Get_itemSize(i.Sales_Unit,i.www_Package_Quantity,i.Item_Style,i.Uom_Short_Desc);

 v_ItemName  := i.Item_Name;

   --Utility_Pkg.Write(pfileId => vFiletype,Wstring => 'Step1:'||i.Item_name);
 for n in 1..1 
  Loop
  

  -- Utility_Pkg.Write(pfileId => vFiletype,Wstring => 'Step2:'||i.Item_name||';'||i.Su_Publish);

  if i.Item_Batch_Hint = 0 Then goto nothing; End If;  -- If batch exlcluded then do not export items 
  if nvl( i.Su_Publish,'Y') = 'N' then goto nothing; End If; 
  
 
   v_Step := '1';
        Get_ItemSize;
   v_Step := '2';
 
   if i.BomCount >= 1 and i.Sales_Unit > 1    then   
     -- i.Item_Name 		:= i.Su_Name;
      v_ItemName      		:= i.Su_Name;      
  --    i.www_parentsku 		:= nvl( i.www_parentsku , i.Parent_Item_Number||'-PAR');
     -- i.Item_Size               :=     i.Sales_Unit||' '||i.Uom_Short_Desc;

      i.www_variation_theme  := 'SIZE';
      i.www_parentage 		:= 'NO';
      i.Supplier_Product_Code   := i.Su_Number;
      i.www_Size_Color  	:= i.Sales_Unit;
      i.PrimaryBarcode		:= Inv_Pkg.Get_ItemBarcode(p_RetType => 'SUSLNOONLY',
                                                          	        p_ItemId   => i.Item_Id ,
                         		                       p_SuId     => i.su_Id,
                         		                       p_SlNo    =>  1);
   End If; 
   If n = 2 Then       
  --    i.www_parentsku 		:= nvl( i.Parent_Item_Number||'-PAR',i.www_parentsku );
    --  i.Item_Size          	:= i.Sales_Unit||' '||i.Uom_Short_Desc;
      Get_ItemSize;
      i.www_variation_theme  	:= 'SIZE';
      i.www_Size_Color  	:= i.Sales_Unit;
      i.www_parentage           := 'YES' ;

   End If;

  If n = 1  and i.Sales_Unit = 1 Then       
      i.www_parentsku 		:= i_prev.www_parentsku;
      i.www_parentage           := i_prev.www_parentage ;
   End If;

   v_Step := '3';
Dbms_Output.put_Line('inside loop ------:');
   IF i.Picturename is null then
     Ispicture := 'N';
    Else
     Ispicture := 'Y';
    End if;
    IsNewproduct := 'N';
   InSpOffer := i.InSpOffer;
     If Trunc(Sysdate) Between Nvl(i.FlagInDateFrom,Trunc(Sysdate))
                  and Nvl(i.FlagInDateTo,Trunc(Sysdate)) and i.FlagInWebExport = 'Y' Then 
       InSpOffer := 'Y';
     End IF;
    if (i.Derived_SalesUnit = 0 ) Then 
       i.Derived_SalesUnit := 1;
    End If; 
begin
-- Reduce Layaway Quantity if Flagged
  if v_ReduceLayawayQty  = 'Y' Then 
    begin
    v_InvoiceQty := 0;
    Select nvl(Qty_Invoiced_Units,0) 
    into   v_InvoiceQty 
    From   Ar_Invoice_Lines
    Where  Invoice_Line_Status = 'NEW'
    And    Invoice_line_Status_date > Sysdate - v_IncludeLayawayDays
    And    Item_ID  = i.Item_ID;
    i.QtyInStock := i.QtyInStock - v_InvoiceQty;
    if i.QtyInStock < 0 then i.QtyInStock := 0; End If;
   Exception When Others Then Null;
   End;
  End If;
  --- Check  minimum Quantity 
  if p_MinQty < 1 Then 
    i.QtyInStock  := i.QtyInStock - ceil(i.QtyInStock*Nvl(p_MinQty,0));
  Else
   i.QtyInStock := i.QtyInStock - Nvl(p_MinQty,0);
  End If;


 
 --  Utility_Pkg.Write(pfileId => vFiletype,Wstring => 'Step3:'||i.Item_name||';'||i.Su_Publish);
  if Nvl(i.Sales_Unit,1)   = 1 Then 
    v_Stock   := floor(i.QtyInStock/i.Derived_SalesUnit);
  Else
    v_Stock   := floor(i.QtyInStock/i.Sales_Unit);
  End If; 
   if v_Stock < 0 Then v_Stock := 0; End If;
Exception When Others then Null;
End;

   v_Step := '4';
  v_PrimaryBarcode := i.PrimaryBarcode;
  vBarcodeQty := Inv_Pkg.Get_BarcodeQty(nvl(v_PrimaryBArcode,i.SU_NUMBER));

 if i.qtyinstock <=0 then i.QtyInStock := 0; End If; 
  if i.qtyinstock <=0  and P_InstockOnly = 'Y' then
     goto nothing;
  end if;
  if i.qtyinstock > 0 then 
     vGoogleStatus := 'in stock';
  elsif i.QtyinStock <=0 And i.Qty_Inorder > 0 then 
      vGoogleStatus := 'available for order';
  else
      vgoogleStatus := 'preorder';
  End If; 
  if i.QtyinStock <=0  and Nvl(i.Max_Qty,0) <= 0 and Nvl(i.Reorder_Qty,0) > 0 Then 
     vBarcodeQty := i.Reorder_Qty;
  End If;

   v_Step := '5';
  Begin
   vItemFreight := Null;
   
   Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> i.Item_Id,
                            p_SuID    		=> i.su_ID,
			    p_DefCountryCode  	=> VcountryCode,
                            p_CountryCode  	=> v_ParamCountry,
			    p_Price1	 	=> vItemFreight.Price1,
			    p_Price2	 	=> vItemFreight.Price2,
			    p_Price3	 	=> vItemFreight.Price3,
			    p_FreightRate  	=> vItemFreight.Freight_Rate,
			    p_ExpediteFlag  	=> i.Web_Expedite_Flag);
  Exception When Others then Null;
 End;
    

   v_Step := '6';
   vSuLoopCtr := 0;
   vSuString  := Null;
   vRetailPrice := 0;
   For SalPrice in (Select Iim_Item_Id,Price_Exltax,Markup,Price_Inctax,Update_Source,
		           Attribute2,Attribute1,Last_Updated_By,Record_Status,Last_Update_Date,
			   Print_In_Pricelist,Create_Type,Creation_Date,Created_By,Delete_Flag,
			   Bu_Id,Su_Number,Print_In_Directory,Sales_Unit,Item_Sub_Location_Id,
			   Substr(Su_Name,1,30) Su_name,Su_Id,Uom_Id,Bin_Identifier,Price_Pkg.Get_SUSP(IIM_ITEM_ID,SU_ID,1) SU_SP1,
                           nvl(vItemFreight.Price1,Web_Price1) Web_Price1,
                           nvl(vItemFreight.Price2,Web_Price2) Web_Price2,
                           nvl(vItemFreight.Price3,Web_Price3) Web_Price3,
                           nvl(vItemFreight.Freight_Rate,Web_Price4) Web_Price4                          
                      From Inv_Item_Sales_Units_V
                      Where IIM_ITEM_ID = i.Item_ID
        --            And   Decode(i.Sales_Unit,1,1,Sales_Unit) =  Decode(i.Sales_Unit,1,1,i.Sales_Unit)
                    And   ( Sales_Unit = i.Sales_Unit  or Sales_Unit = 1)
                     order by Sales_Unit
                   )
   Loop
    if vSuLoopCtr = 0 then 
       VRetailPrice := lpr_Xrate(SalPrice.Price_Exltax);
    End If; 
    VSuUnitSP := lpr_XRate(round(SalPrice.Su_Sp1/SalPrice.Sales_Unit));
    vSuString := vSuString||SalPrice.Su_Name||p_Delimiter||SalPrice.Sales_Unit||p_Delimiter||lpr_xrate(SalPrice.SU_SP1)||p_Delimiter||vSuUnitSp||p_Delimiter
                 ||nvl(lpr_xrate(SalPrice.Web_Price1),0)||p_Delimiter
                 ||nvl(lpr_xrate(SalPrice.Web_Price2),0)||p_Delimiter
                 ||nvl(lpr_xrate(SalPrice.Web_Price3),0)||p_Delimiter
                 ||nvl(lpr_xrate(SalPrice.Web_Price4),0)||p_Delimiter;
vItemFreight.Freight_Rate  := lpr_xrate(SalPrice.Web_Price4);
    vSuLoopCtr := VSuLoopCtr + 1;
   -- if vSuLoopCtr >=4 then exit; End If; 
   exit;
   End Loop;

   v_Step := '7';
   for sufillin in vSuLoopCtr..4 
   Loop
    vSuString := vSuString||''||p_Delimiter||''||p_Delimiter||''||p_Delimiter||''||p_Delimiter
                 ||''||p_Delimiter
                 ||''||p_Delimiter
                 ||''||p_Delimiter
                 ||''||p_Delimiter;
   End Loop;

   v_Step := '8';
   if upper(nvl(i.www_parentage,'child')) = 'PARENT' then 
       v_primarybarcode := Null;
   End If; 
   If nvl(i.www_Parentage,'YES') = 'NO' or p_Hint = 'VARIATIONP'  Then 
    v_VariationGroup := i.ebay_Title;
   else
    v_VariationGroup  := Null;
   End If;

     If p_Hint in ( 'VARIATIONP','VARIATION')  Then 
       if i.Sales_Unit = 1 then 
          i.Item_Number := i.Parent_Item_Number;
      End If;
    End If;
-- i.www_parentsku 		:= nvl( i.Parent_Item_Number||'-PAR',i.www_parentsku );
   vSuString := substr(Ltrim(Rtrim(vSuString)),1,length(vSuString));
   v_Section1 :=  i.item_ID||p_Delimiter
               ||i.item_number||p_Delimiter;
   v_Section2 := i.IIC_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.CateGory_name,p_Substitute)||p_Delimiter
               ||i.IISC_SUB_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.Sub_Category_name,p_Substitute)||p_Delimiter;
   v_Section3 := i.Supplier_Product_Code||p_Delimiter
               ||v_PrimaryBarcode||p_Delimiter
               ||i.Short_DESC||p_Delimiter
               ||v_ItemName||p_Delimiter
               ||i.Manufacturer||p_Delimiter
               ||i.RecordStatus||p_Delimiter
               ||vRetailPrice||p_Delimiter
               ||vSUString
               ||i.PicturePresent||p_Delimiter
               ||i.Picturename||p_Delimiter
               ||i.InSpOffer||p_Delimiter
               ||i.Tax_Code||P_Delimiter
               ||i.TaxRate||P_Delimiter
               ||'VAT'||P_Delimiter
               ||'1'||p_Delimiter
               ||SpOfferTExt||p_Delimiter
               ||round(i.Unit_Weight,2)||p_Delimiter
               ||v_Stock||p_Delimiter
               ||round(i.Gross_unit_Weight,2)||p_Delimiter
               ||SFN_REMOVESPECIALCHARS1(i.item_Comment,p_Substitute)||p_Delimiter
               ||i.Supplier_name||p_Delimiter
               ||i.picturename1||p_Delimiter
               ||i.picturename2||p_Delimiter
               ||i.picturename3||p_Delimiter
               ||i.TechNical_Specs||p_Delimiter
               ||i.Notes1||p_Delimiter
               ||i.Notes2||p_Delimiter
               ||i.Notes3||p_Delimiter
               ||i.Notes4||p_Delimiter
               ||i.Notes5||p_Delimiter
               ||i.Batch_hint||p_Delimiter
               ||i.DemoVideoFile||p_Delimiter 
               ||i.Item_Specifications||p_Delimiter -- at,
               ||i.Instrunction||p_Delimiter -- at,
               ||i.Item_Style||p_Delimiter -- at,
               ||i.Item_Fitting||p_Delimiter -- at,
               ||i.Whose_For||p_Delimiter -- at,
               ||i.Warranty_Period||p_Delimiter -- at,
               ||i.TechnicalSpecsFile||p_Delimiter -- at, 
               ||i.Key_Words||p_Delimiter -- at, 
                  ||i.CategoryPicture||p_Delimiter -- at, 
                  ||i.Category_Code||p_Delimiter -- at, 
                  ||i.CategoryKeywords||p_Delimiter -- at, 
                  ||i.SubCategoryPicture||p_Delimiter -- at, 
                  ||i.Sub_Category_code||p_Delimiter -- at, 
                  ||i.SubCatKeyWords||p_Delimiter -- at, 
                  ||i.Lead_Time||p_Delimiter
                  || i.Saleable||P_Delimiter
                  || i.Purchaseable||P_Delimiter
                  || i.Reservable||P_Delimiter
                  || i.Stockable||P_Delimiter
                  || i.Min_Qty||P_Delimiter
                  || i.Max_Qty||P_Delimiter
                  || i.case_unit||P_Delimiter
                  || i.inner_Qty||P_Delimiter
                  || i.pallet_Qty||P_Delimiter
                  || Round(i.unit_Weight,2)||P_Delimiter
                  || Round(i.Unit_Length,2)||P_Delimiter
                  || Round(i.Unit_Width,2)||P_Delimiter
                  || Round(i.Unit_Height,2)||P_Delimiter
                  || Round(i.Unit_Volume,2)||P_Delimiter
                  ||Round( i.case_weight,2)||P_Delimiter
                  || Round(i.Case_Length,2)||P_Delimiter
                  || Round(i.Case_Height,2)||P_Delimiter
                  || Round(i.Case_Width,2)||P_Delimiter
                  || Round(i.Case_Volume,2)||P_Delimiter
                  || vBarcodeQty||P_Delimiter
                  || i.Bin_Identifier||P_Delimiter
                  || ImpExp_Pkg.FormatDate(i.Creation_Date,i.Date_Format)||P_Delimiter
                  || ImpExp_Pkg.FormatDate(i.Last_Update_Date,i.Date_Format)||P_Delimiter
                  || i.MinSuSps
                  || nvl(v_CurrencyCode,vDefCurrency)||P_Delimiter
                  || i.Item_status||P_Delimiter
                  || i.Min_Pb_Qty||P_Delimiter
                  || i.PriceBreakText||P_Delimiter
                  || i.Active_Flag||P_Delimiter
                  ||i.Item_condition||p_Delimiter
                  ||vGoogleStatus||p_Delimiter
                  || i.www_ItemNumber||P_Delimiter
                  || i.www_Shortdesc||P_Delimiter
                  || i.www_Longdesc||P_Delimiter
                  || i.www_Category||P_Delimiter
                  || i.Web_Expedite_Flag||P_Delimiter                 
                  || i.www_Category_Attributes||P_Delimiter
                  || 'data_format'||p_Delimiter
                  ||'ORATECH'||p_Delimiter
                  || i.www_barcode||P_Delimiter
                  || i.www_parentsku||P_Delimiter
                  || i.www_relationship_type||P_Delimiter
                  || i.www_variation_theme||P_Delimiter
                  || i.www_size_color||P_Delimiter
                  || i.www_size_color_map||P_Delimiter
                  || i.www_parentage||P_Delimiter
                  || i.Item_Size||P_Delimiter
                  || i.Item_Colour||P_Delimiter
                  || i.Brand_Name||P_Delimiter      
                  || i.Freight_Name||P_Delimiter     
                  || lpr_Xrate(i.Unit_CP)||P_Delimiter     
                  || i.Parent_Item_Number||P_Delimiter  
                  || i.Su_Derived||P_Delimiter  
                  || v_ExchangeRate||P_Delimiter  
                  || i.Max_Publish_Qty||P_Delimiter         
                  || i.www_Category_Attribute4||P_Delimiter
                  || i.Majento_Category||p_Delimiter
                  ||i.MultiCat1to5||p_Delimiter   
                  ||i.Reorder_Qty||p_Delimiter  
                  ||i.amazon_node_id||p_Delimiter    
                  ||i.ebay_node_id||p_Delimiter    
                  ||i.play_node_id||p_Delimiter
                  || i.UK_EXP_Freights
                  || i.US_Freights
                  || i.FRA_Freights
                  || i.DEU_Freights
                  || Replace(i.UKS_Freights,',,',',') 
                  || to_char((i.Price_IncTax*1.18)+ (nvl(vItemFreight.Freight_Rate,1)*1.18)) ||p_Delimiter
                  || i.CatSubCat||p_Delimiter
                  || i.All_SubCat||p_Delimiter
                  || i.ebay_title ||p_Delimiter
                  || i.amazon_percent ||p_Delimiter
                  || i.ebay_percent ||p_Delimiter
                  || i.amazon_node_id2 ||p_Delimiter
                  || i.ebay_node_Id2 ||p_Delimiter
                  || nvl(vItemFreight.Freight_Rate,1.00) ||p_Delimiter
                  || i.Parent_Item_Name ||p_Delimiter
                  || v_VariationGroup||p_Delimiter
                  || i.ASIN||p_Delimiter
                  || i.www_Package_Quantity||p_Delimiter
                  || i.Su_Publish||p_Delimiter
                  || i.AimsBrand||p_Delimiter -- 201
                  || i.AimsSeo||p_Delimiter -- 202
                  || i.AimsVat||p_Delimiter -- 203
               ||SFN_REMOVESPECIALCHARS1(Inv02_Pkg.Get_ItemExtras('WARNINGS',i.Item_ID,9,p_Delimiter),p_Substitute);
  v_String := v_Section1||V_Section2||v_Section3;
  
   v_Step := '10';

  -- Utility_Pkg.Write(pfileId => vFiletype,Wstring => 'Step4:'||i.Item_name||';'||i.Su_Publish);
     if i.Filter_Criteria is not null Then  
        If Utility02_Pkg.Filter_Data(
                           p_ActualString 	=> v_String,
                           p_FilterCriteria   	=> i.Filter_Criteria,
                           p_Delimiter    	=> p_Delimiter) = 'Y' 
           Then 
           goto nothing;
        End If;
     End If; 
   v_StringOriginal := v_String;
   v_Step := '11';
    if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
     End If;

   v_Step := '11A';
  Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
 if p_Hint in ( 'VARIATION','VARIATIONP') and i.Www_ParentSku  is null Then 
    Null;
 Else
   if p_Hint = 'VARIATIONP' 
     Then
        if v_PrevItemNumber = i.www_ParentSKU Then
           goto nothing;
        Else
          v_PrevItemNumber := i.www_ParentSku;
        End If;
     if i.www_ParentSku is null Then 
       goto nothing;
     end If;
else
    if v_PrevItemNumber = i.Item_Number Then
           goto nothing;
        Else
          v_PrevItemNumber := i.Item_Number;
        End If;
     if i.item_Number is null Then 
       goto nothing;
     end If;
 End If;
  
   v_Step := '11B';
  if v_PrimaryBarcode is Not Null Then 
     Utility_Pkg.Write(pfileId => vfileType,Wstring => fn_OutString(v_String),pformat=>p_outformat);
  End If; 
     	 if p_Stage = 'YES'  and vExpHeaderID > 0   then
  v_StatusText := Null;

   v_Step := '11C';
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'PRIMARYB',
		                         	    p_Value        		=> v_PrimaryBarcode,
			          	   p_ValueNotToMatch	=> i.Item_Number ,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'CP',
		                         	    p_Value        		=> i.Unit_CP,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'TITLE',
		                         	    p_Value        		=> v_ItemName,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'SPECS',
		                         	    p_Value        		=> i.TechNical_Specs,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'ASIN',
		                         	    p_Expression      		=> i.ASIN,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'WEIGHT',
		                         	    p_Expression      		=> i.Unit_Weight||' is null or '||i.Case_Weight||' is null',
			          	   p_ExpressionMessage	=>'Null' ,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'Dimensions',
		                         	    p_Expression      		=> i.Unit_length||' is null or '||i.unit_height||' is null',
			          	   p_ExpressionMessage	=>'Null' ,
			         	   p_StatusText		=> v_Statustext);

     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'STATUS',
		                         	    p_value		=> i.ITEM_STATUS,
			          	   p_ValueToMatch		=>'ACTIVE',
			         	   p_StatusText		=> v_Statustext);

     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'SIZE',
		                         	    p_value		=> i.ITEM_SIZE,
			         	   p_StatusText		=> v_Statustext);

     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'FREIGHT',
		                         	    p_value		=> vItemFreight.Freight_Rate,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'A:NODE',
		                         	    p_value		=> i.Amazon_Node_ID,
			         	   p_StatusText		=> v_Statustext);
     ImpExp2_Pkg.Validate_Exported_Lines(p_Identifier  		=>'E:NODE',
		                         	    p_value		=> i.Ebay_Node_ID,
			         	   p_StatusText		=> v_Statustext);

   v_Step := '11D';
    		 ImpExp2_Pkg.Pop_Export_Lines(p_ExportHeaderID => vExpHeaderID,
                                                         p_Data                   => v_String,
			         p_SourceID_1	         => i.Item_Id,
			         p_SourceID_2	         => i.SU_Id,
			         p_SourceNumber         => i.Item_Number,
			         p_Order_By1		=> i.www_ParentSku,
			         p_Order_By2		=> i.Item_Number,
			         p_Order_By3		=> i.Sales_Unit,
                                                         p_slNo                     => v_SlNo,
			         p_statusText	         => v_StatusText);
 	End If; 
 v_slNo := v_SlNo + 1;
 End If; 
 
  -- Utility_Pkg.Write(pfileId => vFiletype,Wstring => 'Step5:'||i.Item_name||';'||i.Su_Publish);

   v_Step := '11E';
   Write_to_File(lp_File 	=> p_File1,
		 lp_Fileid 	=> vFiletype1,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File1Columns,
		 lp_Hint	=> 'BODY');
   v_Step := '11f';

   Write_to_File(lp_File 	=> p_File2,
		 lp_Fileid 	=> vFiletype2,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File2Columns,
		 lp_Hint	=> 'BODY');
   v_Step := '11G';

   Write_to_File(lp_File 	=> p_File3,
		 lp_Fileid 	=> vFiletype3,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File3Columns,
		 lp_Hint	=> 'BODY');

   v_Step := '11h';
   Write_to_File(lp_File 	=> p_File4,
		 lp_Fileid 	=> vFiletype4,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File4Columns,
		 lp_Hint	=> 'BODY');
   v_Step := '11i';

   Write_to_File(lp_File 	=> p_File5,
		 lp_Fileid 	=> vFiletype5,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File5Columns,
		 lp_Hint	=> 'BODY');


   v_Step := '12';
  if p_MultiGroup = 'Y' and (i.BomCount = 0 or n = 1)  Then 
    For mc in (select im.Record_Status,im.Update_Source,im.Delete_Flag,im.Bu_Id,
                      im.Created_By,im.Creation_Date,im.Last_Updated_By,im.Last_Update_Date,
                     im.User_Category_Desc,im.Sub_Category_Id,im.Category_Id,im.Item_Id,
                     im.Multi_Category_Id,
                     c.Category_name, S.Sub_Category_Name
               From INV_ITEM_MULTI_CATEGORIES im,Inv_item_Categories c, Inv_item_Sub_Categories s
               Where im.Item_ID = i.Item_ID
               And   im.Category_Id = c.Category_Id
               And   im.Sub_Category_Id = s.Sub_Category_ID
              ) 
    Loop
    if mc.Sub_Category_ID <> i.IISC_Sub_Category_Id 
      then 
       v_Section2 := mc.CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS(mc.CateGory_name)||p_Delimiter
               ||mc.SUB_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS(mc.Sub_Category_name)||p_Delimiter;

      v_String := v_Section1||V_Section2||v_Section3;
     Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
     v_StringOriginal := v_String;
   
    if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
    End IF; 
      Utility_Pkg.Write(pfileId => vfileType,Wstring => fn_Outstring(v_String),pformat=>p_outformat);
 	 if p_Stage = 'YES'  and vExpHeaderID > 0 then
    		 ImpExp2_Pkg.Pop_Export_Lines(p_ExportHeaderID => vExpHeaderID,
                                                         p_Data                   => v_String,
			         p_SourceID_1	         => i.Item_Id,
			         p_SourceID_2	         => i.SU_Id,
			         p_SourceNumber         => i.Item_Number,
                                                         p_slNo                     => v_SlNo);
 	End If; 
 v_slNo := v_SlNo + 1;
      
   Write_to_File(lp_File 	=> p_File1,
		 lp_Fileid 	=> vFiletype1,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File1Columns,
		 lp_Hint	=> 'BODY');

   Write_to_File(lp_File 	=> p_File2,
		 lp_Fileid 	=> vFiletype2,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File2Columns,
		 lp_Hint	=> 'BODY');

   Write_to_File(lp_File 	=> p_File3,
		 lp_Fileid 	=> vFiletype3,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File3Columns,
		 lp_Hint	=> 'BODY');

   Write_to_File(lp_File 	=> p_File4,
		 lp_Fileid 	=> vFiletype4,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File4Columns,
		 lp_Hint	=> 'BODY');

   Write_to_File(lp_File 	=> p_File5,
		 lp_Fileid 	=> vFiletype5,
		 lp_ActualString =>  v_StringOriginal,
                 lp_InString 	 => p_File5Columns,
		 lp_Hint	=> 'BODY');
    End If;
  End Loop;
  End If; -- Multi Group 

   v_Step := '13';

  if v_VariationCode = 'AUTO' and i.BomCount >= 1 and i.Sales_Unit = 1  and n=1  Then 
    begin
     v_ItemName			:= i.Su_Name;
     i.Item_Number              := i.Su_Number;
     i.PrimaryBarcode		:= Nvl(Inv_Pkg.Get_ItemBarcode(p_RetType => 'SUSLNO',
                                                           p_ItemId   => i.Item_Id ,
                         				   p_SuId     => i.su_Id,
                         				   p_SlNo    =>  1),i.SU_NUMBER);
     vSuLoopCtr := 0;
     i.Su_Derived 		:= 1 ;
    Exception when Others Then Null;
    End;
   End If; 
   if  i.BomCount = 0 or i.Sales_Unit > 1  or v_VariationCode = 'MANUAL' Then Exit; End If;  
   If (p_ApplySUFilter = 1 and  Greatest(i.QtyInStock,i.Max_Qty) <=0 ) Then Exit; End If;
   
   v_Step := '14';
  <<nothing>>
     null;
   End Loop; -- For N Loop;
 End Loop; -- For c_Items Loop;

 if c_Items%ISOpen Then
   Close c_Items;
 End If;

if vLastLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => fn_outString(vLastLine),pformat=>p_outformat);
End If; 

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);
Utility_Pkg.closeFile(vFileType1);
Utility_Pkg.closeFile(vFileType2);
Utility_Pkg.closeFile(vFileType3);
Utility_Pkg.closeFile(vFileType4);
Utility_Pkg.closeFile(vFileType5);

Exception When Others then 

 if c_Items%ISOpen Then
   Close c_Items;
 End If;
Dbms_Output.put_Line('step:'||v_Step||'--ERROR:'||SqlErrm);
Utility_Pkg.closeFile(vFileType);
Utility_Pkg.closeFile(vFileType1);
Utility_Pkg.closeFile(vFileType2);
Utility_Pkg.closeFile(vFileType3);
Utility_Pkg.closeFile(vFileType4);
Utility_Pkg.closeFile(vFileType5);
Raise_Application_Error(-20001,'Step:'||v_Step||'--'||sqlerrm);

End;
---------------------------------------------------------
Procedure POP_BESTWORST(p_BestWorst in Varchar2 Default 'BEST',
                                         p_Howmany   in Number Default 10,
                                         p_Bywhat    in Varchar2 Default 'VALUE',
                                         p_ReturnType In Varchar2 Default 'ALL',
                                         p_DateFrom    In Date Default Null,
                                         p_DateTo      in date Default Null,
					 p_ObjectName In Varchar2 Default 'SALES',
                                         p_Identifier In Varchar2 Default 'ITEM',
                                         p_ID         in varchar2  default '521',
                                         p_AggFunction In Varchar2 Default 'SUM',
                                         p_LocationId  in Number Default Null,
                                         p_FilterQry   In varchar2 default null,
                                         p_Filtertype  in Varchar2 default null,
                                         p_FilterId    In Number  Default Null)
IS
begin
  begin
    Delete resultset_temp Where Identifier = p_ObjectName;
  Exception When Others then Null;
  End;
  Insert Into resultset_temp(Identifier,result)
  Select p_ObjectName,a.String from Table(sfn_bestworst( p_BestWorst,
                             p_Howmany,
                             p_ByWhat,
		                         p_ReturnType,
		                         p_DateFrom ,
		                         p_Dateto,
		                         p_ObjectName,
                                         p_Filterqry,
		                         p_Identifier,
		                         p_Id,
                                         p_AggFunction,
                                         p_LocationId ,
                                         p_FilterType,
                                         p_FilterId)) a;
Exception when Others then 
 Raise_Application_Error(-20001,'IMPEXP_PKG.POP_BESTWORST:'||SqlErrm);
end;
----------------------------------------------------------------------------------
Function Get_GLACCODE(p_LookupType In Varchar2 Default 'SAGE_DEFAULTS',
                      p_TransType in Varchar2 ,
                      p_Source    In Varchar2,
                      p_Id       In  number,
		      p_INOUT    In  Varchar2 Default 'IN')
 Return Varchar2
 Is
  Retvalue Varchar2(100);
Begin
if p_Transtype is null or p_Source is null or p_Id is null then 
   Return(null);
End If;
If p_Transtype in ('SI','SC') then 
 RetValue := GL_PKG.get_ACCodeByCustomer(p_Id);
End If;
If p_Transtype in ('SA','PA') then 
 RetValue := Gl_Pkg.Get_AccountCode(GL_PKG.get_AccountIDByPmntMethod(p_Id,p_Inout));
End If;
If p_Transtype in ('PI','PC') then 
 RetValue := GL_PKG.get_ACCodeBySupplier(p_Id);
End If;
if RetValue is Null then 
  RetValue := GL_PKG.get_ACCodeByLookup(p_LookupType,p_TransType);
End If;
Return(retvalue);

Exception When Others then Return(retvalue);
End;
--------------------------------------------------------------------------------
Procedure Export_SAGETRANS(p_TransType   In Varchar2 Default 'ALL',
                           p_Delimiter In Varchar2 Default ',',
                           p_FileName  In Varchar2 Default 'SAGETRANS.csv',
                           p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                           p_DateCriteria  In Varchar2 Default 'YESTERDAY',
                           p_NotifGroup In Varchar2 Default Null)
IS
vDelimiter Varchar2(10);
vFileType  Utility_Pkg.FileType;
vString    Varchar2(20000);
vHeader    Varchar2(4000);
v_String  Varchar2(2000);
vRetValue  Number;
vDateFrom   Date;
vDateTo     date;
vTransType  Varchar2(100);

Begin
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
if Nvl(p_TransType,'ALL') = 'ALL'
 Then 
   vTransType := Null;
End If; 
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
vRetValue := Report_Pkg.Get_DateByIdentifier(p_Identifier => p_DateCriteria,
                              p_DateFrom  => vDateFrom,
                              p_DateTo   => vDateTo);

 v_String :=  'TransType'||p_Delimiter||' AccountRef'||p_Delimiter||' Nominalcode'||p_Delimiter||' Department'||p_Delimiter||' TransDate'||
           p_Delimiter||' TransRef'||p_Delimiter||' TransDet'||p_Delimiter||' NetAmount'||p_Delimiter||' TaxCode'||p_Delimiter||
                'TaxAmount';
            --||p_Delimiter||' ExchangeRate'||p_Delimiter||' ExtraReference'||p_Delimiter||' UserName';
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);

 -- Utility_Pkg.Write(pfileId => vfileType,Wstring => vDateFrom||' ' ||vDateTo);
For i In (select * 
          From   REP_SAGETRANSEXPORT_V
          Where  Trans_Type = Nvl(vTransType,Trans_Type)
          and    trunc(Report_Date) BetWeen trunc(vDateFrom) and trunc(VDateTo)
          order by Trans_Type,Report_date
          )
 Loop
-- Utility_Pkg.Write(pfileId => vfileType,Wstring => vDateFrom||' in loop ' ||vDateTo);
  v_String := i.Trans_Type|| p_Delimiter||i.Account_Ref|| p_Delimiter||i.GL_CODE|| p_Delimiter||
              i.Department|| p_Delimiter||To_Char(i.Report_Date,'DD/MM/YYYY')|| p_Delimiter||i.Trans_Reference
              || p_Delimiter||i.Trans_Details|| p_Delimiter||
              i.Net_Amount||p_Delimiter||i.Tax_code|| p_Delimiter||i.Tax_Amount;
     ---|| p_Delimiter||i.Exchange_Rate|| p_Delimiter||i.Extra_Reference|| p_Delimiter||i.OperatorName;
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 End Loop;


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then
 Utility_Pkg.Write(pfileId => vfileType,Wstring => SQLERRM);
 Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Function Get_WwwMinSalesUnit(p_CustomerId In Number,
                             p_customerNumber Varchar2 Default Null,
                             p_ItemId  In Number,
                             p_Barcode  in Varchar2)
Return Number
is
retvalue number;
vcustomerid  number;
begin
if p_CustomerID is Null then 
 vCustomerId := AR_PKG.Get_CustomerIDByNumber(p_customerNumber);
else
 vCustomerID := p_CustomerId;
End If;
If vCustomerID is Null or p_ItemId is Null then 
 Return(null);
End If;
if p_Barcode is not null Then 
 begin 
 Select Sales_Unit
 Into   Retvalue
 From   AR_CUST_BARCODE_UPLOADS
 Where  Customer_Id = vCustomerId
 And    Item_Id     = p_ItemId
 And    barcode     = p_Barcode
 And    Rownum = 1;
 Exception When Others then Null;
End;
if Retvalue is not null then return(retvalue); End If; 
 select Sales_Unit
 Into   retvalue
 from AR_CUST_ITEM_UPLOADS
 Where  Customer_Id = vCustomerId
 And    Item_Id     = p_ItemId
 And    Rownum = 1;
end if;
 Return(retvalue);

Exception When Others Then return(null);
End;
--------------------------------------------------------------------------
Function Copy_WebSiteItems(p_FromId In Number,
                           p_ToId   In Number,
                           p_ItemID In Number Default Null,
                           p_Hint   In varchar2 Default 'REPLACE')
 Return Varchar2
is 
 Retvalue Varchar2(400);
 FromUBarRow   AR_CUST_BARCODE_UPLOADS%RowType;
 ToUBarRow   AR_CUST_BARCODE_UPLOADS%RowType;
 FromURow   AR_CUST_ITEM_UPLOADS%RowType;
 ToURow   AR_CUST_ITEM_UPLOADS%RowType;
 ToUploadID  Number;
begin
 if p_FromID is Null Then 
  Return('Please select a valid copy from site');
 End If;
 if p_ToID is Null Then 
  Return('Please select valid copy to site');
 end If;
 if p_FromID = p_ToID Then 
   Return('Sorry, cannot copy onto itself, Copy From / To has same values');
 End If; 
 For i in (Select * 
           From   Ar_cust_Item_Uploads
           Where  Customer_Id = p_FromID
           )
 Loop
    FromURow.CUSTOMER_ID := i.Customer_ID;
    FromURow.Item_ID := i.Item_ID;
    AR_CUST_ITEM_UPLOADSAPI('SELECT',FromURow);
    ToURow := Null;
    ToURow.CUSTOMER_ID := p_ToID;
    TOURow.Item_ID := i.Item_ID;
    AR_CUST_ITEM_UPLOADSAPI('SELECT',ToURow);
    if ToURow.Upload_ID is Null Then 
       ToURow.CUSTOMER_ID := p_ToID;
       TOURow.Item_ID := i.Item_ID;
       TOURow.Upload_Status       := 'NEW';
       TOURow.Upload_Item         := 'Y';
       TOURow.Creation_Date       := sysdate;
       TOURow.Created_By          := i.Created_By;
     End If; 
       
    TOURow.Last_Updated_By      := -1;
    TOURow.Last_Update_Date      := sysdate;
    TOURow.Sales_Unit            := i.Sales_Unit;
    TOURow.Price_Exltax         := i.Price_Exltax;
    TOURow.Price_Inctax         := i.Price_Inctax;
    TOURow.End_Date_Active       := i.End_Date_Active;
    TOURow.Start_Date_Active    := i.Start_Date_Active;
    TOURow.Web_Preference_Code  := i.Web_Preference_Code;
    TOURow.Web_Export_Hint      := i.Web_Export_Hint;
    TOURow.Item_Number          := i.Item_Number;
    TOURow.Short_Desc           := i.Short_Desc;
    TOURow.Long_Desc            := i.Long_Desc;
    TOURow.Upload_Status        := i.Upload_Status;
    TOURow.Upload_Item          := i.Upload_Item;
    AR_CUST_ITEM_UPLOADSAPI('INSERTUPDATE',ToURow);
    ToUploadID  		:= TOURow.Upload_ID;
 Begin 
   Delete AR_CUST_BARCODE_UPLOADS
   Where  Customer_ID  = p_ToID
   And    Item_ID      = i.Item_ID;
 Exception When Others then Null;
 End;
 For j in (Select Upload_barcode_ID 
           From   Ar_Cust_Barcode_Uploads           
           Where  Customer_ID  = p_fromID
           And    Item_ID      = i.Item_ID
          )
 Loop
   FromUBarRow.Upload_Barcode_ID := j.Upload_BArcode_ID;
    AR_CUST_BARCODE_UPLOADSAPI('SELECT',FromUBarRow);
   if FromUBarRow.Barcode is not null then 
      ToUBarRow := Null;
      ToUBarRow := FromUBarRow;
      ToUBarRow.Upload_Barcode_ID := -1;
      ToUBarRow.Last_Upload_Date := Null;
      ToUBarRow.Creation_date := Sysdate;
      ToUBarRow.Last_Update_Date := Sysdate;
      ToUBarRow.Customer_Id      := p_ToID;
      ToUBarRow.Upload_ID        := ToUploadID;     
     AR_CUST_BARCODE_UPLOADSAPI('INSERT',ToUBarRow);
   End If;
 End Loop;
End Loop;
if ToUploadID is not null then 
  Return('Copied Successfully');
End If;
Return('No items copied');

Exception When Others Then 
  Return('Copy Web sites:'||SqlErrm);
End;
----------------------------------------------------------------------------------

Function Get_WWWColumnList(p_ForWhom In Varchar2 ,
                           p_Hint    In Varchar2 Default 'BODY')
Return Varchar2
IS
 ColumnList Varchar2(4000);
 HeaderList Varchar2(4000);
 Header     Varchar2(4000);
 Footer     Varchar2(4000);
Begin
 if p_ForWhom is null Then Return(null); End If; 
 Select Export_column_List,Export_Header_List,Export_header,Export_Footer
 Into   ColumnList,HeaderList,Header,Footer
 From   Ar_Customers
 Where  Customer_Number = p_forWhom;

 If p_Hint = 'HEADER' then 
   Return(ltrim(rtrim(Nvl(HeaderList,ColumnList))));
 End If; 
  If p_Hint in ( 'HEADER','BODY') then 
   Return(ltrim(rtrim(Nvl(ColumnList,HeaderList))));
  End If; 
 If p_Hint = 'FIRSTLINE' then 
   Return(ltrim(rtrim(header)));
  End If; 

 If p_Hint = 'LASTLINE' then 
   Return(ltrim(rtrim(footer)));
  End If; 
 Return(ltrim(rtrim(Nvl(ColumnList,HeaderList))));
Exception When Others Then Return(null);
End;
---------------------------------------------------------------------------------
  Procedure NextColIndex
  IS
  begin
   Pub_ColIndex := Pub_ColIndex + 1;
  End;
  
 --------------------------------------
    Procedure IgnoreHeaderRecord
    IS
    Begin
    	pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
    	Pub_RecNo := Pub_RecNo + 1;
    End;
    
  --------------------------------------------------
 Function GetColValue
  Return Varchar2 
  IS
  retvalue  varchar2(4000);
  Begin
  	 if pub_ColIndex > Pub_MaxColumns Then 
  	 	  Return(Null);
  	 End If;
  	 retvalue := trim(Pub_CharTab(Pub_ColIndex));
  	 NextColIndex;
  	 Return(retvalue);
  End;
    -------------------------------------------
  Function AssignColumnValue(p_Input in Varchar2, 
                             p_DataType In Varchar2,
                             p_DataLength In Number,
                             p_ColumnName In Varchar2,
			     p_CaseType   In Varchar2 Default 'UPPER')
      return varchar2
  Is
   vCharValue Varchar2(4000);
   vDateValue Date;
   vNumValue  Number;
  Begin
         Dbms_OutPut.Put_Line(p_Columnname||'  -- '||p_Input);
  	 pub_CurrColName := p_columnName;
  	 pub_CurrValue   := trim(sfn_RemoveSpecialChars(p_Input));
  	 if p_dataType = 'V' Then
  	 	  vCharValue := substr(pub_CurrValue ,1,p_dataLength);
                  vCharValue := Sfn_ChangeCase(vCharValue,p_CaseType);
  	 	  Return(vCharValue);
  	 elsif p_dataType = 'D' then 
  	 	  vDateValue := pub_CurrValue ;
  	 	  Return(pub_CurrValue );
  	 elsif p_DataType = 'N' then
  	 	  vNumValue := Replace(pub_CurrValue,'£') ;
  	 	  Return(pub_CurrValue );
  	 End If;
  
  	 Exception When Others 	Then 
                  pub_Status := 'ERROR';
  	 	  Return('** ERROR **:'||p_Input||' : '||SqlErrm);


 end;
-------------------------------------------   
   Procedure Lpr_DispError(p_String in Varchar2, p_DataStatus in Varchar2 default '*ERROR*')
   Is
    	 	 Begin
    	 	 	Null;
    	 	 End;
 -------------------------------------------------
Procedure Import_SalesOrder(p_Hint  		In Varchar2 Default 'SALESORDER',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null,
			    p_HeaderRecord	In Varchar2 Default 'Y')
Is 

   vTabRow         AR_SALESORDER_IMPORT%RowType;
   vHeaderRow      AR_SALESORDER_IMPORT%RowType;
   vBatchRow       AR_SOIMPORT_BATCH%RowType;
   vTempValue     Varchar2(4000);
   vCustRow       Ar_CUstomers%RowType;
   VItemRow       Inv_Item_Masters%RowType;
   vOrderId       Number(10);
   vSlNo          Number := 1;
   vErrorCount    Number := 0;
   VRetValue      Number;
   vMessage      Varchar2(1000);
   vSuname        varchar2(100);
   vDummy         varchar2(240);
   vTotalOtherAmount Number(12,2);
   vInstock       Number;
   failed         Exception;   
   vBatchArray    Utility_Pkg.CharTab;
   vCustomerNumber Varchar2(30);
   vLocationID    number(10);
   vLocationNum    number(20);
   LocationRow    INV_LOCATIONS%ROWTYPE;
   vStatus        Number(10);
   vInsert        Boolean := false;
   vUnitPrice     Number(12,2);
   vBarcodeQty    Number(12,2);
   vFirstRow      Boolean := false;
   vInsertBatch      Boolean := true;
   vSysCustomerNum Varchar2(140);
   vWebCustomerNum Varchar2(140);
   vWebCustomerName Varchar2(140);
   vTemplateCode  Varchar2(10);
   vFileOrderNumber Varchar2(100);
   vPostageService   Varchar2(400);
   vDateChar       Varchar2(140);
   vPrevOrderNum   Varchar2(100) := -1;
   vLinesinOrder   number := 0;
   vPostage	   Number(12,2) := 0;
   vExchangeRate   Number;
   vImportMissingItems  Varchar2(100);
   vMissingItemNumber  Varchar2(100);
   vItemName		Varchar2(400);

   Procedure lpr_GetItemDetails
   Is
    Begin
    
                VRetValue                        := Inv_Pkg.Get_SuDetailsByBarcode(p_Barcode =>vTabRow.T_Itemnumber,
                                                       p_ItemID => vItemRow.Item_Id,
                                                       p_SuID   => vTabRow.SU_ID,
                                                       p_SalesUnit => vTabRow.Sales_Unit,
			                               p_ItemNumber => vItemRow.Item_Number,
                                                       p_SuNumber   => vDummy,
                                                       p_ItemName => vItemRow.Item_name,
                                                       p_SuName   => vsuname);       
              If vItemRow.Item_ID is Null Then 
                   if vImportMissingItems = 'YES' Then 
                          VRetValue                        := Inv_Pkg.Get_SuDetailsByBarcode(p_Barcode =>vMissingItemNumber,
                                                       p_ItemID => vItemRow.Item_Id,
                                                       p_SuID   => vTabRow.SU_ID,
                                                       p_SalesUnit => vTabRow.Sales_Unit,
			                               p_ItemNumber => vItemRow.Item_Number,
                                                       p_SuNumber   => vDummy,
                                                       p_ItemName => vItemRow.Item_name,
                                                       p_SuName   => vsuname);       
                   End If;
              End If;              
                Utility_Pkg.AssignErrorLevel('1A7');
        
   end;

   Procedure lpr_ProcessBarcodeQty
   Is
    Begin
    
               vbarcodeQty                      := IMPEXP_PKG.Get_WwwMinSalesUnit(p_CustomerId => VTabrow.Customer_Id,
                                                           p_customerNumber => VTabrow.Customer_Number,
                                                           p_ItemId   => vItemRow.Item_Id,
                                                           p_Barcode  => vTabRow.T_Itemnumber) ;  
               Dbms_OutPut.Put_Line('**barcode:'||VTabRow.T_ItemNumber||' Qty:'||vbarcodeQty||' Cust:'|| VtabRow.Customer_Id||' Item:'||  vItemRow.Item_Id);
               if vBarcodeQty is Null then              
                      vbarcodeqty                  := Inv_Pkg.Get_BarcodeQty(VtabRow.T_ItemNumber,'SALES');
               End If; 
               vTabRow.T_Quantity   :=  vTabRow.T_Quantity  *  vbarcodeqty  ;
   end;

Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'SALES ORDER IMPORT',
                         p_logType   => 'ORACLE INBOUND',
                         p_logDesc   => 'READING FILE:'||p_Filename,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 
  pub_Filename := p_Filename;
vImportMissingItems  := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'WEB_SITE_DEFAULTS',
                              p_LookupCode => 'IMPORT_MISSING_ITEMS',
                              p_WhichAttribute => 1),'NO');
 vMissingItemNumber   := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'WEB_SITE_DEFAULTS',
                              p_LookupCode => 'MISSING_ITEM_NUMBER',
                              p_WhichAttribute => 1),'99901');
  -- Split File Name  
   if SalOrder_Pkg.Is_ImportBatchExist(upper(p_FileName)) = 1 then
     vMessage := 'Batch has already been imported:'||p_FileName;
     Raise Failed;
   end if;  

   Utility_Pkg.SplitLine(pub_Filename||'_','_',vBatchArray); 

   if vBatchArray(1) not like 'SOI%' and vBatchArray(1) not like 'X%' Then 
     vMEssage := 'File Prefix must be SOI/X:'||vBatchArray(1);
     Raise Failed;
   End If;
   if vBatchArray(1) = 'X' Then 
     vTemplateCode  := '2';
   Else   
      vTemplateCode := nvl(Replace(vBatchArray(1),'SOI'),'0');
   End If; 
 -- Check Location Number 
  begin
   if vBatchArray(1) = 'X' Then       
      vLocationNum := 10;
   Else
      vLocationNum := vBatchArray(2);
   End If; 

   vLocationId := Location_Pkg.GetLocationIdByNum(vLocationNum);
   LocationRow.Location_name := Inv_Pkg.GetLocationName(vLocationId);
  INV_LOCATIONSAPI('SELECT',LocationRow);
  if LocationRow.Location_Name is Null Then 
     Raise no_data_Found;
  End If; 
  Exception When Others then 
     vMEssage 		:= 'Invalid Location Number in File:'||vLocationNum;
     Raise Failed;
  End; 
 -- Check Customer Number in File 
   if vBatchArray(1) = 'X' Then  
    vCustRow.Customer_Number := upper(vBatchArray(2));
   Else
     vCustRow.Customer_Number := upper(vBatchArray(3));
   End If;
      begin
    	   select Customer_ID,Customer_name,nvl(billto_Country_Code,'UK'),Currency_Code
    	   into   vCustRow.Customer_Id, VCustRow.Customer_name,VCustRow.billto_Country_Code,
                  vCustRow.Currency_Code
    	   from   ar_customers
    	   Where  Customer_number = VCustRow.Customer_Number;
           vExchangeRate :=  Price_Pkg.Get_XchangeRate(p_toCurrCode => vCustRow.Currency_Code,p_RetType => 'BUYING');
    	 exception when others then 
    	    vCustRow.Customer_Id     := 0;
    	 End; 
    if vCustRow.Customer_ID <= 0 Then 
      vMEssage 		:= 'Invalid Customer Number in File :'||vCustRow.Customer_Number;
      Raise Failed;
     End If;
    vFileOrderNumber 	:=  vBatchArray(4);  
       AR_CUSTOMERSAPI('SELECT',VCustRow);
  -- Start Reading File    	 		 
    Pub_FileId 		:= Utility_Pkg.OpenFile(p_FileName,P_INDIRECTORY,'r');
    Pub_RecNo 		:= 0;
    Pub_Delimiter  	:= p_Delimiter;
    if p_HeaderRecord = 'Y' 
     then 
       IgnoreHeaderRecord;
    End If; 
    vTotalOtherAmount 	:= 0;
    vHeaderRow 		:= Null;
    While 1 = 1  
   	Loop
                pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 

                if pub_CurrentLine is null  then goto nothing; End If; 
   	        Pub_CharTab.delete;
   		VTabRow := Null;
                pub_Status := 'OK';
   		Pub_MaxColumns := 0 ;
   		Pub_ColIndex   := 1;
                if nvl(instr(pub_CurrentLine,'","'),0) > 0 Then 
                   pub_CurrentLine := Replace(pub_CurrentLine,',,',',"",');
                   pub_CurrentLine := Replace(pub_CurrentLine,'","','"$"');
                 pub_CurrentLine := Replace(pub_CurrentLine,',',' ');
                  pub_CurrentLine := Replace(pub_CurrentLine,'"$"','","');
                  pub_CurrentLine := Replace(pub_CurrentLine,'"');
                End If;
   		Utility_Pkg.SplitLine(pub_CurrentLine||pub_Delimiter,pub_Delimiter,Pub_CharTab);
   		Pub_MaxColumns := Pub_CharTab.Count;
   		Pub_RecNo := Pub_Recno + 1;
   	        vTabRow.Line_Number := Pub_RecNo;
          	VTabRow.Import_Status  := Nvl( VTabRow.Import_Status,'INSERT');
                Utility_Pkg.AssignErrorLevel('1A');
                
                VTabRow.Customer_Id      	:= vCustRow.Customer_Id;
                vTabRow.customer_Number  	:= vCustRow.Customer_Number;
                vTabRow.Customer_Name    	:= vCustRow.Customer_name;
                Utility_Pkg.AssignErrorLevel('1A1');
                vTabRow.Batch_name       	:= p_Filename;
                vTabRow.Import_ID        	:= -1;
   		vTabRow.Last_Update_Date        := sysdate;
  		vTabRow.Last_Updated_By         := -1;
  		vTabRow.Creation_Date           := sysdate;
  		vTabRow.Created_By              := -1;
  		vTabRow.Bu_Id                   := LocationRow.BU_ID;
  		vTabRow.Update_Source           := 'IMPORT';
                Utility_Pkg.AssignErrorLevel('1A2');
  		vTabRow.Attribute1              := vTabRow.Attribute1;
  		vTabRow.Attribute2              := vTabRow.Attribute2;
  		vTabRow.Attribute3              := vTabRow.Attribute3;
  		vTabRow.Attribute4              := vTabRow.Attribute4;
                Utility_Pkg.AssignErrorLevel('1A3');
  		vTabRow.Order_Header_Id         := vTabRow.Order_Header_Id;
  		vTabRow.Order_Line_Id           := vTabRow.Order_Line_Id;
  		vTabRow.Import_Date             := Sysdate;
                Utility_Pkg.AssignErrorLevel('1A4');
		vTabRow.T_Ordernumber           := AssignColumnValue(getcolvalue,'V',140,'T_OrderNumber'); -- A
                Dbms_OutPut.Put_Line('Order Number:'||vTabRow.T_Ordernumber);
                 if vTabRow.T_OrderNumber is null then Goto Nothing; End If; 
      Dbms_OutPut.Put_Line('Step 1a');
            if vTemplateCode = '2' Then 
                Utility_Pkg.AssignErrorLevel('1A5');

	        vTabRow.T_Transactionid         := AssignColumnValue(getcolvalue,'V',140,'ORD-ITEM-ID'); -- B 
                Utility_Pkg.AssignErrorLevel('1A51');

  		vDateChar         		:= AssignColumnValue(getcolvalue,'V',140,'PURCHASE DATE'); -- C 
                if vDateChar is Not Null Then 
                 vDateChar := Substr(vDateChar,1,10);
                 vTabRow.T_Orderdate  := To_Date(VDateChar,'YYYY-MM-DD');
                End If;
                Utility_Pkg.AssignErrorLevel('1A52');
  		vDateChar         		:= AssignColumnValue(getcolvalue,'V',140,'PAYMENT DATE'); -- D 
                if vDateChar is Not Null Then 
                 vDateChar := Substr(vDateChar,1,10);
                 vTabRow.T_Paiddate  := To_Date(VDateChar,'YYYY-MM-DD');
                End If;
                Utility_Pkg.AssignErrorLevel('1A53');
  		vTabRow.T_Username              := AssignColumnValue(getcolvalue,'V',140,'T_Username'); -- E
                Utility_Pkg.AssignErrorLevel('1A54');
  		vTabRow.T_Buyername             := AssignColumnValue(getcolvalue,'V',140,'T_Buyername'); -- F
                Utility_Pkg.AssignErrorLevel('1A56');
  		vTabRow.T_Buyerphone            := AssignColumnValue(getcolvalue,'V',140,'T_Buyerphone'); -- G
  		vTabRow.T_Buyeremail            := vTabRow.T_Username; -- E

                Utility_Pkg.AssignErrorLevel('1A57');
  		vTabRow.T_Itemnumber            := AssignColumnValue(getcolvalue,'V',140,'T_Itemnumber'); -- H
                if Inv_Pkg.GetItemIdByNumber(vTabRow.T_Itemnumber) <= 0 Then 
                  goto nothing;
                End If;
                                if vImportMissingItems = 'YES' Then 
                                  vTabRow.T_Itemnumber        := Nvl(vTabRow.T_Itemnumber ,vMissingItemNumber);
                                End If;
                Utility_Pkg.AssignErrorLevel('1A58');
  		vTabRow.T_Itemname              := AssignColumnValue(getcolvalue,'V',140,'T_Itemname'); -- i
     		vTabRow.T_Customlabel           := vTabRow.T_Itemnumber; -- N            
                Utility_Pkg.AssignErrorLevel('1A59');
  		vTabRow.T_Quantity              := AssignColumnValue(getcolvalue,'N',12,'T_Quantity'); -- J
                Utility_Pkg.AssignErrorLevel('1A591');
                vTabRow.T_OrderCurrencyCode     := AssignColumnValue(getcolvalue,'V',140,'T_OrderCurrencyCode');   -- K  
                Utility_Pkg.AssignErrorLevel('1A592');
                vUnitPrice                      := AssignColumnValue(getcolvalue,'N',12,'T_Unitpriceinctax'); -- L

                lpr_GetItemDetails;
                vTabRow.T_Attribute1  := vUnitPrice;
                 vUnitPrice  := Price_Pkg.Get_ValueXchanged(p_invalue => vUnitPrice ,
                                                            p_ExchangeRate => vExchangeRate);
                

                Utility_Pkg.AssignErrorLevel('1A74_2');
  		vTabRow.T_Taxrate               := Replace(AssignColumnValue(getcolvalue,'V',140,'T_Taxrate'),'%');  -- M
                Utility_Pkg.AssignErrorLevel('1A74_21');

  		vTabRow.T_Postage               := AssignColumnValue(getcolvalue,'N',12,'T_Postage');  -- N
                

                
                 if Nvl(vCustRow.www_Shipping_Hint,'BYLINE') = 'BYORDER'  Then 
                   if vPrevOrderNum  = vTabRow.T_Ordernumber  Then 
                        vLinesinOrder := vLinesInOrder + 1;
                        vTabRow.T_Postage   := 0;
                     else
                        vLinesinOrder := 0;
                   	vPrevOrderNum  :=  vTabRow.T_Ordernumber;
                    End If;
                 End If;
                 vPostage := vTabrow.T_Postage;
               
               if Nvl(vCustRow.www_Price_IncShipping,'N') = 'Y' Then 
                 Inv02_Pkg.Extract_FreightPrices(p_ItemId  => vItemRow.Item_Id,
                            p_SuID    		=> vTabRow.Su_Id,
                            p_Quantity		=> vTabRow.T_Quantity,
			    p_Price		=> vUnitPrice,
			    p_Freight		=> vTabRow.T_Postage,
                            p_CountryCode 	=> VCustRow.billto_Country_Code );
                /*   Raise_Application_Error(-20001,'UnitPrice:'||vUnitPrice||' Postage:'||vTabRow.T_Postage||
                         'ID:'||vItemRow.Item_Id||' SU:'||vTabRow.SU_Id||' Qty:'||vTabRow.T_Quantity);
               */
                  vTabRow.T_Postage := nvl(vTabRow.T_Postage,0)  + nvl(vPostage,0);
               End If; 

              if Nvl(vTabRow.T_Quantity,0) > 1 Then 
                  vUnitPrice := Round(vUnitPrice / vTabRow.T_Quantity,2);
                End If; 
                lpr_ProcessBarcodeQty;

                Utility_Pkg.AssignErrorLevel('1A741');
                nextcolindex; -- Shipping Tax    -- o
  		vTabRow.T_PostageService        := AssignColumnValue(getcolvalue,'V',140,'T_PostageService');  -- P  	
                vTabRow.T_PostageService        := nvl(vTabRow.T_PostageService,vPostageService); 
               vTabRow.T_Delivertoname          := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoname'); -- Q
  		vTabRow.T_Delivertoaddress1     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress1');  -- R

                Utility_Pkg.AssignErrorLevel('1A742');
  		vTabRow.T_Delivertoaddress2     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress2');  -- S
  		vTabRow.T_Delivertoaddress3     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress3');  -- T
  		vTabRow.T_Delivertocity         := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocity');  -- U 
  		vTabRow.T_Delivertocounty       := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocounty'); -- V
  		vTabRow.T_Delivertopostcode     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertopostcode'); -- W
  		vTabRow.T_Delivertocountry      := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocountry'); -- X
  		vTabRow.T_Delivertophone        := AssignColumnValue(getcolvalue,'V',140,'T_Delivertophone');  -- Y

                Utility_Pkg.AssignErrorLevel('1A743');
                nextcolindex; -- Delivery start Date    -- Z
                nextcolindex; -- Delivery End Date    -- AA
                nextcolindex; -- Delivery Time Zone    -- AB
  		vTabRow.T_Notestosupplier       := AssignColumnValue(getcolvalue,'V',140,'T_Notestosupplier');  -- AC

                Utility_Pkg.AssignErrorLevel('1A744');
                vTabRow.T_Taxincluded		:= 'Y';
  		vTabRow.T_Transactionlineid     := vTabRow.T_Transactionid;  
  		vSysCustomerNum		        := vTabRow.customer_Number;
  		vWebCustomerNum		        := vTabRow.customer_Number;
  		vWebCustomerName	        := vTabRow.Customer_Name;  

                Utility_Pkg.AssignErrorLevel('1A745');   
                vTabRow.T_OrderCurrencyCode     := Nvl(vTabRow.T_OrderCurrencyCode,Cmn_Common_Pkg.Get_SysOptionVal('CURRENCY_CODE'));
                vTabRow.T_payCurrencyCode       := vTabRow.T_OrderCurrencyCode;
                vTabRow.T_Taxamount		:= Null;


                Utility_Pkg.AssignErrorLevel('1A746');
                Select ctc_Tax_Code_id,Price_Pkg.GetVatrate(ctc_Tax_Code_id),Item_Id 
                into   vTabrow.Tax_Code_ID,vTabRow.T_TaxRate,vItemName
                From   Inv_Item_Masters
                Where  Item_Id = vItemRow.Item_Id;
            else

                Utility_Pkg.AssignErrorLevel('1A5');
  		vTabRow.T_Username              := AssignColumnValue(getcolvalue,'V',140,'T_Username'); -- B
  		vTabRow.T_Buyername             := AssignColumnValue(getcolvalue,'V',140,'T_Buyername'); -- C
  		vTabRow.T_Buyerphone            := AssignColumnValue(getcolvalue,'V',140,'T_Buyerphone'); -- D
  		vTabRow.T_Buyeremail            := AssignColumnValue(getcolvalue,'V',140,'T_Buyeremail'); -- E
  		vTabRow.T_Buyeraddress1         := AssignColumnValue(getcolvalue,'V',140,'T_Buyeraddress1'); -- F
  		vTabRow.T_Buyeraddress2         := AssignColumnValue(getcolvalue,'V',140,'T_Buyeraddress2'); -- G
  		--vTabRow.T_Buyeraddress3         := AssignColumnValue(getcolvalue,'V',140,'T_Buyeraddress3'); -- 

                Utility_Pkg.AssignErrorLevel('1A6');
  		vTabRow.T_Buyercity             := AssignColumnValue(getcolvalue,'V',140,'T_Buyercity'); -- H
  		vTabRow.T_Buyercounty           := AssignColumnValue(getcolvalue,'V',140,'T_Buyercounty'); -- I
  		vTabRow.T_Buyerpostcode         := AssignColumnValue(getcolvalue,'V',140,'T_Buyerpostcode'); -- J
  		vTabRow.T_Buyercountry          := AssignColumnValue(getcolvalue,'V',140,'T_Buyercountry'); -- K

  		vTabRow.T_Itemnumber            := AssignColumnValue(getcolvalue,'V',140,'T_Itemnumber'); -- L
  		vTabRow.T_Itemname              := AssignColumnValue(getcolvalue,'V',140,'T_Itemname'); -- M
     		vTabRow.T_Customlabel           := AssignColumnValue(getcolvalue,'V',140,'T_Customlabel'); -- N
                 vTabRow.T_Itemnumber  		:=  nvl(vTabRow.T_Customlabel,vTabRow.T_Itemnumber);                
  		vTabRow.T_Quantity              := AssignColumnValue(getcolvalue,'N',12,'T_Quantity'); -- O
                lpr_GetItemDetails;
                lpr_ProcessBarcodeQty;

                Utility_Pkg.AssignErrorLevel('1A71--');
                vUnitPrice                      := AssignColumnValue(getcolvalue,'N',12,'T_Unitpriceinctax'); -- P
                vTabRow.T_Attribute1  := vUnitPrice;
                 vUnitPrice  := Price_Pkg.Get_ValueXchanged(p_invalue => vUnitPrice ,
                                                            p_ExchangeRate => vExchangeRate);
                Utility_Pkg.AssignErrorLevel('1A74');
  		vTabRow.T_Taxrate               := Replace(AssignColumnValue(getcolvalue,'V',140,'T_Taxrate'),'%');  -- Q
                Utility_Pkg.AssignErrorLevel('1A741');
  		vTabRow.T_Postage               := AssignColumnValue(getcolvalue,'N',12,'T_Postage');  -- R
                Utility_Pkg.AssignErrorLevel('1A76');
  		vTabRow.T_Insurance             := AssignColumnValue(getcolvalue,'N',12,'T_Insurance'); --S
  		vTabRow.T_Additionalcharges     := AssignColumnValue(getcolvalue,'N',12,'T_Additionalcharges');  -- T
  		vTabRow.T_Linetotal             := AssignColumnValue(getcolvalue,'V',140,'T_Linetotal');  -- U
  		vTabRow.T_Paymentmethod         := AssignColumnValue(getcolvalue,'V',140,'T_Paymentmethod');  -- V 
  		vTabRow.T_Orderdate             := AssignColumnValue(getcolvalue,'D',20,'T_Orderdate');  -- W
  		vTabRow.T_Checkedoutdate        := AssignColumnValue(getcolvalue,'D',20,'T_Checkedoutdate');  -- X
  		vTabRow.T_Paiddate              := AssignColumnValue(getcolvalue,'V',140,'T_Paiddate');  -- Y
                nextcolindex; -- dispatch date   -- Z
                nextcolindex;  -- invoice date -- AA
                nextcolindex; -- invoice num  -- AB
                nextcolindex; -- feedback left  -- AC
  		vTabRow.T_Receivefeedback       := AssignColumnValue(getcolvalue,'V',140,'T_Receivefeedback');  -- AD
  		vTabRow.T_Notestosupplier       := AssignColumnValue(getcolvalue,'V',140,'T_Notestosupplier');  -- AE
  		vTabRow.T_Paymentreference      := AssignColumnValue(getcolvalue,'V',140,'T_Paymentreference');   -- AF
  		vTabRow.T_PostageService        := AssignColumnValue(getcolvalue,'V',140,'T_PostageService');  -- AG  	
                vTabRow.T_PostageService        := nvl(vTabRow.T_PostageService,vPostageService);
  		vTabRow.T_CashOnDeliveryOption        := AssignColumnValue(getcolvalue,'V',140,'T_CashOnDeliveryOption');  -- Ah
  		vTabRow.T_Transactionid         := AssignColumnValue(getcolvalue,'V',140,'T_Transactionid'); -- AI 
  		vTabRow.T_Transactionlineid     := AssignColumnValue(getcolvalue,'V',140,'T_Transactionlineid');  -- Aj
  		vTabRow.T_Notes1                := AssignColumnValue(getcolvalue,'V',140,'T_Notes1'); -- Ak 
  		vTabRow.T_Notes2                := AssignColumnValue(getcolvalue,'V',140,'T_Notes2'); -- Al       
  		vTabRow.T_NetPrice              := AssignColumnValue(getcolvalue,'N',12,'T_NetPrice');      -- Am          
  		vTabRow.T_Discount              := AssignColumnValue(getcolvalue,'N',12,'T_Discount');  -- An 
  		vTabRow.T_Taxamount             := AssignColumnValue(getcolvalue,'N',14,'T_Taxamount');  -- Ao
                Utility_Pkg.AssignErrorLevel('1A78');
  		vTabRow.T_Voucher               := AssignColumnValue(getcolvalue,'N',12,'T_Voucher');  -- Ap

      Dbms_OutPut.Put_Line('Step 1a75');
                Utility_Pkg.AssignErrorLevel('1A75');
  		vTabRow.T_Taxincluded           := AssignColumnValue(getcolvalue,'V',140,'T_Taxincluded');  -- Aq
                vTabRow.T_OrderCurrencyCode     := AssignColumnValue(getcolvalue,'V',140,'T_OrderCurrencyCode');   -- Ar              
                vTabRow.T_OrderCurrencyCode     := Nvl(vTabRow.T_OrderCurrencyCode ,Cmn_Common_Pkg.Get_SysOptionVal('CURRENCY_CODE'));

                Utility_Pkg.AssignErrorLevel('1A751');
  		vTabRow.T_payCurrencyCode       := AssignColumnValue(getcolvalue,'V',140,'T_payCurrencyCode');  -- As
                vTabRow.T_payCurrencyCode       := Nvl(vTabRow.T_payCurrencyCode ,vTabRow.T_OrderCurrencyCode);
  		vTabRow.T_Delivertoname         := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoname'); -- At
  		vTabRow.T_Delivertophone        := AssignColumnValue(getcolvalue,'V',140,'T_Delivertophone');  -- Au
  		vTabRow.T_Delivertoemail        := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoemail');  -- Av
  		vTabRow.T_Delivertoaddress1     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress1');  -- Aw
  		vTabRow.T_Delivertoaddress2     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress2');  -- Ax
  		-- vTabRow.T_Delivertoaddress3     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertoaddress3');  -- Ay 
  		vTabRow.T_Delivertocity         := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocity');  -- Ay 
  		vTabRow.T_Delivertocounty       := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocounty');
  		vTabRow.T_Delivertopostcode     := AssignColumnValue(getcolvalue,'V',140,'T_Delivertopostcode');
  		vTabRow.T_Delivertocountry      := AssignColumnValue(getcolvalue,'V',140,'T_Delivertocountry');
  		vTabRow.Price_Hint	        := AssignColumnValue(getcolvalue,'V',30,'Price Hint');
  		vSysCustomerNum		        := AssignColumnValue(getcolvalue,'V',30,'Sys Customer Number');
  		vWebCustomerNum		        := AssignColumnValue(getcolvalue,'V',30,'Web Customer Number');
  		vWebCustomerName	        := AssignColumnValue(getcolvalue,'V',140,'Web Customer Name');
            End if; -- Template code check 
           

      Dbms_OutPut.Put_Line('Step 1a76');
               if vSysCustomerNum is Not Null Then 
                 if vSysCustomerNum <> vTabRow.Customer_Number Then 
       	                vmessage := 'Customer Number in file :'||vSysCustomerNum ||' does not match with file name: '||vCustRow.Customer_Number;
                        raise Failed;
                  End IF;
               End If;


  		vTabRow.Tax_Code_ID       	:=  Price_Pkg.GetVatIDbyrate(vTabRow.T_TaxRate);
                     if VTabRow.Tax_Code_ID <= 0 Then 
       	                vmessage := 'Item:'|| vTabRow.T_ItemName ||' has Invalid VAT Rate';
                        raise Failed;
                  End IF; 
                begin
                 vUnitPrice := vUnitPrice/(vBarCodeQty);
                Exception When Others Then Null;
                End;
                if nvl(vTabRow.T_TaxIncluded,'Y') = 'Y' Then 
                  vTabRow.T_Unitpriceinctax       := vUnitPrice;
                  vTabRow.T_Unitpriceexltax       := Price_Pkg.GetNetVatAmount(vTabRow.T_Unitpriceinctax,vTabrow.Tax_Code_ID);    
                  if vTabRow.T_Taxamount  is null then               
  		      vTabRow.T_Taxamount                := vTabRow.T_Unitpriceinctax  - vTabRow.T_Unitpriceexltax;
                  end If; 
                else
                   vTabRow.T_Unitpriceexltax      := vUnitPrice;
                   vTabRow.T_TaxAmount 		  := Price_Pkg.GetVatAmount(vTabRow.T_Unitpriceexltax,vTabRow.Tax_Code_ID); 
                   vTabRow.T_Unitpriceinctax      := vTabRow.T_Unitpriceexltax + vTabRow.T_TaxAmount;
                End IF; 
               -- if vbarcodeQty > 1 Then 
                   vTabRow.T_TaxAmount := vTabRow.T_TaxAmount * vTabRow.t_Quantity;
               -- End If; 
                Utility_Pkg.AssignErrorLevel('1A73');
  		vTabRow.T_Netprice              := vTabRow.T_Unitpriceexltax * VTabRow.t_Quantity;
                Utility_Pkg.AssignErrorLevel('1A8');

                Utility_Pkg.AssignErrorLevel('1A9');
  		vTabRow.T_Batchnumber           := vTabRow.Batch_name;
  		vTabRow.T_Groupnumber           := vTabRow.t_OrderNumber;
  		

                Utility_Pkg.AssignErrorLevel('1A10');

                Utility_Pkg.AssignErrorLevel('1A11');
  		vTabRow.Sub_Batch_Name          := vTabRow.Sub_Batch_Name;
  		vTabRow.Phase_Code              := 'READY TO PICK';
  		vTabRow.System_Status_Text      := 'IMPORT';
  		vTabRow.System_Status_Code      := '1';
  		vTabRow.Order_Source            := 'IMPORT';
  		vTabRow.Order_Category_Code     := 'WEB';
  		vTabRow.Order_Type              := 'SALESORDER';
  		vTabRow.Location_Id             := LocationRow.Location_Id;
  		vTabRow.Import_Template_Name    := vTabRow.Import_Template_Name;
  		vTabRow.User_Status             := vTabRow.User_Status;
  		vTabRow.User_Status_Text        := vTabRow.User_Status_Text;
  		vTabRow.Price_Hint              := nvl(vTabRow.Price_Hint,'SOURCE');

                Utility_Pkg.AssignErrorLevel('1A12');
                VRetValue                        := Inv_Pkg.Get_SuDetailsByBarcode(p_Barcode => vTabRow.T_Itemnumber,
                                                       p_ItemID => vItemRow.Item_Id,
                                                       p_SuID   => vTabRow.SU_ID,
                                                       p_SalesUnit => vTabRow.Sales_Unit,
			                               p_ItemNumber => vItemRow.Item_Number,
                                                       p_SuNumber   => vDummy,
                                                       p_ItemName => vItemRow.Item_name,
                                                       p_SuName   => vsuname);     
                 if VItemRow.Item_Id is Null Then 
                      if vImportMissingItems = 'YES' Then 
                                           VRetValue                        := Inv_Pkg.Get_SuDetailsByBarcode(p_Barcode => vMissingIteMNumber,
                                                       p_ItemID => vItemRow.Item_Id,
                                                       p_SuID   => vTabRow.SU_ID,
                                                       p_SalesUnit => vTabRow.Sales_Unit,
			                               p_ItemNumber => vItemRow.Item_Number,
                                                       p_SuNumber   => vDummy,
                                                       p_ItemName => vItemRow.Item_name,
                                                       p_SuName   => vsuname);     
                     End If; 
                  End If;                              
        	vTabRow.T_Itemname              := nvl(vTabRow.T_Itemname , vItemRow.Item_Name);
        	vTabRow.Item_ID                := vItemRow.Item_Id;

      Dbms_OutPut.Put_Line('Step 1a13');
                Utility_Pkg.AssignErrorLevel('1A13');
                if VTabRow.T_OrderNumber <> Nvl(VHeaderRow.T_OrderNumber,'--')  Then 
                   vHeaderRow := VtabRow;
                    vHeaderRow.Sl_No := 1; 
                   vFirstRow  := true;
                   Dbms_OutPut.Put_Line('*******Header Row');
                else
                   vfirstRow  := false;
                End If; 
      ---- Check for Duplicate Order Number;

         If SalOrder_Pkg.Is_ImportorderExist(p_CustomerId => vCustRow.Customer_ID,
                                             p_weborder=>vTabRow.t_orderNumber,
                                             p_BatchName => vTabRow.Batch_Name) = 1   then 
                 Goto Nothing;
            
             End If;
 
                Utility_Pkg.AssignErrorLevel('1A131');
                if vFirstRow then                    
                    if vTabRow.t_ItemNumber is Null 
                       Then 
                          vInsert := false;
                          Goto Nothing;
                    else
                          vTabRow.Sl_No := vHeaderRow.Sl_No;
                          vInsert := true;
                    End If;
                else
                     if vTabRow.t_ItemNumber is Null 
                       Then 
                          vInsert := false;
                          Goto Nothing;
                    else
                          vTabRow.Sl_No 	:= nvl( vHeaderRow.Sl_No,1);
                          vHeaderRow.Sl_No 	:= nvl( vHeaderRow.Sl_No,1) + 1; 
                       
                          vInsert := true;
                    End If;
                End If; 

                Utility_Pkg.AssignErrorLevel('1A132');
               if Not vInsert then Goto Nothing; End If; 
           -- Validate the record and insert into import table                        
             if nvl(vTabRow.Item_ID ,0) <= 0  Then 
       	        vMessage := 'Invalid item:'||vTabRow.T_ItemNumber||' : '||vTabRow.T_ItemName;
       	        Raise Failed;
             End If; 

  /*           If SalOrder_Pkg.Is_ImportorderExist(p_CustomerId => vCustRow.Customer_ID,
                                             p_weborder=>vTabRow.t_orderNumber,
                                             p_BatchName => vTabRow.Batch_Name) = 1   then 
                 Goto Nothing;
            
             vmessage := 'Batch has already been imported (duplicate order numbers):'||vTabRow.t_orderNumber;

                Utility_Pkg.AssignErrorLevel('1A14');
             raise Failed;
   
           End If;
*/
              if vTabRow.T_Buyername is null Then 
                vTabRow.T_Buyername         := vHeaderRow.T_Buyername;
  		vTabRow.T_Buyerphone        := vHeaderRow.T_Buyerphone;
  		vTabRow.T_Buyeremail        := vHeaderRow.T_Buyeremail;
  		vTabRow.T_Buyeraddress1     := vHeaderRow.T_Buyeraddress1;
  		vTabRow.T_Buyeraddress2     := vHeaderRow.T_Buyeraddress2;
  		vTabRow.T_Buyeraddress3     := vHeaderRow.T_Buyeraddress3;
  		vTabRow.T_Buyercity         := vHeaderRow.T_Buyercity;
  		vTabRow.T_Buyercounty       := vHeaderRow.T_Buyercounty;
  		vTabRow.T_Buyercountry      := vHeaderRow.T_Buyercountry;
  		vTabRow.T_Buyerpostcode     := vHeaderRow.T_Buyerpostcode;
                vTabRow.T_PostageService    := vHeaderRow.T_PostageService;
             
            End IF; 
             if vTabRow.T_Delivertoname is null Then 
                vTabRow.T_Delivertoname         := vTabRow.T_Buyername;
  		vTabRow.T_Delivertophone        := vTabRow.T_Buyerphone;
  		vTabRow.T_Delivertoemail        := vTabRow.T_Buyeremail;
  		vTabRow.T_Delivertoaddress1     := vTabRow.T_Buyeraddress1;
  		vTabRow.T_Delivertoaddress2     := vTabRow.T_Buyeraddress2;
  		vTabRow.T_Delivertoaddress3     := vTabRow.T_Buyeraddress3;
  		vTabRow.T_Delivertocity         := vTabRow.T_Buyercity;
  		vTabRow.T_Delivertocounty       := vTabRow.T_Buyercounty;
  		vTabRow.T_Delivertocountry      := vTabRow.T_Buyercountry;
  		vTabRow.T_Delivertopostcode     := vTabRow.T_Buyerpostcode;
            End IF;

                Utility_Pkg.AssignErrorLevel('1A135');
            vTabRow.Import_Status := pub_Status; 
            vTabRow.Line_Number := pub_RecNo;
            if nvl(vTabRow.t_Linetotal,0) = 0 then 
                    VtabRow.t_Postage 	:= Nvl(VtabRow.t_Postage,vHeaderRow.t_Postage);
                   -- DeugMessage('Postage:'||VtabRow.t_Postage);
                 vTabRow.T_LineTotal := vTabRow.t_NetPrice + nvl(vTabRow.t_Postage,0)+
                                   nvl(vTabRow.t_TaxAmount,0) + nvl(vTabRow.t_Insurance,0) +
                                   nvl(vTabRow.T_AdditionalCharges,0) -
                                    nvl(vTabRow.T_Discount,0);
           End If; 
    
                Utility_Pkg.AssignErrorLevel('1A137');
           if vInsertBatch Then 
                      -- Insert Batch Header First
                        vBatchRow.Batch_Id         	:= -1;
                        vBatchRow.Last_Update_Date      := sysdate;
                        vBatchRow.Last_Updated_By       := -1;
                        vBatchRow.Creation_Date         := sysdate;
                        vBatchRow.Created_By            := -1;
                        vBatchRow.Bu_Id         	:= LocationRow.BU_ID;
                        vBatchRow.Attribute1         	:= null;
                        vBatchRow.Attribute2         	:= null;
                        vBatchRow.Attribute3         	:= null;
                        vBatchRow.Attribute4         	:= null;
                        vBatchRow.Order_Header_Id       := null;
                        vBatchRow.Customer_Id           := vCustRow.Customer_ID;
                        vBatchRow.Customer_Number       := vCustRow.Customer_Number;
                        vBatchRow.Customer_Name         := vCustRow.Customer_Name;
                Utility_Pkg.AssignErrorLevel('1A138');
                        vBatchRow.Batch_Name            := p_Filename;
                        vBatchRow.Import_Date           := sysdate;
                        vBatchRow.Import_Status         := sysdate;
                        vBatchRow.Phase_Code            := 'IMPORTING';
                        vBatchRow.System_Status_Text    := null;
                        vBatchRow.System_Status_Code    := 'IMPORT';
                        vBatchRow.Order_Source          := 'IMPORT';
                        vBatchRow.Order_Category_Code   := 'WEB';
                        vBatchRow.Order_Type            := 'SALESORDER';
                        vBatchRow.Location_Id           := LocationRow.Location_Id;
                        vBatchRow.Import_Template_Name  := Null;
                        vBatchRow.User_Status           := Null;
                        vBatchRow.User_Status_Text      := Null;
                        vBatchRow.Price_Hint            := 'SOURCE';
                        vBatchRow.Total_Lines           := 0;
                        vBatchRow.Lines_Rejected        := 0;
                        vBatchRow.Lines_Ok              := 0;
                        vBatchRow.Net_Total             := 0;
                        vBatchRow.Tax_Total             := 0;
                        vBatchRow.Discount_Total        := 0;
                        vBatchRow.Insurance_Total       := 0;
                        vBatchRow.Postage_Total         := 0;
                Utility_Pkg.AssignErrorLevel('1A139');
                        vBatchRow.Gross_Total           := 0;
                        vBatchRow.Additional_Total      := 0;
                        vBatchRow.Other_Total           := 0;
                        vBAtchRow.ORder_Currency_code   := Cmn_Common_Pkg.Get_SysOptionVal('CURRENCY_CODE');
                        vBAtchRow.pay_Currency_code     := vBAtchRow.ORder_Currency_code;
                   
                Utility_Pkg.AssignErrorLevel('1A139A');
                  Dbms_OutPut.Put_Line('***** Batch Creating:'||vBatchRow.Batch_ID);
                  AR_SOIMPORT_BATCHAPI('INSERT',vBatchRow);

                Utility_Pkg.AssignErrorLevel('1A139B');
                  vInsertBatch := false;
                  Dbms_OutPut.Put_Line('Batch Created :'||vBatchRow.Batch_ID);
                  if vBatchRow.Batch_ID <= 0 Then 
                     vMessage := 'Batch already exists or failed to create:'||p_Filename;
                     raise failed;
                  End If; 
              End If;   -- End of batch header
                Utility_Pkg.AssignErrorLevel('1A1310');
                if vCustRow.Price_Import_Hint = 'SYSTEM' and vItemName not like '%UNKNOWN%' Then 
                  /*   ToOLRow.ORDER_UNIT_SP :=  PRICE_PKG.GetSalesPrice(p_ReturnType  => 'NOVAT',
                           p_ItemId          => i.Item_Id,
                       p_SuID            => i.SU_Id,
                       p_SalesUnit       =>  ToOLRow.Sales_Unit,
                       p_Quantity        => Round(Nvl(ToOLRow.QTY_ORDERED_UNITS,Nvl(ToOLRow.QTY_PICKED_UNITS,1))/ToOLRow.Sales_Unit),
                       p_CustomerID      => ToOHRow.CUSTOMER_ID,
                       p_CustomerName    => vCustRow.Customer_Name,
                       p_TaxCodeID       => ToOLRow.TAX_CODE_ID,
                       p_ActualSP        => ToOLRow.ITEM_UNIT_SP,
                       p_DerivedSp       => ToOLRow.OFFER_UNIT_SP,
                       p_LocationId      => ToOHRow.PAYTO_LOCATION_ID,
                       p_PriceType       =>  vPriceType,
                       p_totalAmount         =>   ToOHRow.Net_Total,
                       p_ItemPriceTypeID     => ToOLRow.ITEM_PRICE_TYPE_ID,
                       p_OrderPriceTypeID     => ToOLRow.ORDER_PRICE_TYPE_ID,
                       p_OfferPriceTypeID     => ToOLRow.OFFER_PRICE_TYPE_ID,
                       p_NetAmount            => ToOLRow.Net_Amount,
                       p_SavedUnitSP          => ToOLRow.Saved_Unit_Sp,
                       p_SavedNetAmount       => ToOLRow.Saved_Net_Amount,
                       p_Markup              => vMarkup,
                       p_OfferType           => ToOLRow.OFFER_TYPE,
                       p_OfferText           => ToOLRow.OFFER_TEXT,
                       p_SPSource            => vSPSource,
                       p_MesgCode            => vMesgCode,
                       p_MesgStatus          => vMesgStatus,
                       p_ErrorPos            => vErrorPos);
    */
      null;

                 End If;

               VtabRow.Batch_Id := VBatchRow.Batch_ID;
               
                Utility_Pkg.AssignErrorLevel('1A1311');
               AR_SALESORDER_IMPORTAPI('INSERT',VtabRow);
               vHeaderRow.t_Postage := Null;
                       vBatchRow.Total_Lines           := vBatchRow.Total_Lines + 1;
                        vBatchRow.Lines_Rejected        := 0;
                        vBatchRow.Lines_Ok              := vBatchRow.Lines_Ok + 1; 
                        vBatchRow.Net_Total             := vBatchRow.Net_Total + vTabRow.T_Netprice;
                        vBatchRow.Tax_Total             :=  vBatchRow.Tax_Total + vTabRow.t_TaxAmount;
                        vBatchRow.Discount_Total        := vBatchRow.Discount_Total + nvl(vTabRow.t_Discount,0);
                        vBatchRow.Insurance_Total       := vBatchRow.Insurance_Total + nvl(VtabRow.t_Insurance,0);
                        vBatchRow.Postage_Total         := vBatchRow.Postage_Total  + nvl(VtabRow.t_Postage,0);
                        vBatchRow.Additional_Total      := 0; 
                        vBatchRow.Other_Total           := 0;
                        vBatchRow.Gross_Total           :=  vBatchRow.Net_Total + vBatchRow.Tax_Total  
                                                           + vBatchRow.Insurance_Total + vBatchRow.Postage_Total + 
                                                           vBatchRow.Additional_Total + vBatchRow.Other_Total  - vBatchRow.Discount_Total;
                Utility_Pkg.AssignErrorLevel('1A1312');
   	<<nothing>> 
           Null;
    
   	end Loop;
     if vBatchRow.Batch_ID > 0 Then 
          vBatchRow.Import_Status := 'IMPORTED';
          vBatchRow.Phase_Code := 'IMPORTED';
          AR_SOIMPORT_BATCHAPI('UPDATE',vBatchRow);           
     End If; 
                Utility_Pkg.AssignErrorLevel('1A1313');
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'SALSORDER File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);

SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'SALES ORDER IMPORT',
                         p_Desc       => 'File Imported',
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'AR_SALESORDER_IMPORT',
                         p_ObjectID1  => Null
                        );

                Utility_Pkg.AssignErrorLevel('1A1314');
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
  Utility_Pkg.CloseFile(pub_FileId);
Exception 
 When Failed Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm||' =='||vMessage);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,vTemplateCode||':Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage);
When Others Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,vTemplateCode||':Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
End;

--------------------------------------------------------------------------------

Function Is_ImportBatchExist(p_Batch in Varchar2) Return  number
Is
Retvalue Number;
Begin
if p_Batch is Null Then Return(1); End If;
Select nvl(count(1),0)
into   Retvalue
From   Cmn_Import_BATCH
Where  batch_name = p_Batch;
if RetValue > 0 Then 
 Return(1);
End If;
Return(0);
Exception When Others Then Return(0);
End;
----------------------------------------------------------------

Function Is_ImportBatchApproved(p_Batch in Varchar2) Return  number
Is
Retvalue Number;
Begin
if p_Batch is Null Then Return(1); End If;
Select nvl(count(1),0)
into   Retvalue
From   Cmn_Import_BATCH
Where  batch_name = p_Batch
And    Import_Status = 'APPROVED';
if RetValue > 0 Then 
 Return(1);
End If;
Return(0);
Exception When Others Then Return(0);
End;
----------------------------------------------------------------
Procedure Import_Customers(p_Hint  		In Varchar2 Default 'CUSTOMER',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null)
IS
   vTabRow         AR_CUSTOMER_IMPORT%RowType;
   vHeaderRow      AR_CUSTOMER_IMPORT%RowType;
   vBatchRow       CMN_IMPORT_BATCH%RowType;
   vTempValue     Varchar2(4000);
   vCustRow       Ar_CUstomers%RowType;
   vCustOldRow       Ar_CUstomers%RowType;
   vOrderId       Number(10);
   vSlNo          Number := 1;
   vErrorCount    Number := 0;
   VRetValue      Number;
   vMessage      Varchar2(1000);
   vSuname        varchar2(100);
   vDummy         varchar2(240);
   vTotalOtherAmount Number(12,2);
   vInstock       Number;
   failed         Exception;   
   vBatchArray    Utility_Pkg.CharTab;
   vCustomerNumber Varchar2(30);
   vLocationID    number(10);
   vLocationNum    number(20);
   LocationRow    INV_LOCATIONS%ROWTYPE;
   vStatus        Number(10);
   vInsert        Boolean := false;
   vUnitPrice     Number(12,2);
   vBarcodeQty    Number(12,2);
   vFirstRow      Boolean := false;
   vInsertBatch      Boolean := true;
   vSysCustomerNum Varchar2(140);
   vWebCustomerNum Varchar2(140);
   vWebCustomerName Varchar2(140);
   vTemplateCode  Varchar2(10);
   vFileOrderNumber Varchar2(100);
Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'CUSTOMER IMPORT',
                         p_logType   => 'ORACLE INBOUND',
                         p_logDesc   => 'READING FILE:'||p_Filename,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 
  pub_Filename := p_Filename;
  if ImpExp_Pkg.Is_ImportBatchExist(upper(p_FileName)) = 1 then
     vMessage := 'Batch has already been imported:'||p_FileName;
     Raise Failed;
   end if;  
  -- Split File Name 
   Utility_Pkg.SplitLine(pub_Filename||'_','_',vBatchArray); 
   if vBatchArray(1) not like 'CUST_%' Then 
     vMEssage := 'File Prefix must be CUST';
     Raise Failed;
   End If;
   vTemplateCode := nvl(Replace(vBatchArray(1),'CUST'),'0');
 -- Check Location Number 
  begin
   vLocationNum := vBatchArray(2);
   vLocationId := Location_Pkg.GetLocationIdByNum(vLocationNum);
   LocationRow.Location_name := Inv_Pkg.GetLocationName(vLocationId);
  INV_LOCATIONSAPI('SELECT',LocationRow);
  if LocationRow.Location_Name is Null Then 
     Raise no_data_Found;
  End If; 
  Exception When Others then 
     vMEssage 		:= 'Invalid Location Number in File:'||vLocationNum;
     Raise Failed;
  End;  
  -- Start Reading File    	 		 
    Pub_FileId 		:= Utility_Pkg.OpenFile(p_FileName,P_INDIRECTORY,'r');
    Pub_RecNo 		:= 0;
    Pub_Delimiter  	:= p_Delimiter;
    IgnoreHeaderRecord;
    vTotalOtherAmount 	:= 0;
    vHeaderRow 		:= Null;
    vInsertBatch        := true;
    While 1 = 1  
   	Loop
                pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 
   	        Pub_CharTab.delete;
   		VTabRow := Null;
                pub_Status := 'OK';
   		Pub_MaxColumns := 0 ;
   		Pub_ColIndex   := 1;
   		Utility_Pkg.SplitLine(pub_CurrentLine||pub_Delimiter,pub_Delimiter,Pub_CharTab);
   		Pub_MaxColumns := Pub_CharTab.Count;
   		Pub_RecNo := Pub_Recno + 1;
          	VTabRow.Import_Status  := Nvl( VTabRow.Import_Status,'INSERT');
                Utility_Pkg.AssignErrorLevel('1A'); 
                vTabRow.Import_ID        	:= -1;
   		vTabRow.Last_Update_Date        := sysdate;
  		vTabRow.Last_Updated_By         := -1;
  		vTabRow.Creation_Date           := sysdate;
  		vTabRow.Created_By              := -1;
  		vTabRow.Bu_Id                   := LocationRow.BU_ID;
  		vTabRow.Update_Source           := 'IMPORT';
                vtabRow.Line_Number             := Pub_RecNo;
                Utility_Pkg.AssignErrorLevel('1A2');
  		vTabRow.Attribute1              := vTabRow.Attribute1;
  		vTabRow.Attribute2              := vTabRow.Attribute2;
  		vTabRow.Attribute3              := vTabRow.Attribute3;
  		vTabRow.Attribute4              := vTabRow.Attribute4;
 		vTabRow.Customer_Id  		:= -1;
                vTabRow.Location_Id  		:= LocationRow.Location_ID;
 		vTabRow.Import_Template_Name  	:= 'DEFAULT';
 		vTabRow.User_Status  		:= Null;
 		vTabRow.User_Status_Text  	:= Null;
 		vTabRow.Import_Hint  		:= Null;
 		vTabRow.Import_Date  		:= Sysdate;
 		vTabRow.Import_Status  		:= 'OK';
 		vTabRow.Phase_Code  		:= 'NEW';
 		vTabRow.System_Status_Text  	:= null;
 		vTabRow.System_Status_Code  	:= null;
            -- Start Read From File 
 		vTabRow.Customer_Number  	:= AssignColumnValue(getcolvalue,'V',30,'Customer_Number');
 		vTabRow.Customer_Name  		:= AssignColumnValue(getcolvalue,'V',140,'Customer_Name');
 		vTabRow.Title  			:= AssignColumnValue(getcolvalue,'V',10,'Title');
 		vTabRow.Contact_First_Name  	:= AssignColumnValue(getcolvalue,'V',40,'Contact_First_Name');
 		vTabRow.Contact_Last_Name  	:= AssignColumnValue(getcolvalue,'V',40,'Contract_Last_Name');
 		vTabRow.Vat_Registration_No  	:= AssignColumnValue(getcolvalue,'V',40,'Vat_Registration_No');
 		vTabRow.Phone1  		:= AssignColumnValue(getcolvalue,'V',30,'Phone1');
 		vTabRow.Phone2  		:= AssignColumnValue(getcolvalue,'V',30,'Phone2');
 		vTabRow.Fax  			:= AssignColumnValue(getcolvalue,'V',30,'Fax');
 		vTabRow.Mobile  		:= AssignColumnValue(getcolvalue,'V',30,'Mobile');
 		vTabRow.Email  			:= AssignColumnValue(getcolvalue,'V',240,'Email');
 		vTabRow.Billto_Address  	:= AssignColumnValue(getcolvalue,'V',240,'Billto_Address');
 		vTabRow.Billto_City  		:= AssignColumnValue(getcolvalue,'V',40,'Billto_City');
 		vTabRow.Billto_County  		:= AssignColumnValue(getcolvalue,'V',50,'Billto_County');
 		vTabRow.Billto_Post_Code  	:= AssignColumnValue(getcolvalue,'V',15,'Billto_Post_Code');
 		vTabRow.Billto_Country  	:= AssignColumnValue(getcolvalue,'V',20,'Billto_Country');
 		vTabRow.Shipto_Address  	:= AssignColumnValue(getcolvalue,'V',240,'Shipto_Address');
 		vTabRow.Shipto_City  		:= AssignColumnValue(getcolvalue,'V',40,'Shipto_City');
 		vTabRow.Shipto_County  		:= AssignColumnValue(getcolvalue,'V',50,'Shipto_County');
 		vTabRow.Shipto_Post_Code  	:= AssignColumnValue(getcolvalue,'V',15,'Shipto_Post_Code');
 		vTabRow.Shipto_Country  	:= AssignColumnValue(getcolvalue,'V',20,'Shipto_Country');
 		vTabRow.User_Name  		:= AssignColumnValue(getcolvalue,'V',30,'User_Name');
 		vTabRow.User_Password  		:= AssignColumnValue(getcolvalue,'V',100,'User_Password','ASITIS');
 		vTabRow.Account_Customer  	:= AssignColumnValue(getcolvalue,'V',1,'Account_Customer');
 		vTabRow.Credit_Limit  		:= AssignColumnValue(getcolvalue,'N',22,'Credit_Limit');
 		vTabRow.Customer_On_Hold  	:= AssignColumnValue(getcolvalue,'V',1,'Customer_On_Hold');
 		vTabRow.Hold_Reason  		:= AssignColumnValue(getcolvalue,'V',100,'Hold_Reason');
 		vTabRow.Customer_Price_Level  	:= AssignColumnValue(getcolvalue,'N',22,'Customer_Price_Level');
 		vTabRow.Customer_Markup_Down  	:= AssignColumnValue(getcolvalue,'N',22,'Customer_Markup_Down');
 		vTabRow.Customer_Type  		:= Nvl(AssignColumnValue(getcolvalue,'V',30,'Customer_Type'),'WEBCUSTOMER');
           -- End Reading 
                vTabRow.Customer_Price_Level  	:= null;
 		vTabRow.Customer_Markup_Down  	:= null;
 		vTabRow.Credit_Limit  		:= null;
 		
                Utility_Pkg.AssignErrorLevel('1A3');
            vCustOldRow.Customer_ID := Customer_Pkg.CustIDByNumber(VTabRow.Customer_Number);
            AR_CUSTOMERSAPI('SELECT',vCustOldRow);
            if vCustOldRow.Customer_Number is not null 
               Then
               vTabRow.System_Status_Text  	:= 'Customer already exists';
 		vTabRow.System_Status_Code  	:= 'UPDATE';
            End IF;

                Utility_Pkg.AssignErrorLevel('1A4');
           if not  Cmn_Common_Pkg.Is_CountryCodeExist(vTabRow.Shipto_Country)
             Then 
               vTabRow.System_Status_Text  	:= 'Invalid ship to country code';
 	       vTabRow.System_Status_Code  	:= 'ERROR';
 	       vTabRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 

                Utility_Pkg.AssignErrorLevel('1A5');
          if not  Cmn_Common_Pkg.Is_CountryCodeExist(vTabRow.Billto_Country)
             Then 
               vTabRow.System_Status_Text  	:= 'Invalid bill to country code';
 	       vTabRow.System_Status_Code  	:= 'ERROR';
 	       vTabRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  Customer_Pkg.Is_CustTypecodeExist(vTabRow.Customer_Type)
             Then 
               vTabRow.System_Status_Text  	:= 'Invalid  customer type';
 	       vTabRow.System_Status_Code  	:= 'ERROR';
 	       vTabRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           
                Utility_Pkg.AssignErrorLevel('1A6');
           if not  Customer_Pkg.Is_CustHoldReasonExist(vTabRow.Hold_Reason )
             Then 
               vTabRow.System_Status_Text  	:= 'Invalid  hold reason';
 	       vTabRow.System_Status_Code  	:= 'ERROR';
 	       vTabRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 


                Utility_Pkg.AssignErrorLevel('1A7');
               if vInsertBatch Then 
              -- Insert Batch Header First
                        vBatchRow.Batch_Id         	:= -1;
                        vBatchRow.Last_Update_Date      := sysdate;
                        vBatchRow.Last_Updated_By       := -1;
                        vBatchRow.Creation_Date         := sysdate;
                        vBatchRow.Created_By            := -1;
                        vBatchRow.Bu_Id         	:= LocationRow.BU_ID;
                        vBatchRow.Attribute1         	:= null;
                        vBatchRow.Attribute2         	:= null;
                        vBatchRow.Attribute3         	:= null;
                        vBatchRow.Attribute4         	:= null;
                        vBatchRow.Batch_Name            := Upper(p_Filename);
                        vBatchRow.Import_Date           := sysdate;
                        vBatchRow.Import_Status         := 'IMPORTING';
                        vBatchRow.Phase_Code            := 'IMPORTING';
                        vBatchRow.System_Status_Text    := null;
                        vBatchRow.System_Status_Code    := 'IMPORT';
                        vBatchRow.Location_Id           := LocationRow.Location_Id;
                        vBatchRow.Import_Template_Name  := Null;
                        vBatchRow.User_Status           := Null;
                        vBatchRow.User_Status_Text      := Null;
                        vBatchRow.Total_Lines           := 0;
                        vBatchRow.Lines_Rejected        := 0;
                        vBatchRow.Lines_Ok              := 0;
                  	Dbms_OutPut.Put_Line('*****Batch Creating :'||vBatchRow.Batch_ID);
                  	CMN_IMPORT_BATCHAPI('INSERT',vBatchRow);
                  	vInsertBatch := false;
                  	Dbms_OutPut.Put_Line('Batch Created :'||vBatchRow.Batch_ID);
                  		if vBatchRow.Batch_ID <= 0 Then 
                     			vMessage := 'Failed to create  the batch :'||p_Filename;
                     			raise failed;
                  		End If; 
              End If;   -- End of batch header
                Utility_Pkg.AssignErrorLevel('1A11');
            vTabrow.Batch_ID := vBatchRow.Batch_ID;
            AR_CUSTOMER_IMPORTAPI('INSERT',vTabRow);

   	<<nothing>> 
           Dbms_OutPut.Put_Line('Nothing:'||vTabRow.System_Status_Text);
    
   	end Loop;
     if vBatchRow.Batch_ID > 0 Then 
          vBatchRow.Import_Status := 'IMPORTED';
          vBatchRow.Phase_Code := 'IMPORTED'; 
          Update CMN_IMPORT_BATCH 
          Set    Import_Status =  vBatchRow.Import_Status,
                 Phase_Code    =  vBatchRow.Phase_Code
          Where Batch_Id = vBatchRow.Batch_ID;
     End If; 

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'CUSTOMER File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'Customer ImportT',
                         p_Desc       => 'File Imported',
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'AR_CUSTOMER_IMPORT',
                         p_ObjectID1  => Null
                        );
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
  Utility_Pkg.CloseFile(pub_FileId);
Exception 
 When Failed Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
When Others Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
End;		    
--------------------------------------------------------------------------------------
Function IncludeExclude_ItemBatch(p_BatchId   In Number,
                                  p_itemId    In Number,
                                  p_Hint      In Varchar2 Default Null)
 Return Number
Is
 vCtr   Number := 0;
 retvalue Number;
begin
 if p_BatchId is Null or p_Hint is Null Then Return(1); End If;
 Select count(1)
 Into   vctr 
 From   Inv_Item_Batch_Lines batch
 Where  Batch.Batch_ID = p_BatchId
 And    Batch.Item_Id  = p_ItemId;
 if p_Hint = 'INCLUDE' and vCtr > 0 
   Then Return (1);
 End If;
  if p_Hint = 'INCLUDE' and vCtr <=  0 
   Then Return (0);
 End If;
  if p_Hint = 'EXCLUDE' and vCtr > 0 
   Then Return (0);
 End If;
  if p_Hint = 'EXCLUDE' and vCtr <=  0 
   Then Return (1);
 End If;
 Return(1);

Exception When Others Then Return(1);
End;
----------------------------------------------------------------------------
Procedure Import_parties(p_Hint  		In Varchar2 Default 'PARTIES',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null)
IS
   
   vTempValue     Varchar2(4000);
   vPartyRow       CRM_Parties%RowType;
   vPartyOldRow    CRM_Parties%RowType;
   ContactRow     Cmn_Contacts%RowType;
   vSource	  Varchar2(30) := 'PARTY';
   vOrderId       Number(10);
   vSlNo          Number := 1;
   vErrorCount    Number := 0;
   VRetValue      Number;
   vMessage      Varchar2(1000);
   vSuname        varchar2(100);
   vDummy         varchar2(240);
   vTotalOtherAmount Number(12,2);
   vInstock       Number;
   failed         Exception;   
   vBatchArray    Utility_Pkg.CharTab;
   vPartyomerNumber Varchar2(30);
   vLocationID    number(10);
   vLocationNum    number(20);
   LocationRow    INV_LOCATIONS%ROWTYPE;
   vStatus        Number(10);
   vInsert        Boolean := false;
   vUnitPrice     Number(12,2);
   vBarcodeQty    Number(12,2);
   vFirstRow      Boolean := false;
   vInsertBatch      Boolean := true;
   vSysCustomerNum Varchar2(140);
   vWebCustomerNum Varchar2(140);
   vWebCustomerName Varchar2(140);
   vTemplateCode  Varchar2(10);
   vFileOrderNumber Varchar2(100);
Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'PARTY IMPORT',
                         p_logType   => 'ORACLE INBOUND',
                         p_logDesc   => 'READING FILE:'||p_Filename,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 
  pub_Filename := p_Filename;
 
  -- Start Reading File    	 		 
    Pub_FileId 		:= Utility_Pkg.OpenFile(p_FileName,P_INDIRECTORY,'r');
    Pub_RecNo 		:= 0;
    Pub_Delimiter  	:= p_Delimiter;
    IgnoreHeaderRecord;
    vTotalOtherAmount 	:= 0;
    vInsertBatch        := true;
    While 1 = 1  
   	Loop
                pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 
   	        Pub_CharTab.delete;
   		VPartyRow := Null;
   		ContactRow := Null;
                pub_Status := 'OK';
   		Pub_MaxColumns := 0 ;
   		Pub_ColIndex   := 1;
   		Utility_Pkg.SplitLine(pub_CurrentLine||pub_Delimiter,pub_Delimiter,Pub_CharTab);
   		Pub_MaxColumns := Pub_CharTab.Count;
   		Pub_RecNo := Pub_Recno + 1;
                Utility_Pkg.AssignErrorLevel('1A'); 
                vPartyRow.Party_ID        	:= -1;
   		vPartyRow.Last_Update_Date        := sysdate;
  		vPartyRow.Last_Updated_By         := -1;
  		vPartyRow.Creation_Date           := sysdate;
  		vPartyRow.Created_By              := -1;
  		vPartyRow.Bu_Id                   := Location_Pkg.Get_BuIDByLocID(p_LocationID);
  		vPartyRow.Update_Source           := 'IMPORT';
                vPArtyRow.Party_Source_Id         := 0;
                Utility_Pkg.AssignErrorLevel('1A2');
		vPartyRow.Party_Source  	:= AssignColumnValue(getcolvalue,'V',30,'Party_Source');
		vPartyRow.Party_Name  		:= AssignColumnValue(getcolvalue,'V',240,'Party_Name');
		vPartyRow.Party_Group_Code  	:= AssignColumnValue(getcolvalue,'V',30,'Party_Group_Code');
		vPartyRow.Party_Type_Code  	:= AssignColumnValue(getcolvalue,'V',30,'Party_Type_Code');
		vPartyRow.Contact_Firstname  	:= AssignColumnValue(getcolvalue,'V',140,'first');
		vPartyRow.Contact_Middlename  	:= AssignColumnValue(getcolvalue,'V',140,'middle');
		vPartyRow.Contact_Lastname  	:= AssignColumnValue(getcolvalue,'V',140,'last');
		vPartyRow.Contact_Title 	:= AssignColumnValue(getcolvalue,'V',30,'title');
		vPartyRow.Contact_Gender  	:= AssignColumnValue(getcolvalue,'V',30,'gender');
		vPartyRow.Address  		:= AssignColumnValue(getcolvalue,'V',255,'Address');
		vPartyRow.City  		:= AssignColumnValue(getcolvalue,'V',40,'City');
		vPartyRow.County  		:= AssignColumnValue(getcolvalue,'V',40,'County');
		vPartyRow.Country_Code  	:= AssignColumnValue(getcolvalue,'V',10,'Country_Code');
		vPartyRow.Post_Code  		:= AssignColumnValue(getcolvalue,'V',10,'Post_Code');
		vPartyRow.Phone_Office  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Office');
		vPartyRow.Phone_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Business');
		vPartyRow.Phone_Mobile  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Mobile');
		vPartyRow.Phone_Others  	:= AssignColumnValue(getcolvalue,'V',255,'Phone_Others');
		vPartyRow.Fax_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Fax_Business');
		vPartyRow.Fax_Others  		:= AssignColumnValue(getcolvalue,'V',255,'Fax_Others');
		vPartyRow.Email  		:= AssignColumnValue(getcolvalue,'V',255,'Email');
		vPartyRow.Email1  		:= AssignColumnValue(getcolvalue,'V',255,'Email1');
		vPartyRow.Email2  		:= AssignColumnValue(getcolvalue,'V',255,'Email2');
		vPartyRow.Email3  		:= AssignColumnValue(getcolvalue,'V',255,'Email3');
		vPartyRow.Www  			:= AssignColumnValue(getcolvalue,'V',240,'Www');
		vPartyRow.Primary_Party_Id  	:= AssignColumnValue(getcolvalue,'N',22,'Primary_Party_Id');
		vPartyRow.Active 		:= AssignColumnValue(getcolvalue,'V',1,'Active');
		vPartyRow.Include_In_Mailshot  	:= AssignColumnValue(getcolvalue,'V',1,'Include_In_Mailshot');
		vPartyRow.Contact_Method_Code  	:= AssignColumnValue(getcolvalue,'V',30,'Contact_Method_Code');
		vPartyRow.Subscription_Type  	:= AssignColumnValue(getcolvalue,'V',30,'Subscription_Type');
		vPartyRow.Subscription_Date  	:= AssignColumnValue(getcolvalue,'D',7,'Subscription_Date');
		vPartyRow.Subscription_Method  	:= AssignColumnValue(getcolvalue,'V',30,'Subscription_Method');
		vPartyRow.Subscribed_By  	:= AssignColumnValue(getcolvalue,'V',200,'Subscribed_By');
		vPartyRow.Subscription_Notes  	:= AssignColumnValue(getcolvalue,'V',4000,'Subscription_Notes');
		vPartyRow.Customer_Id  		:= AssignColumnValue(getcolvalue,'N',22,'Customer_Id');
		vPartyRow.Supplier_Id  		:= AssignColumnValue(getcolvalue,'N',22,'Supplier_Id');
		vPartyRow.User_Id  		:= AssignColumnValue(getcolvalue,'N',22,'User_Id');
		vPartyRow.Contact_Id  		:= AssignColumnValue(getcolvalue,'N',22,'Contact_Id');
           if not  Cmn_Common_Pkg.Is_CountryCodeExist(vPartyRow.Country_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid ship to country code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContactMethodExist(vPartyRow.Contact_Method_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact method code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partygroupExist(vPartyRow.party_group_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party group code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partytypeExist(vPartyRow.party_type_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party type code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 

		ContactRow.Contact_Source_Id  	:= vPArtyRow.Party_ID;
	  	ContactRow.Identifier  		:= AssignColumnValue(getcolvalue,'V',30,'Identifier');
		ContactRow.Contact_Type_Code  	:= AssignColumnValue(getcolvalue,'V',30,'Contact_Type_Code');
		ContactRow.Contact_Group_Code  	:= AssignColumnValue(getcolvalue,'V',30,'Contact_Group_Code');
		ContactRow.Name  		:= AssignColumnValue(getcolvalue,'V',240,'Name');
		ContactRow.Address  		:= AssignColumnValue(getcolvalue,'V',255,'Address');
		ContactRow.City  		:= AssignColumnValue(getcolvalue,'V',40,'City');
		ContactRow.County  		:= AssignColumnValue(getcolvalue,'V',40,'County');
		ContactRow.Country_Code  	:= AssignColumnValue(getcolvalue,'V',10,'Country_Code');
		ContactRow.Post_Code  		:= AssignColumnValue(getcolvalue,'V',10,'Post_Code');
		ContactRow.Phone_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Business');
		ContactRow.Phone_Home  		:= AssignColumnValue(getcolvalue,'V',20,'Phone_Home');
		ContactRow.Phone_Mobile  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Mobile');
		ContactRow.Phone_Others  	:= AssignColumnValue(getcolvalue,'V',255,'Phone_Others');
		ContactRow.Fax_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Fax_Business');
		ContactRow.Fax_Others  		:= AssignColumnValue(getcolvalue,'V',255,'Fax_Others');
		ContactRow.Email  		:= AssignColumnValue(getcolvalue,'V',255,'Email');
		ContactRow.Active  		:= AssignColumnValue(getcolvalue,'V',1,'Active');
	 	ContactRow.Include_In_Mailshot  := AssignColumnValue(getcolvalue,'V',1,'Include_In_Mailshot');
		ContactRow.Contact_Method_Code  := AssignColumnValue(getcolvalue,'V',30,'Contact_Method_Code');
		ContactRow.Update_Source  	:= 'IMPORT';
		ContactRow.Bu_Id  		:= vPartyRow.Bu_ID;
		ContactRow.Created_By  		:= vPartyRow.Created_by;
		ContactRow.Last_Updated_By      := vPartyRow.Last_Updated_By;
            if ContactRow.Identifier is Not Null and ContactRow.Name is Not Null then 

              if not  Cmn_Common_Pkg.Is_CountryCodeExist(ContactRow.Country_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid ship to country code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContactMethodExist(ContactRow.Contact_Method_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact method code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContactgroupExist(ContactRow.Contact_group_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact group code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContacttypeExist(ContactRow.Contact_type_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact type code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           End If; 
               
               vPArtyRow.Party_ID := Crm_Pkg.Get_PartyIdByAddress(p_Source    => vSource ,
                              					  p_Name  => vPartyRow.Party_Name,
                              					  p_Address => vPartyRow.Address,
                             					  p_PostCode => vPartyRow.Post_Code);
               vPArtyRow.Party_ID  := Nvl(vPArtyRow.Party_ID,-1);
               if vPArtyRow.Party_ID <= 0 Then 
                 
                vPartyRow.Address := Nvl(vPArtyRow.Address,'.');
                 CRM_PARTIESAPI('INSERTUPDATE',vPArtyRow);
               End If;
             if ContactRow.Identifier is Not Null and ContactRow.Name is Not Null then 
                ContactRow.Contact_Source 	:= vSource;
                ContactRow.Contact_Source_Id    := vPartyRow.Party_Id;
                ContactRow.Contact_ID := Crm_Pkg.Get_ContactIdBySource(p_Source     => vSource ,
			       p_Identifier  => ContactRow.Identifier,
			       p_name        => ContactRow.Name,
                               p_SourceId   =>  ContactRow.Contact_Source_ID);
               ContactRow.Contact_ID := Nvl(ContactRow.Contact_ID,-1);
               if ContactRow.Contact_ID <= 0 then 
                ContactRow.Address := Nvl(ContactRow.Address,'.');
                Cmn_contactsAPI('INSERTUPDATE',ContactRow);
               end If; 
             End If; 
               
   	<<nothing>> 
           Null;
    
   	end Loop;
   
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'PARTIES File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'PARTY ImportT',
                         p_Desc       => 'File Imported',
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'CRM_PARTIES',
                         p_ObjectID1  => Null
                        );
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
  Utility_Pkg.CloseFile(pub_FileId);
Exception 
 When Failed Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage);
When Others Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
End;		    
--------------------------------------------------------------------------------------

Procedure Import_partiesYahoo(p_Hint  		In Varchar2 Default 'PARTIES',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null)
IS
   
   vTempValue     Varchar2(4000);
   vPartyRow       CRM_Parties%RowType;
   ContactRow     Cmn_Contacts%RowType;
   vSource	  Varchar2(30) := 'PARTY';
   vErrorCount    Number := 0;
   VRetValue      Number;
   vMessage      Varchar2(1000);
   vDummy         varchar2(240);
   failed         Exception;
   vLocationID    number(10);
   vLocationNum    number(20);
   LocationRow    INV_LOCATIONS%ROWTYPE;
   vStatus        Number(10);
   vInsert        Boolean := false;
   vUnitPrice     Number(12,2);
   vFirstName      Varchar2(400);
   vmiddleName      Varchar2(400);
   vlastName      Varchar2(400);
   vemail         varchar2(1000);
Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'PARTY IMPORT',
                         p_logType   => 'ORACLE INBOUND',
                         p_logDesc   => 'READING FILE:'||p_Filename,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 
  pub_Filename := p_Filename;
 
  -- Start Reading File    	 		 
    Pub_FileId 		:= Utility_Pkg.OpenFile(p_FileName,P_INDIRECTORY,'r');
    Pub_RecNo 		:= 0;
    Pub_Delimiter  	:= p_Delimiter;
    IgnoreHeaderRecord;
    While 1 = 1  
   	Loop
                pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 
   	        Pub_CharTab.delete;
   		VPartyRow := Null;
   		ContactRow := Null;
                pub_Status := 'OK';
   		Pub_MaxColumns := 0 ;
   		Pub_ColIndex   := 1;
   		Utility_Pkg.SplitLine(pub_CurrentLine||pub_Delimiter,pub_Delimiter,Pub_CharTab);
   		Pub_MaxColumns := Pub_CharTab.Count;
   		Pub_RecNo := Pub_Recno + 1;
                Utility_Pkg.AssignErrorLevel('1A'); 
                vPartyRow.Party_ID        	:= -1;
   		vPartyRow.Last_Update_Date        := sysdate;
  		vPartyRow.Last_Updated_By         := -1;
  		vPartyRow.Creation_Date           := sysdate;
  		vPartyRow.Created_By              := -1;
  		vPartyRow.Bu_Id                   := Location_Pkg.Get_BuIDByLocID(p_LocationID);
  		vPartyRow.Update_Source           := 'IMPORT';
                Utility_Pkg.AssignErrorLevel('1A2');
		vPartyRow.Party_Source  	:= 'YAHOO';

		vPartyRow.Contact_Firstname  	:= AssignColumnValue(getcolvalue,'V',140,'first');
		vPartyRow.Contact_Middlename  	:= AssignColumnValue(getcolvalue,'V',140,'middle');
		vPartyRow.Contact_Lastname  	:= AssignColumnValue(getcolvalue,'V',140,'last');
		vPartyRow.Contact_Title 	:= null;
		vPartyRow.Contact_Gender  	:= null;
		vPartyRow.Party_Name  		:= Replace(vPartyRow.Contact_Firstname||' '||vPartyRow.Contact_Middlename
                                                   ||' '||vPartyRow.Contact_Lastname,'  ',' ');
		vPartyRow.Party_Group_Code  	:= 'YAHOO';
		vPartyRow.Party_Type_Code  	:= 'CONTACT';
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'nickname');
		vemail  		:= AssignColumnValue(getcolvalue,'V',255,'Email');
                if vemail is null or length(vemail) > 100 Then 
                  goto nothing;
                End If;
                vPartyRow.Email := vemail;
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'Category');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'Distribution');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'messid ');
		vPartyRow.Phone_Office  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Office');
		vPartyRow.Phone_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Business');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'pager');
		vPartyRow.Fax_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Fax_Business');
		vPartyRow.Phone_Mobile  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Mobile');
		vPartyRow.Phone_Others  	:= AssignColumnValue(getcolvalue,'V',255,'Phone_Others');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'yahoo phone');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'primary');
		vemail  		:= AssignColumnValue(getcolvalue,'V',255,'Email1');
                if vemail is null or length(vemail) > 100 Then 
                  goto nothing;
                End If;
                vPartyRow.Email1 := vemail;
		vemail  		:= AssignColumnValue(getcolvalue,'V',255,'Email2');
                if vemail is null or length(vemail) > 100 Then 
                  goto nothing;
                End If;
                vPartyRow.Email2 := vemail;

		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'pwww');
		vPartyRow.Www  			:= AssignColumnValue(getcolvalue,'V',240,'Www');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'title');
		vDummy  		:= AssignColumnValue(getcolvalue,'V',255,'company');
		vPartyRow.Address  		:= AssignColumnValue(getcolvalue,'V',255,'Address');
		vPartyRow.City  		:= AssignColumnValue(getcolvalue,'V',40,'City');
		vPartyRow.County  		:= AssignColumnValue(getcolvalue,'V',40,'County');
		vPartyRow.Post_Code  		:= AssignColumnValue(getcolvalue,'V',10,'Post_Code');
		vPartyRow.Country_Code  	:= nvl(AssignColumnValue(getcolvalue,'V',10,'Country_Code'),'UK');
		vPartyRow.Active 		:= 'Y';
		vPartyRow.Include_In_Mailshot  	:= 'N';
		vPartyRow.Contact_Method_Code  	:= 'ANY';
                vPartyRow.Party_Name            := Nvl(vPArtyRow.Party_Name,vPArtyRow.Email);
                vPartyRow.Party_Source_Id       := 0;
           if not  Cmn_Common_Pkg.Is_CountryCodeExist(vPartyRow.Country_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  country code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContactMethodExist(vPartyRow.Contact_Method_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact method code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partygroupExist(vPartyRow.party_group_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party group code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partytypeExist(vPartyRow.party_type_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party type code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If;                
               vPArtyRow.Party_ID := Crm_Pkg.Get_PartyIdByAddress(p_Source    => vSource ,
                              					  p_Name  => vPartyRow.Party_Name,
                              					  p_Address => vPartyRow.Address,
                             					  p_PostCode => vPartyRow.Post_Code);
               vPArtyRow.Party_ID  := Nvl(vPArtyRow.Party_ID,-1);
               if vPArtyRow.Party_ID <= 0 Then 
                 Dbms_OutPut.Put_Line('=============== Inserting:'||vPArtyRow.Party_name);
                vPartyRow.Address := Nvl(vPArtyRow.Address,'.');
                 CRM_PARTIESAPI('INSERTUPDATE',vPArtyRow);
               End If;
               
   	<<nothing>> 
           Null;
           Dbms_OutPut.Put_Line('=============== Inserting:'||vPartyRow.System_Status_Text);
    
   	end Loop;
  
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'YAHOO File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'PARTY ImportT',
                         p_Desc       => 'File Imported',
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'CRM_PARTIES',
                         p_ObjectID1  => Null
                        );
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
  Utility_Pkg.CloseFile(pub_FileId);
Exception 
 When Failed Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage);
When Others Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||Chr(10)||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
End;		    
--------------------------------------------------------------------------------------

Procedure Import_partiesOutlook(p_Hint  		In Varchar2 Default 'OUTLOOK',
                            p_FileName 		In Varchar2 Default Null,
                            p_Delimiter 	In Varchar2 Default ',',
                            p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                            p_WIPDirectory 	In Varchar2 Default 'DIR_IMPORTORDERWIP',
                            p_FAILEDDirectory 	In Varchar2 Default 'DIR_ARIMPORTFAILED',
                            p_LOGDirectory 	In Varchar2 Default 'DIR_ARIMPORTLOG',
                            p_NotifGroup 	In Varchar2 Default Null,
                            p_LocationID        In Varchar2 Default Null)
IS
   
   vTempValue     Varchar2(4000);
   vPartyRow       CRM_Parties%RowType;
   ContactRow     Cmn_Contacts%RowType;
   vSource	  Varchar2(30) := 'PARTY';
   vErrorCount    Number := 0;
   VRetValue      Number;
   vMessage      Varchar2(1000);
   vDummy         varchar2(240);
   failed         Exception;
   vLocationID    number(10);
   vLocationNum    number(20);
   LocationRow    INV_LOCATIONS%ROWTYPE;
   vStatus        Number(10);
   vInsert        Boolean := false;
   vUnitPrice     Number(12,2);
   vFirstName      Varchar2(400);
   vmiddleName      Varchar2(400);
   vlastName      Varchar2(400);
Begin

SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'PARTY IMPORT',
                         p_logType   => 'ORACLE INBOUND',
                         p_logDesc   => 'READING FILE:'||p_Filename,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 
  pub_Filename := p_Filename;
 
  -- Start Reading File    	 		 
    Pub_FileId 		:= Utility_Pkg.OpenFile(p_FileName,P_INDIRECTORY,'r');
    Pub_RecNo 		:= 0;
    Pub_Delimiter  	:= p_Delimiter;
    IgnoreHeaderRecord;
    While 1 = 1  
   	Loop
                pub_CurrentLine := Utility_Pkg.Read(Pub_FileId);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 
   	        Pub_CharTab.delete;
   		VPartyRow := Null;
   		ContactRow := Null;
                pub_Status := 'OK';
   		Pub_MaxColumns := 0 ;
   		Pub_ColIndex   := 1;
   		Utility_Pkg.SplitLine(pub_CurrentLine||pub_Delimiter,pub_Delimiter,Pub_CharTab);
   		Pub_MaxColumns := Pub_CharTab.Count;
   		Pub_RecNo := Pub_Recno + 1;
                Utility_Pkg.AssignErrorLevel('1A'); 
                vPartyRow.Party_ID        	:= -1;
   		vPartyRow.Last_Update_Date        := sysdate;
  		vPartyRow.Last_Updated_By         := -1;
  		vPartyRow.Creation_Date           := sysdate;
  		vPartyRow.Created_By              := -1;
  		vPartyRow.Bu_Id                   := Location_Pkg.Get_BuIDByLocID(p_LocationID);
  		vPartyRow.Update_Source           := 'IMPORT';
                vPArtyRow.Party_Source_ID	  := 0;
                Utility_Pkg.AssignErrorLevel('1A2');
/*
First Name,Middle Name,Last Name,Title,Suffix,Initials,Web Page,Gender,Birthday,Anniversary,Location,Language,Internet Free Busy,Notes,E-mail Address,E-mail 2 Address,E-mail 3 Address,Primary Phone,Home Phone,Home Phone 2,Mobile Phone,Pager,Home Fax,Home Address,Home Street,Home Street 2,Home Street 3,Home Address PO Box,Home City,Home State,Home Postal Code,Home Country,Spouse,Children,Manager's Name,Assistant's Name,Referred By,Company Main Phone,Business Phone,Business Phone 2,Business Fax,Assistant's Phone,Company,Job Title,Department,Office Location,Organizational ID Number,Profession,Account,Business Address,Business Street,Business Street 2,Business Street 3,Business Address PO Box,Business City,Business State,Business Postal Code,Business Country,Other Phone,Other Fax,Other Address,Other Street,Other Street 2,Other Street 3,Other Address PO Box,Other City,Other State,Other Postal Code,Other Country,Callback,Car Phone,ISDN,Radio Phone,TTY/TDD Phone,Telex,User 1,User 2,User 3,User 4,Keywords,Mileage,Hobby,Billing Information,Directory Server,Sensitivity,Priority,Private,Categories
*/
		vPartyRow.Party_Source  	:=  p_Hint;
                vFirstName 			:= AssignColumnValue(getcolvalue,'V',240,'first');
                vmiddleName 			:= AssignColumnValue(getcolvalue,'V',240,'middle');
                vlastName 			:= AssignColumnValue(getcolvalue,'V',240,'last');
		vPartyRow.Party_Name  		:= Replace(vFirstName||' '||vMiddleName||' '||vLastName,'  ',' ');
		vPartyRow.Party_Group_Code  	:= p_Hint;
		vPartyRow.Party_Type_Code  	:= 'CONTACT';
		nextcolIndex; -- Title
		nextcolIndex; -- Suffix
		nextcolIndex;  -- Initial
		vPartyRow.Www  			:= AssignColumnValue(getcolvalue,'V',240,'Www');
                NextcolIndex;  -- Gender
                NextcolIndex;  -- bday
                NextcolIndex;  -- Anniversary
                NextcolIndex;  -- Location
                NextcolIndex;  -- Language
                NextcolIndex;  -- Inter
                NextcolIndex;  -- Noes
		vPartyRow.Email  		:= AssignColumnValue(getcolvalue,'V',255,'Email');
                NextcolIndex;  -- email2
                NextcolIndex;  -- email3
                for i in 1..19
                  Loop
                    NextcolIndex;  -- Skip Home 
                End Loop;
		vPartyRow.Phone_Office  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Office');
		vPartyRow.Phone_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Business');
		vPartyRow.Phone_Others  	:= AssignColumnValue(getcolvalue,'V',255,'Phone_Others');
		vPartyRow.Fax_Business  	:= AssignColumnValue(getcolvalue,'V',20,'Fax_Business');
		vPartyRow.Phone_Mobile  	:= AssignColumnValue(getcolvalue,'V',20,'Phone_Mobile');
                for i in 1..9
                  Loop
                    NextcolIndex;  -- Skip Home 
                End Loop;
                NextcolIndex;  -- pager
		vPartyRow.Address  		:= AssignColumnValue(getcolvalue,'V',255,'Address');
		vPartyRow.Address  		:= vPartyRow.Address||' '||AssignColumnValue(getcolvalue,'V',255,'Address');
		vPartyRow.Address  		:= vPartyRow.Address||' '||AssignColumnValue(getcolvalue,'V',255,'Address');
                    NextcolIndex;  -- Skip Home 
                    NextcolIndex;  -- Skip Home 
		vPartyRow.City  		:= AssignColumnValue(getcolvalue,'V',40,'City');
		vPartyRow.County  		:= AssignColumnValue(getcolvalue,'V',40,'County');
		vPartyRow.Post_Code  		:= AssignColumnValue(getcolvalue,'V',10,'Post_Code');
		vPartyRow.Country_Code  	:= nvl(AssignColumnValue(getcolvalue,'V',10,'Country_Code'),'UK');
		vPartyRow.Active 		:= 'Y';
		vPartyRow.Include_In_Mailshot  	:= 'N';
		vPartyRow.Contact_Method_Code  	:= 'ANY';
                vPartyRow.Party_Name            := Nvl(vPArtyRow.Party_Name,vPArtyRow.Email);
           if not  Cmn_Common_Pkg.Is_CountryCodeExist(vPartyRow.Country_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  country code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_ContactMethodExist(vPartyRow.Contact_Method_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  contact method code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partygroupExist(vPartyRow.party_group_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party group code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If; 
           if not  CRM_Pkg.Is_partytypeExist(vPartyRow.party_type_Code)
             Then 
               vPartyRow.System_Status_Text  	:= 'Invalid  party type code';
 	       vPartyRow.System_Status_Code  	:= 'ERROR';
 	       vPartyRow.Import_Status	  	:= 'ERROR';
               goto Nothing;
           End If;                
               vPArtyRow.Party_ID := Crm_Pkg.Get_PartyIdByAddress(p_Source    => vSource ,
                              					  p_Name  => vPartyRow.Party_Name,
                              					  p_Address => vPartyRow.Address,
                             					  p_PostCode => vPartyRow.Post_Code);
               vPArtyRow.Party_ID  := Nvl(vPArtyRow.Party_ID,-1);
               if vPArtyRow.Party_ID <= 0 Then 
                vPartyRow.Address := Nvl(vPArtyRow.Address,'.');
                 CRM_PARTIESAPI('INSERTUPDATE',vPArtyRow);
               End If;
               
   	<<nothing>> 
           Null;
    
   	end Loop;
   
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'OUTLOOK File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => 'PARTY ImportT',
                         p_Desc       => 'File Imported',
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'CRM_PARTIES',
                         p_ObjectID1  => Null
                        );
 vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
  Utility_Pkg.CloseFile(pub_FileId);
Exception 
 When Failed Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage);
When Others Then 
  vStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
  Utility_Pkg.CloseFile(pub_FileId);
  Raise_Application_Error(-20001,'Line:'||Pub_RecNo||',Pos:' || Utility_Pkg.getErrorLevel||',Value:'||pub_Currvalue||':'||Vmessage||':'||SqlErrm);
End;	
------------------------------------------------------------
Procedure Get_ContactString(p_Target 		in Varchar2 Default 'ORATECH',
			      p_FirstLine	out Varchar2,
			      p_HeaderList	out Varchar2 ,
			      p_ColumnList	out Varchar2 ,
			      p_LastLine	out Varchar2  )
Is
Begin
 if p_Target in ( 'YAHOO','GMAIL') then 
    p_HeaderList := ':First,:Middle,:Last,:Nickname,:Email,:Category,:Distribution Lists,:Messenger ID,:Home,:Work,:Pager,:Fax,:Mobile,:Other,:'||
                    'Yahoo! Phone,:Primary,:Alternate Email 1,:Alternate Email 2,:Personal Website,:Business Website,:Title,:Company,:'||
                    'Work Address,:Work City,:Work County,:Work ZIP,:Work Country,:Home Address,:Home City,:Home State,:Home ZIP,:'||
                    'Home Country,:Birthday,:Anniversary,:Custom 1,:Custom 2,:Custom 3,:Custom 4,:Comments,:Messenger ID1,:'||
                    'Messenger ID2,:Messenger ID3,:Messenger ID4,:Messenger ID5,:Messenger ID6,:Messenger ID7,:Messenger ID8,:Messenger ID9,:'||
                    'Skype ID,:IRC ID,:ICQ ID,:Google ID,:MSN ID,:AIM ID,:QQ ID';
    p_ColumnList := '5,6,7,999,21,999,999,999,15,16,999,19,20,999,999,22,23,25,25,8,2,10,11,12,14,13,10,11,12,14,13,999,999,'||
                    '999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999,999'; 
 elsif p_Target in ( 'OUTLOOK') then 
    p_HeaderList := ':Title,:First Name,:Middle Name,:Last Name,:Suffix,:Company,:Department,:Job Title,:Business Street,:Business Street 2'||
		',:Business Street 3,:Business City,:Business State,:Business Postal Code,:Business Country,:Home Street,:Home Street 2'||
		',:Home Street 3,:Home City,:Home State,:Home Postal Code,:Home Country,:Other Street,:Other Street 2,:Other Street 3'||
		',:Other City,:Other State,:Other Postal Code,:Other Country,:Assistants Phone,:Business Fax,:Business Phone,:Business Phone 2'||
		',:Callback,:Car Phone,:Company Main Phone,:Home Fax,:Home Phone,:Home Phone 2,:ISDN,:Mobile Phone,:Other Fax,:Other Phone'||
		',:Pager,:Primary Phone,:Radio Phone,:TTY/TDD Phone,:Telex,:Account,:Anniversary,:Assistants Name,:Billing Information'||
		',:Birthday,:Categories,:Children,:E-mail Address,:E-mail Display Name,:E-mail 2 Address,:E-mail 2 Display Name,:E-mail 3 Address'||
		',:E-mail 3 Display Name,:Gender,:Government ID Number,:Hobby,:Initials,:Keywords,:Language,:Location,:Mileage,:Notes'||
		',:Office Location,:Organisational ID Number,:PO Box,:Private,:Profession,:Referred By,:Spouse,:User 1,:User 2,:User 3,:User 4,:Web Page';
    p_ColumnList := '8,5,6,7,999,2,999,999,10,999'||
                    ',999,11,12,14,13,10,999'||
                    ',999,11,12,14,13,999,999,999'||
                    ',999,999,999,999,999,19,16,15'||
                    ',999,17,16,15,20,999,999,999,17,20,18'||
                    ',999,16,999,999,999,999,999,999,999'||
                    ',999,999,21,999,22,999,23,999'||
                    ',24,999,9,999,999,999,999,999,999,999'||
                    ',999,999,999,999,999,999,999,999,999,999,999,999,999';
 End If;



Exception When Others Then Null;
End; 
	    
-----------------------------------------------------------------------------------------------
Procedure Export_Contacts01(  p_Target		In Varchar2 Default 'ORATECH',
                              p_FileName  	In Varchar2 Default 'contacts.csv',
                              p_Directory 	In Varchar2 Default 'DIR_OUTBOUND',
                              p_Delimiter 	In Varchar2 Default ',',
                              p_ForWhom   	In Varchar2 Default Null,
                              p_NotifGroup 	In Varchar2 Default Null,
                              p_Hint       	In Varchar2 Default Null,
                              p_ContactbatchId  In Number   Default Null,
			      p_FirstLine	In Varchar2 Default Null,
			      p_HeaderList	In Varchar2 Default Null,
			      p_ColumnList	In Varchar2 Default Null,
			      p_LastLine	In Varchar2 Default Null )
IS
vDelimiter 		Varchar2(10);
vFileType  		Utility_Pkg.FileType;
vString    		Varchar2(20000);
vHeader    		varchar2(4000);
v_String  		Varchar2(4000);
v_Stock 		Number(10);
v_UnitSP 		Number;
v_PrimaryBarcode 	Varchar2(100);
v_Picturename 		Varchar2(400);
 Ispicture       	Varchar2(1) := 'N';
 IsNewProduct    	Varchar2(1) := 'A';
 InSpOffer       	Varchar2(1) := 'N';
 SpOfferText     	Varchar2(400);
v_ItemString      	Varchar2(4000);
vSuLoopCtr      	Number := 6;
vSuString       	Varchar2(4000);
vRetailPrice		Number;
vSuUnitSP               number;
v_section1  		Varchar2(4000);
v_section2  		Varchar2(4000);
v_section3  		Varchar2(4000);
vColumnList             Varchar2(4000);
vHeaderList             Varchar2(4000);
vfirstline                Varchar2(4000);
vlastline                 Varchar2(4000);
vBarcodeQty	        Number(10);
vSu1S5                  Varchar2(400);
vDefCurrency            Varchar2(100);
Begin
vDefCurrency := Price_Pkg.Get_DefaultCurrency;
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
Dbms_Output.put_Line('File Opened:');
if p_ColumnList is Null then 
 ImpExp_Pkg.Get_ContactString(p_Target 		=> p_Target,
			      p_FirstLine	=> vFirstLine,
			      p_HeaderList	=> vHeaderList,
			      p_ColumnList	=> vColumnList,
			      p_LastLine	=> vLastLine );
Else
 vColumnList 	:= p_columnList;
  vHeaderList 	:= p_HeaderList;
 vfirstline     	:= p_FirstLine;
 vlastline     	:= p_LastLine;
end If;
if vFirstLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vFirstLine);
End If; 
  v_String := 'Source'||p_Delimiter
               ||'Name'||p_Delimiter
               ||'GroupCode'||p_Delimiter
               ||'TypeCode'||p_Delimiter
               ||'FirstName'||p_Delimiter
               ||'Middle Name'||p_Delimiter
               ||'LastName'||p_Delimiter
               ||'Title'||p_Delimiter
               ||'Gender'||p_Delimiter
               ||'Address'||p_Delimiter
               ||'City'||p_Delimiter
               ||'County'||p_Delimiter
               ||'CountryCode'||p_Delimiter
               ||'PostCode'||p_Delimiter
               ||'Phone_Office'||p_Delimiter
               ||'Phone_Business'||p_Delimiter
               ||'Phone_Mobile'||p_Delimiter
               ||'Phone_Others'||p_Delimiter
               ||'Fax_Business'||p_Delimiter
               ||'Fax_Others'||p_Delimiter
               ||'Email'||p_Delimiter
               ||'Email1'||p_Delimiter
               ||'Email2'||p_Delimiter
               ||'Email3'||p_Delimiter
               ||'WWW'||P_Delimiter
               ||'Primary Party Id'||P_Delimiter
               ||'Active'||P_Delimiter
               ||'Mailshot(Y/N)'||p_Delimiter
               ||'ContactMethod'||p_Delimiter
               ||'SubScription Type'||p_Delimiter
               ||'Subscription date'||p_Delimiter
               ||'SubScription Method'||p_Delimiter
               ||'Subscribed by'||p_Delimiter
               ||'Subscription Notes'||p_Delimiter
               ||'Customer ID'||p_Delimiter
               ||'Supplier Id'||p_Delimiter
               ||'User ID'||p_Delimiter
               ||'Contact Id'||p_Delimiter
               ||'Contact Identifier'||p_Delimiter
               ||'Contact GroupCode'||p_Delimiter
               ||'Contact TypeCode'||p_Delimiter
               ||'Contact Name'||p_Delimiter
               ||'Contact Address'||p_Delimiter
               ||'Contact City'||p_Delimiter
               ||'Contact County'||p_Delimiter
               ||'Contact CountryCode'||p_Delimiter
               ||'Contact PostCode'||p_Delimiter
               ||'Conact Phone Business'||p_Delimiter
               ||'Contact Phone Home'||p_Delimiter
               ||'Contact Phone_Mobile'||p_Delimiter
               ||'Contact Phone_Others'||p_Delimiter
               ||'Contact Fax_Business'||p_Delimiter
               ||'Contact Fax_Others'||p_Delimiter
               ||'Contact Email'||p_Delimiter
               ||'Contact Active '||p_Delimiter
               ||'Contact MailShot(Y/N)'||p_Delimiter
               ||'Contact Mthod'||p_Delimiter;
    if vHeaderList is not null Then 
       v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vHeaderList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'HEADER');
    End If; 
 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
For i In (select * 
           From    CRM_PARTYContacts_V x
           Where (p_ContactBatchid is null or
                  x.Customer_Id in (Select c.Source_Object_Id1 
                                   from CRM_PARTYBATCH_V c
                                   Where  Batch_Id = c.Batch_ID)
                )
         Order By x.Party_Name
           )
 Loop
   v_String := Null; 
   v_String := 	i.Party_Source||p_Delimiter||
		i.Party_Name||p_Delimiter||
		i.Party_Group_Code||p_Delimiter||
		i.Party_Type_Code||p_Delimiter||
		i.Contact_Firstname||p_Delimiter||
		i.Contact_Middlename||p_Delimiter||
		i.Contact_Lastname||p_Delimiter||
		i.Contact_Title||p_Delimiter||
		i.Contact_Gender||p_Delimiter||
		i.Address||p_Delimiter||
		i.City||p_Delimiter||
		i.County||p_Delimiter||
		i.Country_Code||p_Delimiter||
		i.Post_Code||p_Delimiter||
		i.Phone_Office||p_Delimiter||
		i.Phone_Business||p_Delimiter||
		i.Phone_Mobile||p_Delimiter||
		i.Phone_Others||p_Delimiter||
		i.Fax_Business||p_Delimiter||
		i.Fax_Others||p_Delimiter||
		i.Email||p_Delimiter||		
                i.Email1||p_Delimiter||
		i.Email2||p_Delimiter||
		i.Email3||p_Delimiter||
		i.Www||p_Delimiter||
		i.Primary_Party_Id||p_Delimiter||
		i.Active||p_Delimiter||
		i.Include_In_Mailshot||p_Delimiter||
		i.Contact_Method_Code||p_Delimiter||
		i.Subscription_Type||p_Delimiter||
		i.Subscription_Date||p_Delimiter||
		i.Subscription_Method||p_Delimiter||
		i.Subscribed_By||p_Delimiter||
		i.Subscription_Notes||p_Delimiter||
		i.Record_Status||p_Delimiter||
		i.Customer_Id||p_Delimiter||
		i.Supplier_Id||p_Delimiter||
		i.User_Id||p_Delimiter||
		i.Contact_Id||p_Delimiter||
		i.Con_Identifier||p_Delimiter||
		i.Contact_Type_Code||p_Delimiter||
		i.Contact_Group_Code||p_Delimiter||
		i.Con_Name||p_Delimiter||
		i.Con_Address||p_Delimiter||
		i.Con_City||p_Delimiter||
		i.Con_County||p_Delimiter||
		i.Con_Country_Code||p_Delimiter||
		i.Con_Post_Code||p_Delimiter||
		i.Con_Phone_Business||p_Delimiter||
		i.Con_Phone_Home||p_Delimiter||
		i.Con_Phone_Mobile||p_Delimiter||
		i.Con_Phone_Others||p_Delimiter||
		i.Con_Fax_Business||p_Delimiter||
		i.Con_Fax_Others||p_Delimiter||
		i.Con_Email||p_Delimiter||
		i.Con_Active||p_Delimiter||
		i.Con_Include_In_Mailshot||p_Delimiter||
		i.Con_Contact_Method_Code||p_Delimiter;
    if vColumnList is not null Then 
     v_String := Utility02_Pkg.CompileColumnList(p_ActualString => v_String,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'BODY');
     End If; 

  Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
 
  <<nothing>>
     null;
 End Loop;

Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'CONTACTS File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
if vLastLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vLastLine);
End If; 

Utility_Pkg.closeFile(vFileType);

Exception When Others then 

Dbms_Output.put_Line('ERROR:'||SqlErrm);
Utility_Pkg.closeFile(vFileType);

End;
---------------------------------------------------------
Function Get_wwwMapCategoryDesc(p_SubCategoryID in Number,
				p_CustomerID    In Number,
			        p_Hint		In Varchar2 default 'DESCRIPTION')
 Return Varchar2
Is
Retvalue Varchar2(4000) := ',,';
Begin
if p_Hint = 'DESCRIPTION' Then Retvalue := Null; End If; 
if p_SubCategoryId is null or p_CustomerId is null Then Return(retvalue); End If;
if p_Hint = '4' Then 
  Retvalue := ','; 
End If; 
Select CASE 
       When p_Hint in ( 'ATTRIBUTES','DESCRIPTION') Then
           Decode(p_Hint,'ATTRIBUTES',Map_Attribute1||','||Map_Attribute2||','||Map_Attribute3,
                                     Sfn_RemoveSpecialChars(Map_Description))
       Else
          Decode(p_Hint,'4',Map_Attribute4,null)||','||
          www_Pkg.Get_NodePath(Map_Attribute4,'PLAY')
       End
Into   RetValue
From   Ar_Cust_Item_MapCategories
Where  Customer_Id = p_CustomerID
And    Sub_category_ID = p_SubCategoryId;
Return(RetValue);

Exception When Others Then Return(retvalue);

End;
--------------------------------------------------------------------
Procedure AutoImport(p_Hint  		In Varchar2 Default 'CUSTOMER',
		     p_FilePrefix	In Varchar2 Default 'CU%',
                     p_INDirectory 	In Varchar2 Default 'DIR_ARIMPORT',
                     p_FileName 	In Varchar2 Default Null,
                     p_NotifGroup 	In Varchar2 Default Null,
                     p_LocationID       In Varchar2 Default Null,
		     p_NextAction       In Varchar2 Default 'NONE',
		     p_HeaderRecord	In Varchar2 Default 'Y')
Is
DirName  Varchar2(400);
retvalue   number;
vmessage   varchar2(1000);
vHeaderID   Number;
MessageCode Varchar2(1000);
vRetOrderID  Number;
MessageCodeNum number;
--------------------------------------
   Procedure MoveFile(p_File in Varchar2 , p_toDir In Varchar2)
   Is
     begin
          Host_Command.Execute('MOVE '||DirName||p_File||'  '||DirName||p_toDir||'\'||p_File);
     Exception When Others then Null;
   End;
------------------------------------------
 Procedure WriteLogLine(P_Text in Varchar2) IS
  begin
       SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'INSERT',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => p_Hint||' IMPORT',
                         p_Desc       =>  p_Text,
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'AUTO IMPORT',
                         p_ObjectID1  => Null
                        );
   End;

Begin
  DirName := Utility02_Pkg.get_DirectoryPath(p_InDirectory);


SysLog_Pkg.HeaderID := SysLog_Pkg.Write_LogHeader(
                         p_Type      => 'INSERT',
                         p_HeaderID  => -1,
                         p_logName   => 'AUTO IMPORT',
                         p_logType   => p_Hint,
                         p_logDesc   => 'READING Directory:'||p_InDirectory|| 'Path:'||Dirname,
                         p_LogResult => 'START PROCESS',
                         p_UserID    => -1,
                         p_LocationID => p_LocationId); 

  if Dirname is null Then Return; End If;
   List_Directory(DirName);
  WriteLogLine('Reading Directory:'||Dirname);
  For i in (Select *
            from   Directory_Listing
            Where  Name like p_filePrefix
            And    Name = Nvl(p_Filename,Name)
           ) 
  Loop
   Dbms_OutPut.Put_Line(i.Name);
------------------------------ CUSTOMER -------------
   if p_Hint = 'CUSTOMER' then
       if ImpExp_Pkg.Is_ImportBatchExist(upper(i.name)) = 1 then
         WriteLogline('File already imported '||i.name);
          goto nothing;
        end if; 
    Begin  

         Dbms_OutPut.Put_Line('Importing Customer:'||i.Name);
          ImpExp_Pkg.Import_Customers(p_Hint  	=> 'CUSTOMER',
                            p_FileName 	 	=> i.Name,
                            p_INDirectory 	=> p_InDirectory,
                            p_NotifGroup 	=> p_NotifGroup,
                            p_LocationID        => p_LocationID);
         if p_NextAction = 'APPROVE' Then 
                 Retvalue := CUSTOMER_PKG.ImportCustomer(p_batchname => i.Name ,
                                                    p_Hint     =>  'CREATE',
                                                    p_MessageText => vMessage );
         End If; 
       Commit;
       MoveFile(i.Name,'success');
    Exception When Others Then  
          vMessage := SqlErrm;          
        pub_NumStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);        
       MoveFile(i.Name,'failed');
    End;  ---- CUSTOMER 

 ------------------------------SALES ORDER ----------------------------
   End If;
   if p_Hint = 'SALESORDER' then
      if SalOrder_Pkg.Is_ImportBatchExist(upper(i.name)) = 1 then
          WriteLogline('File already imported '||i.name);
        goto nothing;
      end if;
     Begin  -- IMPORT 
    
        Dbms_OutPut.Put_Line('Importing Order:'||i.Name);
          ImpExp_Pkg.Import_SalesOrder(p_Hint  	=>  'SALESORDER',
                              p_FileName 	 	=> i.Name,
                              p_INDirectory 	=> p_InDirectory,
                              p_NotifGroup 	=> p_NotifGroup,
                              p_LocationID        => p_LocationID,
			      p_HeaderRecord    => p_HeaderRecord);
    if p_NextAction Like  '%APPROVE%' Then       
         Dbms_OutPut.Put_Line('Approving  Order:'||i.Name);
         -- Returns Order Number
          Retvalue := SALORDER_PKG.CreateSo_FromImport(p_batchname => i.Name ,
                        p_Hint  => 'CREATE',
			p_OrderStatus => 'APPROVED',
                        p_MessageText => vMessage );
            WriteLogline('Order Approved ID : '||Retvalue);
        if RetValue > 0 and p_NextAction Like  '%AUTOPICK%' Then  
            vMessage := SALORDER2_PKG.AutoPick_The_Order(p_HeaderID => Retvalue ,
                                  p_UserId   => -1,
                                  p_Hint     => 'BYORDER');
            
            WriteLogline('Auto Pick : '||vMessage);
            if RetValue > 0 and p_NextAction Like  '%CLOSE%' Then  
            WriteLogline('Finalise Picking : '||RetValue);
            	MessageCode := SALORDER2_PKG.CHANGESTATUS(p_OrderNumber => null,
                         p_OrderId     => Retvalue,
                         p_NewStatus  => 'PICKED',
                         p_OldStatus  => Null,
                         p_MessageText => vMessage ,
                         p_MessageCode => MessageCodeNum );
                         
            WriteLogline('Finalised Picking : '||MessageCode);

           if MessageCode =  'OK' then      	  
                 vMessage := SALORDER2_PKG.ApplyAction(   p_ActionList => 'CLOSESALESORDER',
			  p_OrderNumber => Null,
                         p_OrderId       => Retvalue,
                         p_MessageText => vMessage,
                         p_MessageCode => MessageCodeNum,
                         p_Force       => 'NO', 
                         p_BillToLocationID => Null,
			 p_ShipToLocationID => Null,
			 p_NewOrderId  => vRetOrderID);

            WriteLogline('Closed the Order : '||vMessage);

           End If;  -- Finalise Picking       
       End If; -- close Sales Order 
       End If;  -- AutoPick 
      End If; -- APPROVE 
    commit;    
       MoveFile(i.Name,'success');
  Exception When Others Then 
    vMessage := SqlErrm;
    pub_NumStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);    
       MoveFile(i.Name,'failed');
  End;  -- IMPORT  

----------------------------------------------------
   End If;-- SALES ORDER 
   Dbms_Output.Put_Line('In Nothing');
    WriteLogline('Imported:'||vMessage);
/*
     SysLog_Pkg.LineID := SysLog_Pkg.Write_LogLine(
                         p_Type       => 'READING',
                         p_HeaderID   => SysLog_Pkg.HeaderID,
                         p_LineID     => -1,
                         p_Tag        => p_Hint||' IMPORT',
                         p_Desc       => 'Imported:'||vMessage,
                         p_longDesc   => Null,
                         p_Status     => 'OK',
                         p_ObjectName => 'AUTO IMPORT',
                         p_ObjectID1  => Null
                        );
 */

   Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> p_Hint||' import :  File :'||i.Name||' processed  on :'||sysdate,
                        p_text          => VMessage);
   <<nothing>>
    Null;

  
 end Loop;

 pub_NumStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,'SUCCESSFULL');
 commit;

exception When Others then 

 pub_NumStatus := SysLog_Pkg.Update_LogHeaderStatus(SysLog_Pkg.HeaderId,SqlErrm);
   Raise_Application_Error(-20001,'AutoImport Failed:'||SqlErrm);
end;
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
Procedure Export_ItemOffers(p_Delimiter In Varchar2 Default ',',
                            p_ForWhom   In Varchar2 Default Null,
                            p_FileName  In Varchar2 Default 'OFFER.txt',
                            p_Directory In Varchar2 Default 'DIR_OUTBOUND',
                            p_NotifGroup In Varchar2 Default Null,
                            p_Hint       In Varchar2 Default Null,
                            p_InStockOnly  In Varchar2 Default 'N',
			    p_FilterCriteria In Varchar2 Default Null,
			    p_Datasource     In varchar2 default null )
IS 

vDelimiter 		Varchar2(10);
vFileType  		Utility_Pkg.FileType;
vString    		Varchar2(20000);
vHeader    		varchar2(4000);
v_String  		Varchar2(4000);
v_Stock 		Number(10);
v_UnitSP 		Number;
v_PrimaryBarcode 	Varchar2(100);
v_Picturename 		Varchar2(400);
 Ispicture       	Varchar2(1) := 'N';
 IsNewProduct    	Varchar2(1) := 'A';
 InSpOffer       	Varchar2(1) := 'N';
 SpOfferText     	Varchar2(400);
v_ItemString      	Varchar2(4000);
vSuLoopCtr      	Number := 6;
vSuString       	Varchar2(4000);
vRetailPrice		Number;
vSuUnitSP               number;
v_section1  		Varchar2(4000);
v_section2  		Varchar2(4000);
v_section3  		Varchar2(4000);
vColumnList             Varchar2(4000);
vHeaderList             Varchar2(4000);
vfirstline                Varchar2(4000);
vlastline                 Varchar2(4000);
vBarcodeQty	        Number(10);
vSu1S5                  Varchar2(400);
vDefCurrency            Varchar2(100);
vGoogleStatus           Varchar2(400) := 'preorder';
vdatasource 	        varchar2(100);
Begin
vDefCurrency := Price_Pkg.Get_DefaultCurrency;
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);
vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
VdataSource := Nvl(p_DataSource,Cmn_Common_Pkg.GetTradingname);
Dbms_Output.put_Line('File Opened:');
  v_String := 'item_id'||p_Delimiter
               ||'item_number'||p_Delimiter
               ||'item_name'||p_Delimiter
               ||'category_id'||p_Delimiter
               ||'category_name'||p_Delimiter
               ||'sub_category_id'||p_Delimiter
               ||'sub_category_name'||p_Delimiter
               ||'Offer_Type'||p_Delimiter
               ||'Offer_Name'||p_Delimiter
               ||'Group_Code'||p_Delimiter
               ||'Promotion_Code'||p_Delimiter
               ||'Buy_Qty'||p_Delimiter
               ||'Free_Qty'||P_Delimiter
               ||'Free_Qty_At_Price'||P_Delimiter
               ||'Free_Qty_Price_Type'||P_Delimiter
               ||'Active'||P_Delimiter
               ||'Date_From'||P_Delimiter
               ||'Date_To'||P_Delimiter 
               ||'Free_item_id'||p_Delimiter
               ||'Free_item_number'||p_Delimiter
               ||'Free_item_name'||p_Delimiter
               ||'Free_Item_Qty'||P_Delimiter
               ||'Free_Item_Qty_At_Price'||P_Delimiter
               ||'Free_Item_Qty_Price_Type'||P_Delimiter;
 
 Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);

For i In (select i.Item_Id, i.item_Number,i.Item_Name,offer.Category_Id,cg.Category_name,
                 offer.sub_category_ID,scg.sub_Category_name,
                 offer.Offer_Type_Code,Offer.Promotion_Code,Offer.Group_Code,
                 Offer.offer_Name,io.Active,io.Date_from,io.Date_To,
                 Offer.Buy_Qty,Offer.Free_Qty,Offer.Free_Qty_At_Price,
                 offer.Free_Qty_Price_Type,
                 ItemStatus_Pkg.GetGroupStock(i.Item_ID) QtyInStock,
                 offer.Free_Item_Id,offer.Free_Item_Qty,offer.Free_Item_Qty_Price_Type,
                 offer.Free_Item_Qty_at_Price,
                 null free_Item_Number, Null Free_Item_Name
           From   Ar_Cust_Item_Offers io, inv_itemsCantoWWW_v i,  AR_cust_Item_Uploads x, ar_customers c,
                  Inv_Item_Categories cg, inv_Item_Sub_Categories scg,
                  PR_ALLITEMSOFFER_V offer
           Where   io.Active = 'Y'
           And     trunc(sysdate) between Trunc(nvl(io.Date_From,Sysdate)) and Trunc(nvl(io.Date_to,Sysdate))
           And     io.Customer_ID = c.Customer_ID
           And     io.Offer_Header_ID = Offer.Offer_header_ID 
           And     c.Customer_Number = p_ForWhom 
           And     C.Customer_Id = X.Customer_ID
           And     x.Upload_Item = 'Y'
           And     X.Item_Id = i.Item_ID
	   And     i.Item_ID = offer.Item_ID
	   And     x.Item_ID = Offer.Item_ID
           And    Offer.Sub_Category_ID   = scg.Sub_Category_ID
	   And    offer.Category_ID      = cg.Category_ID
           And   ( p_Hint in ('ALL') or  x.upload_Status in ('NEW','RELEASED') )          
           Order By Item_Number
           )
 Loop
  
  if i.qtyinstock <=0  and P_InstockOnly = 'Y' then
     goto nothing;
  end if;
   if i.Free_Item_ID Is Not Null Then 
     Select Item_Number,Item_Name 
     into   i.Free_Item_Number,i.Free_Item_Name
     From   Inv_Item_Masters
     Where  Item_ID = i.Free_Item_ID;
   End IF; 
   v_String :=  i.item_ID||p_Delimiter
                  ||i.item_number||p_Delimiter
                  ||i.item_Name||p_Delimiter
                ||i.CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS(i.CateGory_name)||p_Delimiter
               ||i.SUB_CATEGORY_ID||p_Delimiter
               ||SFN_REMOVESPECIALCHARS(i.Sub_Category_name)||p_Delimiter
               ||i.Offer_Type_Code||p_Delimiter
               ||i.Offer_Name||p_Delimiter
               ||i.Group_Code||p_Delimiter
               ||i.Promotion_Code||p_Delimiter
               ||i.Buy_Qty||p_Delimiter
               ||i.Free_Qty||P_Delimiter
               ||i.Free_Qty_At_Price||P_Delimiter
               ||i.Free_Qty_Price_Type||P_Delimiter
               ||i.active||P_Delimiter
               ||i.date_from||P_Delimiter
               ||i.date_to||P_Delimiter
               ||i.Free_item_ID||p_Delimiter
                  ||i.Free_item_number||p_Delimiter
                  ||i.Free_item_Name||p_Delimiter
               ||i.Free_Item_Qty||P_Delimiter
               ||i.Free_Item_Qty_At_Price||P_Delimiter
               ||i.Free_Item_Qty_Price_Type||P_Delimiter;
  

  Dbms_Output.put_Line('Writing Line:'||Substr(v_String,1,300));
  Utility_Pkg.Write(pfileId => vfileType,Wstring => v_String);
  
  <<nothing>>
     null;
 End Loop;


Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);
Utility_Pkg.closeFile(vFileType);

Exception When Others then 
Dbms_Output.put_Line('ERROR:'||SqlErrm);
Utility_Pkg.closeFile(vFileType);
Raise_Application_Error(-20001,sqlerrm);

End;
---------------------------------------------------------
---------------------------------------------------------

----------------------------------------------------------------------------

end IMPEXP_PKG;
/

Show Error;
