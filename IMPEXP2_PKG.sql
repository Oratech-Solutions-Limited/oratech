Create Or Replace Package IMPEXP2_PKG Is
--------------------------------------------
Procedure Stage_Items(       p_Hint       		In Varchar2 Default 'POPULATE',
			      p_ActionType		In Varchar2 Default 'REPLACE',
                              p_Delimiter 		In Varchar2 Default ',',
                              p_ForWhom   		In Varchar2 Default Null,
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',
			      p_BatchID	  		In Number Default Null,
			      p_ApplySUFilter 		In Number Default  0);
 			    
------------------------------------------------------------------
Procedure Write_To_SingleFile( p_ForWhom   		In Varchar2 Default Null,
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv', 
                              p_Header 			In Varchar2 Default Null,
			      p_COLUMNS 		In Varchar2 Default Null,
			      p_Hint       		In Varchar2 Default 'FILE',
			      p_ActionType		In Varchar2 Default 'WRITE',
                              p_Delimiter 		In Varchar2 Default ',',                              
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',			     
			      p_BatchID	  		In Number Default Null,			     
			      p_ApplySUFilter 		In Number Default  0);    
----------------------------------------------------------------------

Procedure Stage_ItemsLoop(       p_Hint       		In Varchar2 Default 'POPULATE',
			      p_ActionType		In Varchar2 Default 'REPLACE',
                              p_Delimiter 		In Varchar2 Default ',',
                              p_ForWhom   		In Varchar2 Default Null,
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',
			      p_BatchID	  		In Number Default Null,
			      p_ApplySUFilter 		In Number Default  0);
-------------------------------------------------------------------------------  
Procedure Write_To_Files( p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              	         p_File0  		In Varchar2 Default Null, 
                                         p_file0Header                 In Varchar2 Default null,
                                         p_File0Data                    In Varchar2 Default Null,
                              	         p_File1  		In Varchar2 Default Null, 
                                         p_file1Header                 In Varchar2 Default null,
                                         p_File1Data                    In Varchar2 Default Null,
                              	         p_File2  		In Varchar2 Default Null, 
                                         p_file2Header                 In Varchar2 Default null,
                                         p_File2Data                    In Varchar2 Default Null,
                              	         p_File3  		In Varchar2 Default Null, 
                                         p_file3Header                 In Varchar2 Default null,
                                         p_File3Data                    In Varchar2 Default Null,
                              	         p_File4  		In Varchar2 Default Null, 
                                         p_file4Header                 In Varchar2 Default null,
                                         p_File4Data                    In Varchar2 Default Null,
                              	         p_File5  		In Varchar2 Default Null, 
                                         p_file5Header                 In Varchar2 Default null,
                                         p_File5Data                    In Varchar2 Default Null,
                              	         p_File6 		In Varchar2 Default Null, 
                                         p_file6Header                 In Varchar2 Default null,
                                         p_File6Data                    In Varchar2 Default Null,
                              	         p_File7  		In Varchar2 Default Null, 
                                         p_file7Header                 In Varchar2 Default null,
                                         p_File7Data                    In Varchar2 Default Null,
                              	         p_File8  		In Varchar2 Default Null, 
                                         p_file8Header                 In Varchar2 Default null,
                                         p_File8Data                    In Varchar2 Default Null,
                              	         p_File9  		In Varchar2 Default Null, 
                                         p_file9Header                 In Varchar2 Default null,
                                         p_File9Data                    In Varchar2 Default Null,
                              	         p_File10  		In Varchar2 Default Null, 
                                         p_file10Header                 In Varchar2 Default null,
                                         p_File10Data                    In Varchar2 Default Null);    
----------------------------------------------------------------------------------------------------------------------------------------------------------
Function pop_export_header( p_ExportHeaderId               in NUMBER Default Null,
		              p_ExportName		In Varchar2 Default 'ITEMS',
		              p_ExportTYPE		In Varchar2 Default 'ITEMS',
                                             p_SourceName   		In Varchar2 Default 'WEBEXPORT',
			p_SourceId                     in NUMBER Default Null, 
                                               p_Hint       		In Varchar2 Default 'POPULATE',
	              		p_ActionType		In Varchar2 Default 'REPLACE',
			p_Param1                       in VARCHAR2 Default Null,
			p_Param2                       in VARCHAR2 Default Null,
			p_Param3                       in VARCHAR2 Default Null,
			p_Param4                       in VARCHAR2 Default Null,
			p_Param5                       in VARCHAR2 Default Null,
			p_Param6                       in VARCHAR2 Default Null,
			p_Param7                       in VARCHAR2 Default Null,
			p_Param8                       in VARCHAR2 Default Null,
			p_Param9                       in VARCHAR2 Default Null,
			p_Param10                      in VARCHAR2 Default Null,
			p_Param11                      in VARCHAR2 Default Null,
			p_Param12                      in VARCHAR2 Default Null,
			p_Param13                      in VARCHAR2 Default Null,
			p_Param14                      in VARCHAR2 Default Null,
			p_Param15                      in VARCHAR2 Default Null,
			p_Param16                      in VARCHAR2 Default Null,
			p_Param17                      in VARCHAR2 Default Null,
			p_Param18                      in VARCHAR2 Default Null,
			p_Param19                      in VARCHAR2 Default Null,
			p_Param20                      in VARCHAR2 Default Null)
 Return Number;
 ---------------------------------------------------------
Procedure pop_Export_Lines( p_ExportHeaderID		In Varchar2 Default Null,
			p_SlNo			In Number Default 0,
			p_SourceID_1		In number Default Null,
			p_Sourceid_2		In Number Default Null,
			p_SourceNumber		In Varchar2 Default Null,
			p_Data			In Varchar2 Default Null,
			p_DataType		In Varchar2 Default 'DATA',	
			p_Hint       		In Varchar2 Default 'POPULATE',
	                              p_ActionType		In Varchar2 Default 'REPLACE',
		              p_ExportName		In Varchar2 Default 'ITEMS',
		              p_ExportType		In Varchar2 Default 'ITEMS',
                                             p_SourceName   		In Varchar2 Default 'WEBEXPORT',		            		
                             	              p_Delimiter 		In Varchar2 Default ',',
                              		p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              		p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
			p_Statuscode	      in Varchar2 Default 'OK',
			p_StatusText	     in Varchar2 Default Null,
                             		 p_NotifGroup 		In Varchar2 Default Null, 
			p_SourceID_3		In number Default Null,
			p_Sourceid_4		In Number Default Null,
			p_Order_By1		In Number Default Null,
			p_Order_By2		In Number Default Null,
			p_Order_By3		In Number Default Null
);

-----------------------------------------
Procedure Validate_Exported_Lines(p_StatusText			 In Out Varchar2,
                                                         p_Identifier  			in Varchar2,
		                           p_Expression                                In Varchar2 Default Null,
			         p_ExpressionMessage		In Varchar2 Default Null,
		                          p_Value       			In Varchar2  Default Null,
			          p_ValuetoMatch		In Varchar2 Default Null,
			          p_ValueNotToMatch		In Varchar2 Default null );
-------------------------------------------------------------------------------
Procedure   Extract_View_Data(
                           p_ViewName 	In Varchar2,
	           p_Sql		In Varchar2 Default Null,
	           p_TargetType	In Varchar2  Default 'ARRAY',
	           p_SkipRows		In Number Default  0,
                           p_FileName 		In Varchar2  Default Null,
                           p_Where    		In Varchar2 Default Null,
                           p_OrderBy  		In Varchar2 Default Null,
                           p_DirName  		In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter 		In Varchar2 Default '|',
                           p_CallCode  		In Number Default 0,
                           p_Headers   		In Varchar2 Default Null,
                           p_NotifGroup 	In Varchar2 Default Null,
                           p_Hint       		In Varchar2 Default Null);
---------------------------------------------------------------------------------------

Procedure  ImpExp_By_Template(p_TemplateID	In Number,
				p_TemplateName 	In Varchar2 Default Null,
				p_Directory 	In Varchar2 Default Null,
                                        		p_File       	Varchar2 Default 'FILE1_FILE2_FILE3_FILE4.txt',
                                       		 p_Content    	Varchar2 Default Null,
                                        		p_TableName  	Varchar2 Default 'A',
                                        		p_ColumnList 	Varchar2 Default Null,
                                        		p_PrimaryKey   	Varchar2 Default 'Column2',
                                        		p_PrimaryKeyValue	Varchar2 Default ':2',
                                        		p_SeqName    	Varchar2 Default  NULL,
				p_DonotUpdate  	Varchar2 Default ',Column2,Column1,',
				p_NewLine    	Varchar2 Default CHR(10),
				p_Delimiter  	Varchar2 Default '|',
				p_TableOperation 	Varchar2 Default 'INSERT',
                                        		p_Hint       	Varchar2 Default 'FILETOTABLE');
----------------------------------------------------------------------------------

Function ImpExp_Copy_Template(p_TemplateId 		In Number,
			      p_TemplateName	In Varchar2 Default Null,
			      p_Hint		In Varchar2 Default 'EXPORTTOIMPORT')
 Return Number;

------------------------------------------------------------------------------------------------------------------
Function ImpExp_Create_Template(p_ObjectName                In Varchar2 ,
                                                         p_ImpExpType	In Varchar2 Default 'EXPORT',		
			          p_TemplateName	In Varchar2 Default Null,
			          p_TemplateId 	In Number Default Null,	
			         p_Hint		In Varchar2 Default 'NEW')
 Return Number;
---------------------------------------------------------------------------------------------------
end IMPEXP2_PKG;
/
Show Error
  
  
Create or Replace Package Body IMPEXP2_PKG Is

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
  v_ExpHeaders EXPORT_HEADERS%RowType;
  v_ExpLines   EXPORT_LINES%RowType;
---------------------------------------------------------
 Procedure col_ExpLines(p_colpos  In Number,
                   p_Value   In Varchar2,
                   p_format  In Varchar2 Default Null,
                   p_Hint    In Varchar2 Default Null)
IS
 vValue   Varchar2(2000);
Begin
vValue := p_Value;
 If p_Colpos = 1 Then v_ExpLines.Column1 := vValue;
Elsif p_Colpos = 2 Then  v_ExpLines.Column2  := vValue;
Elsif p_Colpos = 3 Then  v_ExpLines.Column3  := vValue;
Elsif p_Colpos = 4 Then  v_ExpLines.Column4  := vValue;
Elsif p_Colpos = 5 Then  v_ExpLines.Column5  := vValue;
Elsif p_Colpos = 6 Then  v_ExpLines.Column6  := vValue;
Elsif p_Colpos = 7 Then  v_ExpLines.Column7  := vValue;
Elsif p_Colpos = 8 Then  v_ExpLines.Column8  := vValue;
Elsif p_Colpos = 9 Then  v_ExpLines.Column9  := vValue;
Elsif p_Colpos = 10 Then  v_ExpLines.Column10  := vValue;
Elsif p_Colpos = 11 Then  v_ExpLines.Column11  := vValue;
Elsif p_Colpos = 12 Then  v_ExpLines.Column12  := vValue;
Elsif p_Colpos = 13 Then  v_ExpLines.Column13  := vValue;
Elsif p_Colpos = 14 Then  v_ExpLines.Column14  := vValue;
Elsif p_Colpos = 15 Then  v_ExpLines.Column15  := vValue;
Elsif p_Colpos = 16 Then  v_ExpLines.Column16  := vValue;
Elsif p_Colpos = 17 Then  v_ExpLines.Column17  := vValue;
Elsif p_Colpos = 18 Then  v_ExpLines.Column18  := vValue;
Elsif p_Colpos = 19 Then  v_ExpLines.Column19  := vValue;
Elsif p_Colpos = 20 Then  v_ExpLines.Column20  := vValue;
Elsif p_Colpos = 21 Then  v_ExpLines.Column21  := vValue;
Elsif p_Colpos = 22 Then  v_ExpLines.Column22  := vValue;
Elsif p_Colpos = 23 Then  v_ExpLines.Column23  := vValue;
Elsif p_Colpos = 24 Then  v_ExpLines.Column24  := vValue;
Elsif p_Colpos = 25 Then  v_ExpLines.Column25  := vValue;
Elsif p_Colpos = 26 Then  v_ExpLines.Column26  := vValue;
Elsif p_Colpos = 27 Then  v_ExpLines.Column27  := vValue;
Elsif p_Colpos = 28 Then  v_ExpLines.Column28  := vValue;
Elsif p_Colpos = 29 Then  v_ExpLines.Column29  := vValue;
Elsif p_Colpos = 30 Then  v_ExpLines.Column30  := vValue;
Elsif p_Colpos = 31 Then  v_ExpLines.Column31  := vValue;
Elsif p_Colpos = 32 Then  v_ExpLines.Column32  := vValue;
Elsif p_Colpos = 33 Then  v_ExpLines.Column33  := vValue;
Elsif p_Colpos = 34 Then  v_ExpLines.Column34  := vValue;
Elsif p_Colpos = 35 Then  v_ExpLines.Column35  := vValue;
Elsif p_Colpos = 36 Then  v_ExpLines.Column36  := vValue;
Elsif p_Colpos = 37 Then  v_ExpLines.Column37  := vValue;
Elsif p_Colpos = 38 Then  v_ExpLines.Column38  := vValue;
Elsif p_Colpos = 39 Then  v_ExpLines.Column39  := vValue;
Elsif p_Colpos = 40 Then  v_ExpLines.Column40  := vValue;
Elsif p_Colpos = 41 Then  v_ExpLines.Column41  := vValue;
Elsif p_Colpos = 42 Then  v_ExpLines.Column42  := vValue;
Elsif p_Colpos = 43 Then  v_ExpLines.Column43  := vValue;
Elsif p_Colpos = 44 Then  v_ExpLines.Column44  := vValue;
Elsif p_Colpos = 45 Then  v_ExpLines.Column45  := vValue;
Elsif p_Colpos = 46 Then  v_ExpLines.Column46  := vValue;
Elsif p_Colpos = 47 Then  v_ExpLines.Column47  := vValue;
Elsif p_Colpos = 48 Then  v_ExpLines.Column48  := vValue;
Elsif p_Colpos = 49 Then  v_ExpLines.Column49  := vValue;
Elsif p_Colpos = 50 Then  v_ExpLines.Column50  := vValue;
Elsif p_Colpos = 51 Then  v_ExpLines.Column51  := vValue;
Elsif p_Colpos = 52 Then  v_ExpLines.Column52  := vValue;
Elsif p_Colpos = 53 Then  v_ExpLines.Column53  := vValue;
Elsif p_Colpos = 54 Then  v_ExpLines.Column54  := vValue;
Elsif p_Colpos = 55 Then  v_ExpLines.Column55  := vValue;
Elsif p_Colpos = 56 Then  v_ExpLines.Column56  := vValue;
Elsif p_Colpos = 57 Then  v_ExpLines.Column57  := vValue;
Elsif p_Colpos = 58 Then  v_ExpLines.Column58  := vValue;
Elsif p_Colpos = 59 Then  v_ExpLines.Column59  := vValue;
Elsif p_Colpos = 60 Then  v_ExpLines.Column60  := vValue;
Elsif p_Colpos = 61 Then  v_ExpLines.Column61  := vValue;
Elsif p_Colpos = 62 Then  v_ExpLines.Column62  := vValue;
Elsif p_Colpos = 63 Then  v_ExpLines.Column63  := vValue;
Elsif p_Colpos = 64 Then  v_ExpLines.Column64  := vValue;
Elsif p_Colpos = 65 Then  v_ExpLines.Column65  := vValue;
Elsif p_Colpos = 66 Then  v_ExpLines.Column66  := vValue;
Elsif p_Colpos = 67 Then  v_ExpLines.Column67  := vValue;
Elsif p_Colpos = 68 Then  v_ExpLines.Column68  := vValue;
Elsif p_Colpos = 69 Then  v_ExpLines.Column69  := vValue;
Elsif p_Colpos = 70 Then  v_ExpLines.Column70  := vValue;
Elsif p_Colpos = 71 Then  v_ExpLines.Column71  := vValue;
Elsif p_Colpos = 72 Then  v_ExpLines.Column72  := vValue;
Elsif p_Colpos = 73 Then  v_ExpLines.Column73  := vValue;
Elsif p_Colpos = 74 Then  v_ExpLines.Column74  := vValue;
Elsif p_Colpos = 75 Then  v_ExpLines.Column75  := vValue;
Elsif p_Colpos = 76 Then  v_ExpLines.Column76  := vValue;
Elsif p_Colpos = 77 Then  v_ExpLines.Column77  := vValue;
Elsif p_Colpos = 78 Then  v_ExpLines.Column78  := vValue;
Elsif p_Colpos = 79 Then  v_ExpLines.Column79  := vValue;
Elsif p_Colpos = 80 Then  v_ExpLines.Column80  := vValue;
Elsif p_Colpos = 81 Then  v_ExpLines.Column81  := vValue;
Elsif p_Colpos = 82 Then  v_ExpLines.Column82  := vValue;
Elsif p_Colpos = 83 Then  v_ExpLines.Column83  := vValue;
Elsif p_Colpos = 84 Then  v_ExpLines.Column84  := vValue;
Elsif p_Colpos = 85 Then  v_ExpLines.Column85  := vValue;
Elsif p_Colpos = 86 Then  v_ExpLines.Column86  := vValue;
Elsif p_Colpos = 87 Then  v_ExpLines.Column87  := vValue;
Elsif p_Colpos = 88 Then  v_ExpLines.Column88  := vValue;
Elsif p_Colpos = 89 Then  v_ExpLines.Column89  := vValue;
Elsif p_Colpos = 90 Then  v_ExpLines.Column90  := vValue;
Elsif p_Colpos = 91 Then  v_ExpLines.Column91  := vValue;
Elsif p_Colpos = 92 Then  v_ExpLines.Column92  := vValue;
Elsif p_Colpos = 93 Then  v_ExpLines.Column93  := vValue;
Elsif p_Colpos = 94 Then  v_ExpLines.Column94  := vValue;
Elsif p_Colpos = 95 Then  v_ExpLines.Column95  := vValue;
Elsif p_Colpos = 96 Then  v_ExpLines.Column96  := vValue;
Elsif p_Colpos = 97 Then  v_ExpLines.Column97  := vValue;
Elsif p_Colpos = 98 Then  v_ExpLines.Column98  := vValue;
Elsif p_Colpos = 99 Then  v_ExpLines.Column99  := vValue;
Elsif p_Colpos = 100 Then  v_ExpLines.Column100  := vValue;
Elsif p_Colpos = 101 Then  v_ExpLines.Column101  := vValue;
Elsif p_Colpos = 102 Then  v_ExpLines.Column102  := vValue;
Elsif p_Colpos = 103 Then  v_ExpLines.Column103  := vValue;
Elsif p_Colpos = 104 Then  v_ExpLines.Column104  := vValue;
Elsif p_Colpos = 105 Then  v_ExpLines.Column105  := vValue;
Elsif p_Colpos = 106 Then  v_ExpLines.Column106  := vValue;
Elsif p_Colpos = 107 Then  v_ExpLines.Column107  := vValue;
Elsif p_Colpos = 108 Then  v_ExpLines.Column108  := vValue;
Elsif p_Colpos = 109 Then  v_ExpLines.Column109  := vValue;
Elsif p_Colpos = 110 Then  v_ExpLines.Column110  := vValue;
Elsif p_Colpos = 111 Then  v_ExpLines.Column111  := vValue;
Elsif p_Colpos = 112 Then  v_ExpLines.Column112  := vValue;
Elsif p_Colpos = 113 Then  v_ExpLines.Column113  := vValue;
Elsif p_Colpos = 114 Then  v_ExpLines.Column114  := vValue;
Elsif p_Colpos = 115 Then  v_ExpLines.Column115  := vValue;
Elsif p_Colpos = 116 Then  v_ExpLines.Column116  := vValue;
Elsif p_Colpos = 117 Then  v_ExpLines.Column117  := vValue;
Elsif p_Colpos = 118 Then  v_ExpLines.Column118  := vValue;
Elsif p_Colpos = 119 Then  v_ExpLines.Column119  := vValue;
Elsif p_Colpos = 120 Then  v_ExpLines.Column120  := vValue;
Elsif p_Colpos = 121 Then  v_ExpLines.Column121  := vValue;
Elsif p_Colpos = 122 Then  v_ExpLines.Column122  := vValue;
Elsif p_Colpos = 123 Then  v_ExpLines.Column123  := vValue;
Elsif p_Colpos = 124 Then  v_ExpLines.Column124  := vValue;
Elsif p_Colpos = 125 Then  v_ExpLines.Column125  := vValue;
Elsif p_Colpos = 126 Then  v_ExpLines.Column126  := vValue;
Elsif p_Colpos = 127 Then  v_ExpLines.Column127  := vValue;
Elsif p_Colpos = 128 Then  v_ExpLines.Column128  := vValue;
Elsif p_Colpos = 129 Then  v_ExpLines.Column129  := vValue;
Elsif p_Colpos = 130 Then  v_ExpLines.Column130  := vValue;
Elsif p_Colpos = 131 Then  v_ExpLines.Column131  := vValue;
Elsif p_Colpos = 132 Then  v_ExpLines.Column132  := vValue;
Elsif p_Colpos = 133 Then  v_ExpLines.Column133  := vValue;
Elsif p_Colpos = 134 Then  v_ExpLines.Column134  := vValue;
Elsif p_Colpos = 135 Then  v_ExpLines.Column135  := vValue;
Elsif p_Colpos = 136 Then  v_ExpLines.Column136  := vValue;
Elsif p_Colpos = 137 Then  v_ExpLines.Column137  := vValue;
Elsif p_Colpos = 138 Then  v_ExpLines.Column138  := vValue;
Elsif p_Colpos = 139 Then  v_ExpLines.Column139  := vValue;
Elsif p_Colpos = 140 Then  v_ExpLines.Column140  := vValue;
Elsif p_Colpos = 141 Then  v_ExpLines.Column141  := vValue;
Elsif p_Colpos = 142 Then  v_ExpLines.Column142  := vValue;
Elsif p_Colpos = 143 Then  v_ExpLines.Column143  := vValue;
Elsif p_Colpos = 144 Then  v_ExpLines.Column144  := vValue;
Elsif p_Colpos = 145 Then  v_ExpLines.Column145  := vValue;
Elsif p_Colpos = 146 Then  v_ExpLines.Column146  := vValue;
Elsif p_Colpos = 147 Then  v_ExpLines.Column147  := vValue;
Elsif p_Colpos = 148 Then  v_ExpLines.Column148  := vValue;
Elsif p_Colpos = 149 Then  v_ExpLines.Column149  := vValue;
Elsif p_Colpos = 150 Then  v_ExpLines.Column150  := vValue;
Elsif p_Colpos = 151 Then  v_ExpLines.Column151  := vValue;
Elsif p_Colpos = 152 Then  v_ExpLines.Column152  := vValue;
Elsif p_Colpos = 153 Then  v_ExpLines.Column153  := vValue;
Elsif p_Colpos = 154 Then  v_ExpLines.Column154  := vValue;
Elsif p_Colpos = 155 Then  v_ExpLines.Column155  := vValue;
Elsif p_Colpos = 156 Then  v_ExpLines.Column156  := vValue;
Elsif p_Colpos = 157 Then  v_ExpLines.Column157  := vValue;
Elsif p_Colpos = 158 Then  v_ExpLines.Column158  := vValue;
Elsif p_Colpos = 159 Then  v_ExpLines.Column159  := vValue;
Elsif p_Colpos = 160 Then  v_ExpLines.Column160  := vValue;
Elsif p_Colpos = 161 Then  v_ExpLines.Column161  := vValue;
Elsif p_Colpos = 162 Then  v_ExpLines.Column162  := vValue;
Elsif p_Colpos = 163 Then  v_ExpLines.Column163  := vValue;
Elsif p_Colpos = 164 Then  v_ExpLines.Column164  := vValue;
Elsif p_Colpos = 165 Then  v_ExpLines.Column165  := vValue;
Elsif p_Colpos = 166 Then  v_ExpLines.Column166  := vValue;
Elsif p_Colpos = 167 Then  v_ExpLines.Column167  := vValue;
Elsif p_Colpos = 168 Then  v_ExpLines.Column168  := vValue;
Elsif p_Colpos = 169 Then  v_ExpLines.Column169  := vValue;
Elsif p_Colpos = 170 Then  v_ExpLines.Column170  := vValue;
Elsif p_Colpos = 171 Then  v_ExpLines.Column171  := vValue;
Elsif p_Colpos = 172 Then  v_ExpLines.Column172  := vValue;
Elsif p_Colpos = 173 Then  v_ExpLines.Column173  := vValue;
Elsif p_Colpos = 174 Then  v_ExpLines.Column174  := vValue;
Elsif p_Colpos = 175 Then  v_ExpLines.Column175  := vValue;
Elsif p_Colpos = 176 Then  v_ExpLines.Column176  := vValue;
Elsif p_Colpos = 177 Then  v_ExpLines.Column177  := vValue;
Elsif p_Colpos = 178 Then  v_ExpLines.Column178  := vValue;
Elsif p_Colpos = 179 Then  v_ExpLines.Column179  := vValue;
Elsif p_Colpos = 180 Then  v_ExpLines.Column180  := vValue;
Elsif p_Colpos = 181 Then  v_ExpLines.Column181  := vValue;
Elsif p_Colpos = 182 Then  v_ExpLines.Column182  := vValue;
Elsif p_Colpos = 183 Then  v_ExpLines.Column183  := vValue;
Elsif p_Colpos = 184 Then  v_ExpLines.Column184  := vValue;
Elsif p_Colpos = 185 Then  v_ExpLines.Column185  := vValue;
Elsif p_Colpos = 186 Then  v_ExpLines.Column186  := vValue;
Elsif p_Colpos = 187 Then  v_ExpLines.Column187  := vValue;
Elsif p_Colpos = 188 Then  v_ExpLines.Column188  := vValue;
Elsif p_Colpos = 189 Then  v_ExpLines.Column189  := vValue;
Elsif p_Colpos = 190 Then  v_ExpLines.Column190  := vValue;
Elsif p_Colpos = 191 Then  v_ExpLines.Column191  := vValue;
Elsif p_Colpos = 192 Then  v_ExpLines.Column192  := vValue;
Elsif p_Colpos = 193 Then  v_ExpLines.Column193  := vValue;
Elsif p_Colpos = 194 Then  v_ExpLines.Column194  := vValue;
Elsif p_Colpos = 195 Then  v_ExpLines.Column195  := vValue;
Elsif p_Colpos = 196 Then  v_ExpLines.Column196  := vValue;
Elsif p_Colpos = 197 Then  v_ExpLines.Column197  := vValue;
Elsif p_Colpos = 198 Then  v_ExpLines.Column198  := vValue;
Elsif p_Colpos = 199 Then  v_ExpLines.Column199  := vValue;
Elsif p_Colpos = 200 Then  v_ExpLines.Column200  := vValue;
Elsif p_Colpos = 205 Then  v_ExpLines.Column205  := vValue;
Elsif p_Colpos = 206 Then  v_ExpLines.Column206  := vValue;
Elsif p_Colpos = 207 Then  v_ExpLines.Column207  := vValue;
Elsif p_Colpos = 208 Then  v_ExpLines.Column208  := vValue;
Elsif p_Colpos = 209 Then  v_ExpLines.Column209  := vValue;
Elsif p_Colpos = 210 Then  v_ExpLines.Column210  := vValue;
Elsif p_Colpos = 211 Then  v_ExpLines.Column211  := vValue;
Elsif p_Colpos = 212 Then  v_ExpLines.Column212  := vValue;
Elsif p_Colpos = 213 Then  v_ExpLines.Column213  := vValue;
Elsif p_Colpos = 214 Then  v_ExpLines.Column214  := vValue;
Elsif p_Colpos = 215 Then  v_ExpLines.Column215  := vValue;
Elsif p_Colpos = 216 Then  v_ExpLines.Column216  := vValue;
Elsif p_Colpos = 217 Then  v_ExpLines.Column217  := vValue;
Elsif p_Colpos = 218 Then  v_ExpLines.Column218  := vValue;
Elsif p_Colpos = 219 Then  v_ExpLines.Column219  := vValue;
Elsif p_Colpos = 220 Then  v_ExpLines.Column220  := vValue;
Elsif p_Colpos = 221 Then  v_ExpLines.Column221  := vValue;
Elsif p_Colpos = 222 Then  v_ExpLines.Column222  := vValue;
Elsif p_Colpos = 223 Then  v_ExpLines.Column223  := vValue;
Elsif p_Colpos = 224 Then  v_ExpLines.Column224  := vValue;
Elsif p_Colpos = 225 Then  v_ExpLines.Column225  := vValue;
Elsif p_Colpos = 226 Then  v_ExpLines.Column226  := vValue;
Elsif p_Colpos = 227 Then  v_ExpLines.Column227  := vValue;
Elsif p_Colpos = 228 Then  v_ExpLines.Column228  := vValue;
Elsif p_Colpos = 229 Then  v_ExpLines.Column229  := vValue;
Elsif p_Colpos = 230 Then  v_ExpLines.Column230  := vValue;
Elsif p_Colpos = 231 Then  v_ExpLines.Column231  := vValue;
Elsif p_Colpos = 232 Then  v_ExpLines.Column232  := vValue;
Elsif p_Colpos = 233 Then  v_ExpLines.Column233  := vValue;
Elsif p_Colpos = 234 Then  v_ExpLines.Column234  := vValue;
Elsif p_Colpos = 235 Then  v_ExpLines.Column235  := vValue;
Elsif p_Colpos = 236 Then  v_ExpLines.Column236  := vValue;
Elsif p_Colpos = 237 Then  v_ExpLines.Column237  := vValue;
Elsif p_Colpos = 238 Then  v_ExpLines.Column238  := vValue;
Elsif p_Colpos = 239 Then  v_ExpLines.Column239  := vValue;
Elsif p_Colpos = 240 Then  v_ExpLines.Column240  := vValue;
Elsif p_Colpos = 241 Then  v_ExpLines.Column241  := vValue;
Elsif p_Colpos = 242 Then  v_ExpLines.Column242  := vValue;
Elsif p_Colpos = 243 Then  v_ExpLines.Column243  := vValue;
Elsif p_Colpos = 244 Then  v_ExpLines.Column244  := vValue;
Elsif p_Colpos = 245 Then  v_ExpLines.Column245  := vValue;
Elsif p_Colpos = 246 Then  v_ExpLines.Column246  := vValue;
Elsif p_Colpos = 247 Then  v_ExpLines.Column247  := vValue;
Elsif p_Colpos = 248 Then  v_ExpLines.Column248  := vValue;
Elsif p_Colpos = 249 Then  v_ExpLines.Column249  := vValue;
Elsif p_Colpos = 250 Then  v_ExpLines.Column250  := vValue;

End If;

Exception When Others Then Null;
End;

-----------------------------------------
Procedure Insert_ExportLines
 Is
Begin
  if v_Explines.Status_Text Is Null Then 
     v_ExpLines.Status_code := 'OK' ;
 Else
     v_ExpLines.Status_code := 'ERROR';
 End If;

          INSERT INTO EXPORT_LINES(
                EXPORT_Header_ID ,
 		EXPORT_Line_ID,
 		Sl_No	,
 		SOURCE_ID_1,
 		SOURCE_ID_2,
 		SOURCE_ID_3,
 		SOURCE_ID_4,
 		SOURCE_NUMBER,
 		ORDER_BY_1,
 		ORDER_BY_2,
 		ORDER_BY_3,
 		DATA_TYPE,
	Status_Code,
	Status_Text,
                COLUMN1,
                COLUMN2,
                COLUMN3,
                COLUMN4,
                COLUMN5,
                COLUMN6,
                COLUMN7,
                COLUMN8,
                COLUMN9,
                COLUMN10,
                COLUMN11,
                COLUMN12,
                COLUMN13,
                COLUMN14,
                COLUMN15,
                COLUMN16,
                COLUMN17,
                COLUMN18,
                COLUMN19,
                COLUMN20,
                COLUMN21,
                COLUMN22,
                COLUMN23,
                COLUMN24,
                COLUMN25,
                COLUMN26,
                COLUMN27,
                COLUMN28,
                COLUMN29,
                COLUMN30,
                COLUMN31,
                COLUMN32,
                COLUMN33,
                COLUMN34,
                COLUMN35,
                COLUMN36,
                COLUMN37,
                COLUMN38,
                COLUMN39,
                COLUMN40,
                COLUMN41,
                COLUMN42,
                COLUMN43,
                COLUMN44,
                COLUMN45,
                COLUMN46,
                COLUMN47,
                COLUMN48,
                COLUMN49,
                COLUMN50,
                COLUMN51,
                COLUMN52,
                COLUMN53,
                COLUMN54,
                COLUMN55,
                COLUMN56,
                COLUMN57,
                COLUMN58,
                COLUMN59,
                COLUMN60,
                COLUMN61,
                COLUMN62,
                COLUMN63,
                COLUMN64,
                COLUMN65,
                COLUMN66,
                COLUMN67,
                COLUMN68,
                COLUMN69,
                COLUMN70,
                COLUMN71,
                COLUMN72,
                COLUMN73,
                COLUMN74,
                COLUMN75,
                COLUMN76,
                COLUMN77,
                COLUMN78,
                COLUMN79,
                COLUMN80,
                COLUMN81,
                COLUMN82,
                COLUMN83,
                COLUMN84,
                COLUMN85,
                COLUMN86,
                COLUMN87,
                COLUMN88,
                COLUMN89,
                COLUMN90,
                COLUMN91,
                COLUMN92,
                COLUMN93,
                COLUMN94,
                COLUMN95,
                COLUMN96,
                COLUMN97,
                COLUMN98,
                COLUMN99,
                COLUMN100,
                COLUMN101,
                COLUMN102,
                COLUMN103,
                COLUMN104,
                COLUMN105,
                COLUMN106,
                COLUMN107,
                COLUMN108,
                COLUMN109,
                COLUMN110,
                COLUMN111,
                COLUMN112,
                COLUMN113,
                COLUMN114,
                COLUMN115,
                COLUMN116,
                COLUMN117,
                COLUMN118,
                COLUMN119,
                COLUMN120,
                COLUMN121,
                COLUMN122,
                COLUMN123,
                COLUMN124,
                COLUMN125,
                COLUMN126,
                COLUMN127,
                COLUMN128,
                COLUMN129,
                COLUMN130,
                COLUMN131,
                COLUMN132,
                COLUMN133,
                COLUMN134,
                COLUMN135,
                COLUMN136,
                COLUMN137,
                COLUMN138,
                COLUMN139,
                COLUMN140,
                COLUMN141,
                COLUMN142,
                COLUMN143,
                COLUMN144,
                COLUMN145,
                COLUMN146,
                COLUMN147,
                COLUMN148,
                COLUMN149,
                COLUMN150,
                COLUMN151,
                COLUMN152,
                COLUMN153,
                COLUMN154,
                COLUMN155,
                COLUMN156,
                COLUMN157,
                COLUMN158,
                COLUMN159,
                COLUMN160,
                COLUMN161,
                COLUMN162,
                COLUMN163,
                COLUMN164,
                COLUMN165,
                COLUMN166,
                COLUMN167,
                COLUMN168,
                COLUMN169,
                COLUMN170,
                COLUMN171,
                COLUMN172,
                COLUMN173,
                COLUMN174,
                COLUMN175,
                COLUMN176,
                COLUMN177,
                COLUMN178,
                COLUMN179,
                COLUMN180,
                COLUMN181,
                COLUMN182,
                COLUMN183,
                COLUMN184,
                COLUMN185,
                COLUMN186,
                COLUMN187,
                COLUMN188,
                COLUMN189,
                COLUMN190,
                COLUMN191,
                COLUMN192,
                COLUMN193,
                COLUMN194,
                COLUMN195,
                COLUMN196,
                COLUMN197,
                COLUMN198,
                COLUMN199,
                COLUMN200,
	Column201,
	Column202,
	Column203,
	Column204,
	Column205,
	Column206,
	Column207,
	Column208,
	Column209,
	Column210,
	Column211,
	Column212,
	Column213,
	Column214,
	Column215,
	Column216,
	Column217,
	Column218,
	Column219,
	Column220,
	Column221,
	Column222,
	Column223,
	Column224,
	Column225,
	Column226,
	Column227,
	Column228,
	Column229,
	Column230,
	Column231,
	Column232,
	Column233,
	Column234,
	Column235,
	Column236,
	Column237,
	Column238,
	Column239,
	Column240,
	Column241,
	Column242,
	Column243,
	Column244,
	Column245,
	Column246,
	Column247,
	Column248,
	Column249,
	Column250) 
                VALUES(
                v_ExpLines.EXPORT_Header_ID ,
 		Export_Lines_S.NextVal,
 		v_ExpLines.Sl_No	,
 		v_ExpLines.SOURCE_ID_1,
 		v_ExpLines.SOURCE_ID_2,
 		v_ExpLines.SOURCE_ID_3,
 		v_ExpLines.SOURCE_ID_4,
 		v_ExpLines.SOURCE_NUMBER,
 		v_ExpLines.ORDER_BY_1,
 		v_ExpLines.ORDER_BY_2,
 		v_ExpLines.ORDER_BY_3,
 		v_ExpLines.Data_Type,
	v_ExpLines.Status_Code,
	v_ExpLines.Status_Text,
                v_ExpLines.COLUMN1,
                v_ExpLines.COLUMN2,
                v_ExpLines.COLUMN3,
                v_ExpLines.COLUMN4,
                v_ExpLines.COLUMN5,
                v_ExpLines.COLUMN6,
                v_ExpLines.COLUMN7,
                v_ExpLines.COLUMN8,
                v_ExpLines.COLUMN9,
                v_ExpLines.COLUMN10,
                v_ExpLines.COLUMN11,
                v_ExpLines.COLUMN12,
                v_ExpLines.COLUMN13,
                v_ExpLines.COLUMN14,
                v_ExpLines.COLUMN15,
                v_ExpLines.COLUMN16,
                v_ExpLines.COLUMN17,
                v_ExpLines.COLUMN18,
                v_ExpLines.COLUMN19,
                v_ExpLines.COLUMN20,
                v_ExpLines.COLUMN21,
                v_ExpLines.COLUMN22,
                v_ExpLines.COLUMN23,
                v_ExpLines.COLUMN24,
                v_ExpLines.COLUMN25,
                v_ExpLines.COLUMN26,
                v_ExpLines.COLUMN27,
                v_ExpLines.COLUMN28,
                v_ExpLines.COLUMN29,
                v_ExpLines.COLUMN30,
                v_ExpLines.COLUMN31,
                v_ExpLines.COLUMN32,
                v_ExpLines.COLUMN33,
                v_ExpLines.COLUMN34,
                v_ExpLines.COLUMN35,
                v_ExpLines.COLUMN36,
                v_ExpLines.COLUMN37,
                v_ExpLines.COLUMN38,
                v_ExpLines.COLUMN39,
                v_ExpLines.COLUMN40,
                v_ExpLines.COLUMN41,
                v_ExpLines.COLUMN42,
                v_ExpLines.COLUMN43,
                v_ExpLines.COLUMN44,
                v_ExpLines.COLUMN45,
                v_ExpLines.COLUMN46,
                v_ExpLines.COLUMN47,
                v_ExpLines.COLUMN48,
                v_ExpLines.COLUMN49,
                v_ExpLines.COLUMN50,
                v_ExpLines.COLUMN51,
                v_ExpLines.COLUMN52,
                v_ExpLines.COLUMN53,
                v_ExpLines.COLUMN54,
                v_ExpLines.COLUMN55,
                v_ExpLines.COLUMN56,
                v_ExpLines.COLUMN57,
                v_ExpLines.COLUMN58,
                v_ExpLines.COLUMN59,
                v_ExpLines.COLUMN60,
                v_ExpLines.COLUMN61,
                v_ExpLines.COLUMN62,
                v_ExpLines.COLUMN63,
                v_ExpLines.COLUMN64,
                v_ExpLines.COLUMN65,
                v_ExpLines.COLUMN66,
                v_ExpLines.COLUMN67,
                v_ExpLines.COLUMN68,
                v_ExpLines.COLUMN69,
                v_ExpLines.COLUMN70,
                v_ExpLines.COLUMN71,
                v_ExpLines.COLUMN72,
                v_ExpLines.COLUMN73,
                v_ExpLines.COLUMN74,
                v_ExpLines.COLUMN75,
                v_ExpLines.COLUMN76,
                v_ExpLines.COLUMN77,
                v_ExpLines.COLUMN78,
                v_ExpLines.COLUMN79,
                v_ExpLines.COLUMN80,
                v_ExpLines.COLUMN81,
                v_ExpLines.COLUMN82,
                v_ExpLines.COLUMN83,
                v_ExpLines.COLUMN84,
                v_ExpLines.COLUMN85,
                v_ExpLines.COLUMN86,
                v_ExpLines.COLUMN87,
                v_ExpLines.COLUMN88,
                v_ExpLines.COLUMN89,
                v_ExpLines.COLUMN90,
                v_ExpLines.COLUMN91,
                v_ExpLines.COLUMN92,
                v_ExpLines.COLUMN93,
                v_ExpLines.COLUMN94,
                v_ExpLines.COLUMN95,
                v_ExpLines.COLUMN96,
                v_ExpLines.COLUMN97,
                v_ExpLines.COLUMN98,
                v_ExpLines.COLUMN99,
                v_ExpLines.COLUMN100,
                v_ExpLines.COLUMN101,
                v_ExpLines.COLUMN102,
                v_ExpLines.COLUMN103,
                v_ExpLines.COLUMN104,
                v_ExpLines.COLUMN105,
                v_ExpLines.COLUMN106,
                v_ExpLines.COLUMN107,
                v_ExpLines.COLUMN108,
                v_ExpLines.COLUMN109,
                v_ExpLines.COLUMN110,
                v_ExpLines.COLUMN111,
                v_ExpLines.COLUMN112,
                v_ExpLines.COLUMN113,
                v_ExpLines.COLUMN114,
                v_ExpLines.COLUMN115,
                v_ExpLines.COLUMN116,
                v_ExpLines.COLUMN117,
                v_ExpLines.COLUMN118,
                v_ExpLines.COLUMN119,
                v_ExpLines.COLUMN120,
                v_ExpLines.COLUMN121,
                v_ExpLines.COLUMN122,
                v_ExpLines.Column123,
                v_ExpLines.Column124,
                v_ExpLines.Column125,
                v_ExpLines.Column126,
                v_ExpLines.Column127,
                v_ExpLines.Column128,
                v_ExpLines.Column129,
                v_ExpLines.Column130,  
                v_ExpLines.Column131,
                v_ExpLines.Column132,
                v_ExpLines.COLUMN133,
                v_ExpLines.COLUMN134,
                v_ExpLines.COLUMN135,
                v_ExpLines.COLUMN136,
                v_ExpLines.COLUMN137,
                v_ExpLines.COLUMN138,
                v_ExpLines.COLUMN139,
                v_ExpLines.COLUMN140,
                v_ExpLines.COLUMN141,
                v_ExpLines.COLUMN142,
                v_ExpLines.COLUMN143,
                v_ExpLines.COLUMN144,
                v_ExpLines.COLUMN145,
                v_ExpLines.COLUMN146,
                v_ExpLines.COLUMN147, 
                v_ExpLines.COLUMN148,
                v_ExpLines.COLUMN149,
                v_ExpLines.COLUMN150,
                v_ExpLines.COLUMN151,
                v_ExpLines.COLUMN152,
                v_ExpLines.COLUMN153,
                v_ExpLines.COLUMN154,
                v_ExpLines.COLUMN155,
                v_ExpLines.COLUMN156,
                v_ExpLines.COLUMN157,
                v_ExpLines.COLUMN158,
                v_ExpLines.COLUMN159,
                v_ExpLines.COLUMN160,
                v_ExpLines.COLUMN161,
                v_ExpLines.COLUMN162,
                v_ExpLines.COLUMN163,
                v_ExpLines.COLUMN164,
                v_ExpLines.COLUMN165,
                v_ExpLines.Column166 , 
                v_ExpLines.Column167,
                v_ExpLines.Column168,  
                v_ExpLines.Column169,
                v_ExpLines.Column170,  
                v_ExpLines.Column171,
                v_ExpLines.Column172,
                v_ExpLines.Column173,
                v_ExpLines.Column174,  
                v_ExpLines.Column175,
                v_ExpLines.Column176,
                v_ExpLines.Column177,
                v_ExpLines.Column178,
                v_ExpLines.Column179,
                v_ExpLines.Column180,  
                v_ExpLines.Column181,
                v_ExpLines.Column182,
                v_ExpLines.COLUMN183,
                v_ExpLines.COLUMN184,
                v_ExpLines.COLUMN185,
                v_ExpLines.COLUMN186,
                v_ExpLines.COLUMN187,
                v_ExpLines.COLUMN188,
                v_ExpLines.COLUMN189,
                v_ExpLines.COLUMN190,
                v_ExpLines.COLUMN191,
                v_ExpLines.COLUMN192,
                v_ExpLines.COLUMN193,
                v_ExpLines.COLUMN194,
                v_ExpLines.COLUMN195,
                v_ExpLines.COLUMN196,
                v_ExpLines.COLUMN197,
                v_ExpLines.COLUMN198,
                v_ExpLines.COLUMN199,
                v_ExpLines.COLUMN200,
	v_ExpLines.Column201,
	v_ExpLines.Column202,
	v_ExpLines.Column203,
	v_ExpLines.Column204,
	v_ExpLines.Column205,
	v_ExpLines.Column206,
	v_ExpLines.Column207,
	v_ExpLines.Column208,
	v_ExpLines.Column209,
	v_ExpLines.Column210,
	v_ExpLines.Column211,
	v_ExpLines.Column212,
	v_ExpLines.Column213,
	v_ExpLines.Column214,
	v_ExpLines.Column215,
	v_ExpLines.Column216,
	v_ExpLines.Column217,
	v_ExpLines.Column218,
	v_ExpLines.Column219,
	v_ExpLines.Column220,
	v_ExpLines.Column221,
	v_ExpLines.Column222,
	v_ExpLines.Column223,
	v_ExpLines.Column224,
	v_ExpLines.Column225,
	v_ExpLines.Column226,
	v_ExpLines.Column227,
	v_ExpLines.Column228,
	v_ExpLines.Column229,
	v_ExpLines.Column230,
	v_ExpLines.Column231,
	v_ExpLines.Column232,
	v_ExpLines.Column233,
	v_ExpLines.Column234,
	v_ExpLines.Column235,
	v_ExpLines.Column236,
	v_ExpLines.Column237,
	v_ExpLines.Column238,
	v_ExpLines.Column239,
	v_ExpLines.Column240,
	v_ExpLines.Column241,
	v_ExpLines.Column242,
	v_ExpLines.Column243,
	v_ExpLines.Column244,
	v_ExpLines.Column245,
	v_ExpLines.Column246,
	v_ExpLines.Column247,
	v_ExpLines.Column248,
	V_ExpLines.Column249,
	v_ExpLines.Column250
              );
End;
---------------------------------------------------------------------
 ---------------------------------------------------------
Procedure Stage_Items(       p_Hint       		In Varchar2 Default 'POPULATE',
			      p_ActionType		In Varchar2 Default 'REPLACE',
                              p_Delimiter 		In Varchar2 Default ',',
                              p_ForWhom   		In Varchar2 Default Null,
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',
			      p_BatchID	  		In Number Default Null,
			      p_ApplySUFilter 		In Number Default  0)
IS 
  v_Ctr        Number := 1;
vBarcodeQty	        	Number(10);
vSu1S5                  		Varchar2(400);
vDefCurrency            	Varchar2(100);
vCountryCode            	Varchar2(10);
v_Step			Varchar2(100);
v_ItemName 		Varchar2(300);
v_Dummy			Varchar2(400);
v_ExchangeRate		Number := 1;
v_CurrencyCode	       	 Varchar2(100);
v_LanguageCode	       	 Varchar2(100);
v_VariationCode         	Varchar2(30);
vDelimiter			Varchar2(1);
vExpLines               		EXPORT_LINES%RowType;
vDummyChar 		Varchar2(400);


  Cursor c_Items IS
  Select e.*
  From   Exp_ItemMasterTemplate_V e
  Where  e.Item_Id in (Select xx.Item_Id 
                       From  Inv_Item_Batch_Lines xx
                       Where xx.Batch_ID = nvl(p_BatchID,e.Item_Batch_ID))
  And   (p_ApplySUFilter = 0 or (e.Sales_Unit <= Greatest(e.QtyInStock,e.Max_Qty,1)))
  UNION 
  Select e.*
  From   Exp_ItemMasterTemplate_V e
  Where  nvl(p_BatchId,e.item_Batch_ID)  is null
  And   (p_ApplySUFilter = 0 or (e.Sales_Unit <= Greatest(e.QtyInStock,e.Max_Qty,1)))
  Order By 1,2;
           


   TYPE t_Item  		IS TABLE OF Exp_ItemMasterTemplate_V%ROWTYPE;
        a_Items 		t_Item := t_Item();

BEGIN

v_VariationCode := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'WEB_SITE_DEFAULTS',
                              p_LookupCode => 'VARIATION',
                              p_WhichAttribute => 1),'AUTO');

vCountryCode   := Cmn_Common_Pkg.Get_SysOptionVal('COUNTRY_CODE');
vDefCurrency := Price_Pkg.Get_DefaultCurrency;
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);

 
Session_Pkg.SetCustomerNumber(p_ForWhom);
Session_Pkg.SetDelimiter(p_Delimiter);
Session_Pkg.SetHint(p_Hint);
Session_Pkg.SetContextValue('SUBSTITUTE',P_SUBSTITUTE);
Session_Pkg.SetContextValue('FILTERCRITERIA',P_FILTERCRITERIA);
Session_Pkg.SetContextValue('INCLUDEBOM',P_INCLUDEBOM);
Session_Pkg.SetContextValue('ITEMBATCHID',P_BATCHID);
Session_Pkg.SetContextValue('ITEMBATCHID',P_BATCHID);
begin 
  Select Customer_ID, Customer_Name,
         Session_Pkg.SetgetContextValue('CURRENCY_CODE',Currency_code)
        ,Session_Pkg.SetgetContextValue('EXCHANGE_RATE',Price_Pkg.Get_XchangeRate(Currency_Code))
        ,Session_Pkg.SetgetContextValue('LANGUAGE_CODE',Nvl(Language_Code,'ENG'))
  Into  v_ExpHeaders.Source_ID, v_ExpHeaders.Export_Name,
        v_CurrencyCode,v_ExchangeRate,v_LanguageCode
  From  Ar_Customers
  Where Customer_Number = p_ForWhom;

Exception when Others then Null;
End;

 If p_ActionType = 'REPLACE' Then 
    Begin -- Delete Existing Records
      Delete Export_Lines
      Where  Export_Header_ID in (Select x.Export_Header_ID 
                                  From   Export_Headers x
                                  Where  x.Source_Name = p_Forwhom);
      Delete Export_Headers
      Where Source_Name = p_ForWhom;
      Commit;
    Exception When Others Then Null;
    End;
 Elsif p_ActionType in ('INSERT','APPEND') Then 
   begin 
     Select EXPORT_Header_ID,EXPORT_NAME,
           EXPORT_TYPE, SOURCE_NAME
     Into  v_ExpHeaders.EXPORT_Header_ID,v_ExpHeaders.EXPORT_NAME,
           v_ExpHeaders.EXPORT_TYPE, v_ExpHeaders.SOURCE_NAME
    From   Export_Headers
    Where  Source_Name = p_ForWhom
    And    Rownum  = 1;
   Exception When Others Then Null;
  End;
 End If; 
if v_ExpHeaders.EXPORT_Header_ID is Null Then 
  select EXPORT_HEADERS_S.NEXTVAL Into v_ExpHeaders.EXPORT_Header_ID From Dual;
 Insert Into EXPORT_HEADERS(
                EXPORT_Header_ID,EXPORT_NAME, EXPORT_TYPE, SOURCE_NAME,
                Source_ID, Param1,Param2,
                Param3,Param4,Param5,Param6,
                Param7,Param8,Param9,Param10,
                Param11,Param12,Param13,Param14,Param15)
 Values(v_ExpHeaders.EXPORT_Header_ID,v_ExpHeaders.EXPORT_NAME,
        'WEBSITE', p_ForWhom,
         v_ExpHeaders.Source_ID, p_Hint,p_ActionType,
         p_Delimiter,p_ForWhom,p_FileName,
         p_Directory,p_NotifGroup ,p_MultiGroup ,
         p_InStockOnly,p_FilterCriteria, p_Datasource ,
         p_Substitute ,p_IncludeBom,p_BatchID,p_ApplySUFilter );

End If;

Open C_Items;
 Loop  
           
  FETCH C_Items  BULK COLLECT INTO a_Items Limit 100; 
  
   begin -- Save Exceptions 
     FOR  i IN 1..a_Items.COUNT()  
     Loop
           vExpLines := null;
           If Replace(a_Items(i).Batch_Hint,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).Batch_Hint,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column77,
                                   p_part2  => v_ExpLines.Column78,
                                   p_part3  => v_ExpLines.Column79,
                                   p_part4  => v_ExpLines.Column80,
                                   p_part5  => v_ExpLines.Column81,
                                   p_part6  => v_ExpLines.Column82,
                                   p_part7  => v_ExpLines.Column83,
                                   p_part8 => vDummyChar,
                                   p_part9 => vDummyChar,
                                   p_part10 => vDummyChar);
           End If; 

         If Replace(a_Items(i).MinSuSps,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).MinSuSps,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column123,
                                   p_part2  => v_ExpLines.Column124,
                                   p_part3  => v_ExpLines.Column125,
                                   p_part4  => v_ExpLines.Column126,
                                   p_part5  => v_ExpLines.Column127,
                                   p_part6  => v_ExpLines.Column128,
                                   p_part7  => v_ExpLines.Column129,
                                   p_part8  => v_ExpLines.Column130, 
                                   p_part9  => v_ExpLines.Column131,
                                   p_part10 => v_ExpLines.Column132);
           End If; 
      If Replace(a_Items(i).Www_Category_Attributes,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).Www_Category_Attributes,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column144,
                                   p_part2  => v_ExpLines.Column145,
                                   p_part3  => v_ExpLines.Column146,
                                   p_part4  => vDummyChar,
                                   p_part5  => vDummyChar,
                                   p_part6  => vDummyChar,
                                   p_part7  => vDummyChar,
                                   p_part8  => vDummyChar, 
                                   p_part9  => vDummyChar,
                                   p_part10 => vDummyChar);
       End If; 
   
      If Replace(a_Items(i).MultiCat1to5,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).MultiCat1to5,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column168,
                                   p_part2  => v_ExpLines.Column169,
                                   p_part3  => v_ExpLines.Column170,
                                   p_part4  => v_ExpLines.Column171,
                                   p_part5  => v_ExpLines.Column172,
                                   p_part6  => vDummyChar,
                                   p_part7  => vDummyChar,
                                   p_part8  => vDummyChar, 
                                   p_part9  => vDummyChar,
                                   p_part10 => vDummyChar);
       End If; 
      if  Replace(a_Items(i).Www_Category_Attribute4,p_Delimiter) is Not Null Then   --166
                  SP_SPLITTOTWOPARTS(p_string   => a_Items(i).Www_Category_Attribute4 ,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column166,
                                   p_part2  => v_ExpLines.Column167                                             
                                   ) ;
      End If; 
      if  Replace( a_Items(i).UK_EXP_Freights,p_Delimiter) is Not Null Then   --174
                  SP_SPLITTOTWOPARTS(p_string  => a_Items(i).UK_EXP_Freights,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column174,
                                   p_part2  => v_ExpLines.Column175                                             
                                   ) ;
      End If; 
if  Replace( a_Items(i).US_Freights,p_Delimiter) is Not Null Then   --176
                  SP_SPLITTOTWOPARTS(p_string  => a_Items(i).US_Freights,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column176,
                                   p_part2  => v_ExpLines.Column177                                             
                                   ) ;
      End If; 
if  Replace( a_Items(i).FRA_Freights,p_Delimiter) is Not Null Then   --178
                  SP_SPLITTOTWOPARTS(p_string   =>  a_Items(i).FRA_Freights,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column178,
                                   p_part2  => v_ExpLines.Column179                                             
                                   ) ;
      End If; 
if  Replace(a_Items(i).DEU_Freights,p_Delimiter) is Not Null Then   --180
                  SP_SPLITTOTWOPARTS(p_string   => a_Items(i).DEU_Freights,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column180,
                                   p_part2  => v_ExpLines.Column181                                             
                                   ) ;
      End If; 
if  Replace( a_Items(i).UKS_Freights,p_Delimiter) is Not Null Then   --182
                  SP_SPLITTOTWOPARTS(p_string    => a_Items(i).UKS_Freights,
                                   p_Separator => p_Delimiter,
                                   p_part1  => v_ExpLines.Column182,
                                   p_part2  => v_ExpLines.Column183                                             
                                   ) ;
    
End If; 	
          INSERT INTO EXPORT_LINES(
                EXPORT_Header_ID ,
 		EXPORT_Line_ID,
 		Sl_No	,
 		SOURCE_ID_1,
 		SOURCE_ID_2,
 		SOURCE_ID_3,
 		SOURCE_ID_4,
 		SOURCE_NUMBER,
                COLUMN1,
                COLUMN2,
                COLUMN3,
                COLUMN4,
                COLUMN5,
                COLUMN6,
                COLUMN7,
                COLUMN8,
                COLUMN9,
                COLUMN10,
                COLUMN11,
                COLUMN12,
                COLUMN13,
                COLUMN14,
                COLUMN15,
                COLUMN16,
                COLUMN17,
                COLUMN18,
                COLUMN19,
                COLUMN20,
                COLUMN21,
                COLUMN22,
                COLUMN23,
                COLUMN24,
                COLUMN25,
                COLUMN26,
                COLUMN27,
                COLUMN28,
                COLUMN29,
                COLUMN30,
                COLUMN31,
                COLUMN32,
                COLUMN33,
                COLUMN34,
                COLUMN35,
                COLUMN36,
                COLUMN37,
                COLUMN38,
                COLUMN39,
                COLUMN40,
                COLUMN41,
                COLUMN42,
                COLUMN43,
                COLUMN44,
                COLUMN45,
                COLUMN46,
                COLUMN47,
                COLUMN48,
                COLUMN49,
                COLUMN50,
                COLUMN51,
                COLUMN52,
                COLUMN53,
                COLUMN54,
                COLUMN55,
                COLUMN56,
                COLUMN57,
                COLUMN58,
                COLUMN59,
                COLUMN60,
                COLUMN61,
                COLUMN62,
                COLUMN63,
                COLUMN64,
                COLUMN65,
                COLUMN66,
                COLUMN67,
                COLUMN68,
                COLUMN69,
                COLUMN70,
                COLUMN71,
                COLUMN72,
                COLUMN73,
                COLUMN74,
                COLUMN75,
                COLUMN76,
                COLUMN77,
                COLUMN78,
                COLUMN79,
                COLUMN80,
                COLUMN81,
                COLUMN82,
                COLUMN83,
                COLUMN84,
                COLUMN85,
                COLUMN86,
                COLUMN87,
                COLUMN88,
                COLUMN89,
                COLUMN90,
                COLUMN91,
                COLUMN92,
                COLUMN93,
                COLUMN94,
                COLUMN95,
                COLUMN96,
                COLUMN97,
                COLUMN98,
                COLUMN99,
                COLUMN100,
                COLUMN101,
                COLUMN102,
                COLUMN103,
                COLUMN104,
                COLUMN105,
                COLUMN106,
                COLUMN107,
                COLUMN108,
                COLUMN109,
                COLUMN110,
                COLUMN111,
                COLUMN112,
                COLUMN113,
                COLUMN114,
                COLUMN115,
                COLUMN116,
                COLUMN117,
                COLUMN118,
                COLUMN119,
                COLUMN120,
                COLUMN121,
                COLUMN122,
                COLUMN123,
                COLUMN124,
                COLUMN125,
                COLUMN126,
                COLUMN127,
                COLUMN128,
                COLUMN129,
                COLUMN130,
                COLUMN131,
                COLUMN132,
                COLUMN133,
                COLUMN134,
                COLUMN135,
                COLUMN136,
                COLUMN137,
                COLUMN138,
                COLUMN139,
                COLUMN140,
                COLUMN141,
                COLUMN142,
                COLUMN143,
                COLUMN144,
                COLUMN145,
                COLUMN146,
                COLUMN147,
                COLUMN148,
                COLUMN149,
                COLUMN150,
                COLUMN151,
                COLUMN152,
                COLUMN153,
                COLUMN154,
                COLUMN155,
                COLUMN156,
                COLUMN157,
                COLUMN158,
                COLUMN159,
                COLUMN160,
                COLUMN161,
                COLUMN162,
                COLUMN163,
                COLUMN164,
                COLUMN165,
                COLUMN166,
                COLUMN167,
                COLUMN168,
                COLUMN169,
                COLUMN170,
                COLUMN171,
                COLUMN172,
                COLUMN173,
                COLUMN174,
                COLUMN175,
                COLUMN176,
                COLUMN177,
                COLUMN178,
                COLUMN179,
                COLUMN180,
                COLUMN181,
                COLUMN182,
                COLUMN183,
                COLUMN184,
                COLUMN185,
                COLUMN186,
                COLUMN187,
                COLUMN188,
                COLUMN189,
                COLUMN190,
                COLUMN191,
                COLUMN192,
                COLUMN193,
                COLUMN194,
                COLUMN195,
                COLUMN196,
                COLUMN197,
                COLUMN198,
                COLUMN199,
                COLUMN200
		) 
                VALUES(
                 v_ExpHeaders.Export_Header_ID ,
 		EXPORT_LINES_S.Nextval,
 		i,	
 		a_Items(i).Item_ID ,
 		a_Items(i).SU_ID ,
 		a_Items(i).Sales_Unit,
 		null,
 		a_Items(i).Item_Number, 
                a_Items(i).Item_ID, --1
                a_Items(i).Item_Number,
                a_Items(i).IIC_Category_ID,
                a_Items(i).Category_Name,
                a_Items(i).IISC_Sub_Category_ID,
                a_Items(i).Sub_Category_Name,
                a_Items(i).Supplier_Product_Code,
                a_Items(i).PrimaryBarcode,
                a_Items(i).Short_Desc,
                a_Items(i).Item_Name,  -- 10
                a_Items(i).Manufacturer,
                a_Items(i).Record_Status,
                a_Items(i).Retail_Price,  -- 13
                a_Items(i).Su_Name_Derived, --14  1/5
                a_Items(i).Price_ExlTax,  --15
                a_Items(i).Price_IncTax,  --16
                a_Items(i).Su_Sp1,    --17
                a_Items(i).Web_Price1, --18
                a_Items(i).Web_Price2,  -- 19
                a_Items(i).Web_Price3, -- 20
                a_Items(i).Web_Price4,--21 
                null,  -- 2/5
                null,
                null,
                null,
                null,
                null,
                null,
                null, -- 29  -- 8
                null,  -- 3/5  --30
                null,
                null,
                null,
                null,
                null,
                null,
                null,  --8 
                null,  --4/5
                null, -- 39
                Null, -- 40 
                Null,
                Null,
                Null,
                Null,
                Null,
                Null,
                Null,
                Null,
                Null,
                Null,    --50
                Null,
                Null,
                Null,    -- 53
                a_Items(i).PicturePresent,
                a_Items(i).PictureName,
                a_Items(i).InSpOffer,
                a_Items(i).Tax_Code,
                a_Items(i).TaxRate,
                a_Items(i).Tax_Type,  --60
                a_Items(i).Item_Constant,
                a_Items(i).SpOfferText,
                a_Items(i).Unit_Weight,
                a_Items(i).QtyInStock,
                a_Items(i).Gross_Unit_Weight,
                a_Items(i).Item_Comment,
                a_Items(i).Supplier_Name,
                a_Items(i).PictureName1,
                a_Items(i).PictureName2,
                a_Items(i).PictureName3,  --70
                a_Items(i).Technical_Specs,
                a_Items(i).Notes1,
                a_Items(i).Notes2,
                a_Items(i).Notes3,
                a_Items(i).Notes4,
                a_Items(i).Notes5,-- 76
                v_ExpLines.Column77, --77
                v_ExpLines.Column78,      
                v_ExpLines.Column79,
                v_ExpLines.Column80, -- 80
                v_ExpLines.Column81,
                v_ExpLines.Column82,
                v_ExpLines.Column83,                      --83
                 a_Items(i).DemoVideoFile,
                a_Items(i).Item_Specifications,
                a_Items(i).Instrunction,
                a_Items(i).Item_Style,
                a_Items(i).Item_Fitting,
                a_Items(i).Whose_For,
                a_Items(i).Warranty_Period,  --90
                a_Items(i).TechnicalSpecsFile,
                a_Items(i).Key_Words,
                a_Items(i).CategoryPicture,
                a_Items(i).Category_Code,
                a_Items(i).CategoryKeyWords,
                a_Items(i).SubCategoryPicture,
                a_Items(i).Sub_Category_Code,
                a_Items(i).SubCatKeywords,
                a_Items(i).Lead_Time, -- 99
                a_Items(i).Saleable,  -- 100
                a_Items(i).Purchaseable,
                a_Items(i).Reservable,
                a_Items(i).Stockable,
                a_Items(i).Min_Qty,
                a_Items(i).Max_Qty,
                a_Items(i).Case_Unit,
                a_Items(i).Inner_Qty,
                a_Items(i).Pallet_Qty,
                a_Items(i).Unit_Weight,
                a_Items(i).Unit_Length, -- 110
                a_Items(i).Unit_Width,
                a_Items(i).Unit_Height,
                a_Items(i).Unit_Volume,  -- 113              
                a_Items(i).Case_Weight,
                a_Items(i).Case_Length,
                a_Items(i).Case_Width,
                a_Items(i).Case_Height,
                a_Items(i).Case_Volume,  -- 118
                a_Items(i).Barcode_Qty,
                a_Items(i).Bin_Identifier,  --120
                a_Items(i).Creation_Date,
                a_Items(i).Last_Update_Date, --122
                v_ExpLines.Column123,
               v_ExpLines.Column124,
               v_ExpLines.Column125,
               v_ExpLines.Column126,
               v_ExpLines.Column127,
               v_ExpLines.Column128,
               v_ExpLines.Column129,
               v_ExpLines.Column130,  -- 130
               v_ExpLines.Column131,
                v_ExpLines.Column132,
                a_Items(i).Currency_Code,
                a_Items(i).Item_Status,
                a_Items(i).Min_PB_Qty,
                a_Items(i).PriceBreakText,
                a_Items(i).Active_Flag,
                a_Items(i).Item_Condition,
                a_Items(i).GoogleStatus,
                a_Items(i).www_ItemNumber,  --140
                a_Items(i).www_shortdesc,
                a_Items(i).www_LongDesc,
                a_Items(i).www_Category,
                a_Items(i).Web_Expedite_Flag,
                v_ExpLines.Column144,  -- 144
                v_ExpLines.Column145,
                v_ExpLines.Column146,
                a_Items(i).Date_Format,
                a_Items(i).Data_Source,
                a_Items(i).www_barcode,   --150
                a_Items(i).www_parentsku,
                a_Items(i).www_Relationship_Type,
                a_Items(i).www_variation_theme,
                a_Items(i).www_size_color,
                a_Items(i).www_size_Color_map,
                a_Items(i).www_parentage,
                a_Items(i).Item_Size,
                a_Items(i).Item_Colour,
                a_Items(i).Brand_Name,
                a_Items(i).Freight_Name,  --160
                a_Items(i).Unit_Cp,
                a_Items(i).Parent_Item_Number,
                a_Items(i).Su_Derived,
                a_Items(i).Exchange_Rate,
                a_Items(i).Max_Publish_Qty,
                v_ExpLines.Column166 ,  -- 166
                v_ExpLines.Column167,
                v_ExpLines.Column168,  -- 168
                v_ExpLines.Column169,
                v_ExpLines.Column170,   --170
                v_ExpLines.Column171,
                v_ExpLines.Column172,
                a_Items(i).ReOrder_Qty,
                v_ExpLines.Column174,   -- 174
                v_ExpLines.Column175,
                v_ExpLines.Column176,
                v_ExpLines.Column177,
                v_ExpLines.Column178,
                v_ExpLines.Column179,
                v_ExpLines.Column180,  --180
                v_ExpLines.Column181,
                v_ExpLines.Column182,
                v_ExpLines.Column183,
                null,
                null,
                null,
                null,
                null,
                null,
                null,   --190
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,  --200 
                Null
              );
     Commit;
       End Loop;
      End;                                     
      Exit When C_Items%Notfound;

   End Loop; -- Populating Summaries   
  -- Close Summary Loop;
        Close C_Items;     

   Commit;

Exception When Others Then 
  Raise_Application_Error(-20004,'Stage_Items:'||SqlErrm);
End;
-----------------------------------------
Procedure Write_To_SingleFile( p_ForWhom   		In Varchar2 Default Null,
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv', 
                              p_Header 			In Varchar2 Default Null,
			      p_COLUMNS 		In Varchar2 Default Null,
			      p_Hint       		In Varchar2 Default 'FILE',
			      p_ActionType		In Varchar2 Default 'WRITE',
                              p_Delimiter 		In Varchar2 Default ',',                              
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',			     
			      p_BatchID	  		In Number Default Null,			     
			      p_ApplySUFilter 		In Number Default  0)
IS 
vDelimiter 		Varchar2(10);
vFileType  		Utility_Pkg.FileType;
vString    		Varchar2(20000);
v_Headers    		varchar2(20000);
v_columns  		Varchar2(20000);
v_StringOriginal	Varchar2(20000);
v_PrimaryBarcode 	Varchar2(100);
v_Picturename 		Varchar2(400);
vSuLoopCtr      	Number := 6;
vColumnList             Varchar2(20000);
vHeaderList             Varchar2(20000);
vfirstline              Varchar2(20000);
vlastline               Varchar2(20000);
vCountryCode            Varchar2(10);
v_Step			Varchar2(100);
v_ItemName 		Varchar2(300);
v_Dummy			Varchar2(400);
v_ExchangeRate		Number := 1;
v_CurrencyCode	        Varchar2(100);
v_LanguageCode	        Varchar2(100);
v_VariationCode         Varchar2(30);
v_ExpHeaderID		Number(10);
v_Sql			Varchar2(4000);
v_Where                 Varchar2(2000);

 TYPE t_exportlines IS TABLE OF  Varchar2(32676);
      a_exportlines   t_exportlines := t_exportlines();

begin
 select max(Export_Header_ID)
 Into   v_ExpHeaderID
 From   Export_Headers
 Where  Source_name  = p_Forwhom;

If v_ExpheaderID is null Then Return; End If;

if p_BatchID is Null Then 
 v_Where :=  '  Where   Export_Header_ID = :p_HeaderID  ';
Else
 v_Where :=  '  Where  Export_Header_ID = :p_HeaderID  '||
            ' and Source_ID in (Select xx.Item_Id 
                       From  Inv_Item_Batch_Lines xx
                       Where xx.Batch_ID = '||p_BatchID||') ';
End If;

v_Where   := v_Where ||' Order By Export_Line_Id ';

  Select String1||String2||String3||String4||String5
  Into  v_Headers
  From Exp_ItemStage_H_V;
    v_StringOriginal := v_Headers;

vColumnList 	:= nvl(p_Columns,ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'BODY'));
vHeaderList 	:= nvl(p_Header,ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'HEADER'));
vfirstline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'FIRSTLINE');
vlastline     	:= ImpExp_Pkg.Get_WWWColumnList(p_forWhom => p_ForWhom,p_Hint=>'LASTLINE');

 If vHeaderList is not null Then 
       v_Headers := Utility02_Pkg.CompileColumnList(p_ActualString => v_StringOriginal,
                                                 p_ColumnList   => vHeaderList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'HEADER');
 End If; 

 If p_Columns is not null Then 
     v_Columns := Utility02_Pkg.CompileColumnList(p_ActualString => p_Columns,
                                                 p_ColumnList   => vColumnList ,
                                                 p_Delimiter   => p_Delimiter,
                                                 p_Hint        =>  'COLUMN');
 Else
    v_columns := Null;
    For c in 1..200 
    Loop  
     v_Columns := v_Columns||'COLUMN'||c||'||'||''''||p_Delimiter||''''||'||';
    End Loop;
     v_Columns  := Replace(v_Columns||p_Delimiter,'||'||p_Delimiter);
 End IF; 

v_Columns  := v_Columns || ' STRING';

v_Sql    := 'Select '||v_Columns|| '  From EXPORT_LINES '||v_Where;

Dbms_OutPut.Put_Line(v_Sql);
EXECUTE IMMEDIATE v_sql BULK COLLECT INTO a_exportlines Using v_ExpHeaderID;


vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                  pDir  => p_Directory ,
                                  pMode => 'w');
if vFirstLine is not null Then 
  Utility_Pkg.Write(pfileId => vfileType,Wstring => vFirstLine);
End If;
 Utility_Pkg.Write(pfileId => vfileType,Wstring => v_Headers);
For line in 1..a_exportlines.Count 
Loop
   Utility_Pkg.Write(pfileId => vfileType,Wstring => a_exportlines(line));
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
Dbms_Output.put_Line('step:'||v_Step||'--ERROR:'||SqlErrm);
Utility_Pkg.closeFile(vFileType);
Raise_Application_Error(-20001,'Step:'||v_Step||'--'||sqlerrm);

End;
-----------------------------------------------------------------------------------------
Procedure Stage_ItemsLoop(    p_Hint       		In Varchar2 Default 'POPULATE',
			      p_ActionType		In Varchar2 Default 'REPLACE',
                              p_Delimiter 		In Varchar2 Default ',',
                              p_ForWhom   		In Varchar2 Default Null,
                              p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              p_NotifGroup 		In Varchar2 Default Null,                              
                              p_MultiGroup 		In Varchar2 Default 'Y',
                              p_InStockOnly  		In Varchar2 Default 'N',
			      p_FilterCriteria 		In Varchar2 Default Null,
			      p_Datasource     		In varchar2 default null,
                              p_Substitute  		In Varchar2 Default Null,
			      p_IncludeBom		In Varchar2 Default 'Y',
			      p_BatchID	  		In Number Default Null,
			      p_ApplySUFilter 		In Number Default  0)
IS 

 
  vItemFreight           Inv_Item_Freights%RowType;
  v_Ctr        Number := 1;
vBarcodeQty	        Number(10);
vSu1S5                  Varchar2(400);
vDefCurrency            Varchar2(100);
vCountryCode            Varchar2(10);
v_Step			Varchar2(100);
v_ItemName 		Varchar2(300);
v_Dummy			Varchar2(400);
v_ExchangeRate		Number := 1;
v_CurrencyCode	        Varchar2(100);
v_LanguageCode	        Varchar2(100);
v_VariationCode         Varchar2(30);
vDelimiter		Varchar2(1);
vExpLines               EXPORT_LINES%RowType;
vDummyChar 		Varchar2(400);
vBatchID                Number;
vCtr			Number := 0;
vLoopCtr		Number := 0;

  Cursor c_Items IS
  Select e.*
  From   Exp_ItemStage_V e
  Where  e.Item_Id in   (Select xx.Item_ID 
                  From  Inv_Item_Batch_Lines xx
                  Where xx.Batch_ID = vBatchId)
  And    vBatchID is not null
  UNION 
  Select e.*
  From   Exp_ItemStage_V e
  Where  vBatchID   is null;
           


   TYPE t_Item  		IS TABLE OF Exp_ItemStage_V%ROWTYPE;
        a_Items 		t_Item := t_Item();

BEGIN

v_VariationCode := nvl(Cmn_Common_Pkg.Get_LookupAttributeValues(p_LookupType => 'WEB_SITE_DEFAULTS',
                              p_LookupCode => 'VARIATION',
                              p_WhichAttribute => 1),'AUTO');

vCountryCode   := Cmn_Common_Pkg.Get_SysOptionVal('COUNTRY_CODE');
vDefCurrency := Price_Pkg.Get_DefaultCurrency;
vDelimiter := Sfn_DecodeDelimiter(p_Delimiter);

 
Session_Pkg.SetCustomerNumber(p_ForWhom);
Session_Pkg.SetDelimiter(p_Delimiter);
Session_Pkg.SetHint(p_Hint);
Session_Pkg.SetContextValue('SUBSTITUTE',P_SUBSTITUTE);
Session_Pkg.SetContextValue('FILTERCRITERIA',P_FILTERCRITERIA);
Session_Pkg.SetContextValue('INCLUDEBOM',P_INCLUDEBOM);
Session_Pkg.SetContextValue('ITEMBATCHID',P_BATCHID);
Session_Pkg.SetContextValue('ITEMBATCHID',P_BATCHID);
begin 
  Select Customer_ID, Customer_Name,
         Session_Pkg.SetgetContextValue('CURRENCY_CODE',Currency_code)
        ,Session_Pkg.SetgetContextValue('EXCHANGE_RATE',Price_Pkg.Get_XchangeRate(Currency_Code))
        ,Session_Pkg.SetgetContextValue('LANGUAGE_CODE',Nvl(Language_Code,'ENG')),
        nvl(p_BatchID,Item_Batch_ID) 
  Into  v_ExpHeaders.Source_ID, v_ExpHeaders.Export_Name,
        v_CurrencyCode,v_ExchangeRate,v_LanguageCode,
        vBatchID
  From  Ar_Customers
  Where Customer_Number = p_ForWhom;

Exception when Others then Null;
End;
Session_Pkg.SetContextValue('ITEMBATCHID',vBatchID);

 If p_ActionType = 'REPLACE' Then 
    Begin -- Delete Existing Records
      Delete Export_Lines
      Where  Export_Header_ID in (Select x.Export_Header_ID 
                                  From   Export_Headers x
                                  Where  x.Source_Name = p_Forwhom);
      Delete Export_Headers
      Where Source_Name = p_ForWhom;
      Commit;
    Exception When Others Then Null;
    End;
 Elsif p_ActionType in ('INSERT','APPEND') Then 
   begin 
     Select EXPORT_Header_ID,EXPORT_NAME,
           EXPORT_TYPE, SOURCE_NAME
     Into  v_ExpHeaders.EXPORT_Header_ID,v_ExpHeaders.EXPORT_NAME,
           v_ExpHeaders.EXPORT_TYPE, v_ExpHeaders.SOURCE_NAME
    From   Export_Headers
    Where  Source_Name = p_ForWhom
    And    Rownum  = 1;
   Exception When Others Then Null;
  End;
 End If; 
if v_ExpHeaders.EXPORT_Header_ID is Null Then 
  select EXPORT_HEADERS_S.NEXTVAL Into v_ExpHeaders.EXPORT_Header_ID From Dual;
 Insert Into EXPORT_HEADERS(
                EXPORT_Header_ID,EXPORT_NAME, EXPORT_TYPE, SOURCE_NAME,
                Source_ID, Param1,Param2,
                Param3,Param4,Param5,Param6,
                Param7,Param8,Param9,Param10,
                Param11,Param12,Param13,Param14,Param15)
 Values(v_ExpHeaders.EXPORT_Header_ID,v_ExpHeaders.EXPORT_NAME,
        'WEBSITE', p_ForWhom,
         v_ExpHeaders.Source_ID, p_Hint,p_ActionType,
         p_Delimiter,p_ForWhom,p_FileName,
         p_Directory,p_NotifGroup ,p_MultiGroup ,
         p_InStockOnly,p_FilterCriteria, p_Datasource ,
         p_Substitute ,p_IncludeBom,p_BatchID,p_ApplySUFilter );

End If;

Open C_Items;
 Loop  
           
  FETCH C_Items  BULK COLLECT INTO a_Items Limit 100; 
   

   begin -- Save Exceptions 
     FOR  i IN 1..a_Items.COUNT  
     Loop
           vExpLines := null;
           vCtr      := vCtr + 1;

                v_ExpLines.EXPORT_Header_ID   	:=  v_ExpHeaders.Export_Header_ID;
               select EXPORT_LINES_S.Nextval  Into v_ExpLines.EXPORT_Line_ID From Dual;
 		v_ExpLines.Sl_No		     	:= vCtr;
 		v_ExpLines.SOURCE_ID_1        	:= a_Items(i).Item_ID;
 		v_ExpLines.SOURCE_ID_4		:= null;
 		v_ExpLines.SOURCE_NUMBER		:= a_Items(i).Item_Number; 
                
                      col_ExpLines(1,a_Items(i).Item_ID  );
                      col_ExpLines(2,a_Items(i).Item_Number );
                      col_ExpLines(3,a_Items(i).IIC_Category_ID );
                      col_ExpLines(4,a_Items(i).Category_Name );
                      col_ExpLines(5,a_Items(i).IISC_Sub_Category_ID );
                      col_ExpLines(6,a_Items(i).Sub_Category_Name );
                      col_ExpLines(7,a_Items(i).Supplier_Product_Code );
                      col_ExpLines(8,a_Items(i).PrimaryBarcode );
                      col_ExpLines(9,a_Items(i).Short_Desc );
                      col_ExpLines(10,a_Items(i).Item_Name );
                      col_ExpLines(11,a_Items(i).Manufacturer );
                      col_ExpLines(12,a_Items(i).Record_Status );
                      col_ExpLines(13,a_Items(i).PicturePresent );
                      col_ExpLines(14,a_Items(i).PictureName );
                      col_ExpLines(15,a_Items(i).InSpOffer );
                      col_ExpLines(16,a_Items(i).Tax_Code );
                      col_ExpLines(17,a_Items(i).TaxRate );
                      col_ExpLines(18,a_Items(i).Tax_Type );
                      col_ExpLines(19,a_Items(i).Item_Constant );
                      col_ExpLines(20,a_Items(i).SpOfferText );
                      col_ExpLines(21,a_Items(i).Unit_Weight );
                      col_ExpLines(22,a_Items(i).QtyInStock );
                      col_ExpLines(23,a_Items(i).Gross_Unit_Weight );
                      col_ExpLines(24,a_Items(i).Item_Comment );
                      col_ExpLines(25,a_Items(i).Supplier_Name );
                      col_ExpLines(26,a_Items(i).PictureName1 );
                      col_ExpLines(27,a_Items(i).PictureName2 );
                      col_ExpLines(28,a_Items(i).PictureName3 );
                      col_ExpLines(29,a_Items(i).Technical_Specs );
                      col_ExpLines(30,a_Items(i).DemoVideoFile );
                      col_ExpLines(31,a_Items(i).Item_Specifications );
                      col_ExpLines(32,a_Items(i).Notes1 );
                      col_ExpLines(33,a_Items(i).Notes2 );
                      col_ExpLines(34,a_Items(i).Notes3 );
                      col_ExpLines(35,a_Items(i).Notes4 );
                      col_ExpLines(36,a_Items(i).Notes5 );
                      col_ExpLines(37,a_Items(i).Lead_Time );
                      col_ExpLines(38,a_Items(i).Saleable );
                      col_ExpLines(39,a_Items(i).Purchaseable );
                      col_ExpLines(40,a_Items(i).Reservable );
                      col_ExpLines(41,a_Items(i).Stockable );
                      col_ExpLines(42,a_Items(i).Min_Qty );
                      col_ExpLines(43,a_Items(i).Max_Qty );
                      col_ExpLines(44,a_Items(i).Case_Unit );
                      col_ExpLines(45,a_Items(i).Inner_Qty );
                      col_ExpLines(46,a_Items(i).Pallet_Qty );
                      -- This gap is assigned in Sales Unit Loop
                      col_ExpLines(52,a_Items(i).Case_Weight );
                      col_ExpLines(53,a_Items(i).Case_Length );
                      col_ExpLines(54,a_Items(i).Case_Width );
                      col_ExpLines(55,a_Items(i).Case_Height );
                      col_ExpLines(56,a_Items(i).Case_Volume );
                      col_ExpLines(57,a_Items(i).Barcode_Qty );
                      col_ExpLines(58,a_Items(i).Creation_Date );
                      col_ExpLines(59,a_Items(i).Last_Update_Date );

  
                      col_ExpLines(60,a_Items(i).Instrunction );
                      col_ExpLines(61,a_Items(i).Item_Style );
                      col_ExpLines(62,a_Items(i).Item_Fitting );
                      col_ExpLines(63,a_Items(i).Whose_For );
                      col_ExpLines(64,a_Items(i).Warranty_Period );
                      col_ExpLines(65,a_Items(i).TechnicalSpecsFile );
                      col_ExpLines(66,a_Items(i).Key_Words );
                      col_ExpLines(67,a_Items(i).CategoryPicture );
                      col_ExpLines(68,a_Items(i).Category_Code );
                      col_ExpLines(69,a_Items(i).CategoryKeyWords );
                      col_ExpLines(70,a_Items(i).SubCategoryPicture );
                      col_ExpLines(71,a_Items(i).Sub_Category_Code );
                      col_ExpLines(72,a_Items(i).SubCatKeywords );
                      col_ExpLines(73,a_Items(i).Currency_Code );
                      col_ExpLines(74,a_Items(i).Item_Status );
                      col_ExpLines(75,a_Items(i).Min_PB_Qty );
                      col_ExpLines(76,a_Items(i).PriceBreakText );
                      col_ExpLines(77,a_Items(i).Active_Flag );
                      col_ExpLines(78,a_Items(i).Item_Condition );
                      col_ExpLines(79,a_Items(i).GoogleStatus );
                      col_ExpLines(80,a_Items(i).www_ItemNumber );
                      col_ExpLines(81,a_Items(i).www_shortdesc );
                      col_ExpLines(82,a_Items(i).www_LongDesc );
                      col_ExpLines(83,a_Items(i).www_Category );
                      col_ExpLines(84,a_Items(i).Web_Expedite_Flag );
         Begin 
             Select  Map_Attribute1 ,Map_Attribute2, Map_Attribute3,
                     Map_Attribute4,Sfn_RemoveSpecialChars(Map_Description)
             Into    v_ExpLines.Column85,v_ExpLines.Column86,v_ExpLines.Column87,
                     v_ExpLines.Column110,v_ExpLines.Column111
             From    Ar_Cust_Item_MapCategories
             Where   Customer_Id 	= v_ExpHeaders.Source_ID
             And     Sub_category_ID    = a_Items(i).IISC_Sub_Category_Id
             And     Rownum = 1;
         Exception When Others then Null;
        End;
               
                      col_ExpLines(88,a_Items(i).Date_Format );
                      col_ExpLines(89,a_Items(i).Data_Source );
                      col_ExpLines(90,a_Items(i).www_barcode );
                      col_ExpLines(91,a_Items(i).www_parentsku );
                      col_ExpLines(92,a_Items(i).www_Relationship_Type );
                      col_ExpLines(93,a_Items(i).www_variation_theme );
                      col_ExpLines(94,a_Items(i).www_size_color );
                      col_ExpLines(95,a_Items(i).www_size_Color_map );
                      col_ExpLines(96,a_Items(i).www_parentage );
                      col_ExpLines(97,a_Items(i).Item_Size );
                      col_ExpLines(98,a_Items(i).Item_Colour );
                      col_ExpLines(99,a_Items(i).Brand_Name );
                      col_ExpLines(100,a_Items(i).Freight_Name );
                     -- Next Seven Reserved 
                      col_ExpLines(101,null);
                      col_ExpLines(102,null);
                      col_ExpLines(103,null);
                      col_ExpLines(104,null);
                      col_ExpLines(105,null);
                      col_ExpLines(106,null);
                      col_ExpLines(107,null);

                      col_ExpLines(108,a_Items(i).Exchange_Rate );
                      col_ExpLines(109,a_Items(i).Max_Publish_Qty );
                   
                      col_ExpLines(112,a_Items(i).ReOrder_Qty );
                      col_ExpLines(113,a_Items(i).Parent_Item_Number );
                      col_ExpLines(114,a_Items(i).Unit_Cp );
                      -- 115 - 136 Assigned Sales Units
                     
              

            For Su in (Select s.Price_IncTax,Su_Number,su_Id,s.Sales_Unit,s.Bin_Identifier,
                          SFN_REMOVESPECIALCHARS1(Substr(v_ExpLines.COLUMN10,1,100)||' X '|| s.Sales_Unit 
                           ||' '||u.Uom_Short_Desc,Session_Pkg.GetContextValue('SUBSTITUTE')) Su_Name_Derived,
                              s.Price_ExlTax, s.Web_Price1, s.Web_Price2, s.Web_Price3, s.Web_Price4,
                            s.Net_Unit_Weight Unit_Weight, s.Unit_Length, s.Unit_Width,s.Unit_Height,s.Unit_Volume
                       From   Inv_Item_Sales_Units s,
                              Cmn_Unit_Of_Measurements u
                       Where  s.IIM_ITEM_ID  	= a_Items(i).Item_ID 
                       And    s.Uom_ID		= u.Uom_Id (+) 
                       Order By s.Sales_Unit
                      ) 
                Loop
                       col_ExpLines(47,Round(nvl(su.Unit_Weight, a_Items(i).Unit_Weight),2) );
                      col_ExpLines(48,Round(nvl(su.Unit_Length,   a_Items(i).Unit_Length),2) );
                      col_ExpLines(49,Round(nvl(su.Unit_Width,  a_Items(i).Unit_Width),2) );
                      col_ExpLines(50,Round(nvl(su.Unit_Height,  a_Items(i).Unit_Height),2) );
                      col_ExpLines(51,Round(nvl(su.Unit_volume,  a_Items(i).Unit_Volume),2) );

                      col_ExpLines(115,su.Sales_Unit );
                      col_ExpLines(116,su.Su_Number );
                      col_ExpLines(117,su.Su_Name_Derived );
                      col_ExpLines(118,Nvl(v_ExpLines.COLUMN118,su.Bin_Identifier) );
                      col_ExpLines(119,su.Price_ExlTax );
                      col_ExpLines(120,su.Price_IncTax );             
 		       v_ExpLines.SOURCE_ID_2		:= su.SU_ID;
 		       v_ExpLines.SOURCE_ID_2		:= su.Sales_Unit;
                --  Column 22 to 53 Reserved for Multiple Sales Prices 
                  vLoopCtr := 1;
                  For sp in (Select Price_IncTax,Price_ExlTax
                             From   Inv_Item_Prices 
                             Where  IISU_SU_ID  = su.Su_ID
                             Order By IPT_Price_Type_ID
                             )
                   Loop
                       if vLoopCtr = 1 Then  
                          v_ExpLines.COLUMN121		:= sp.Price_Exltax;
                          v_ExpLines.COLUMN122		:= sp.Price_Inctax;
                       ElsIf vLoopCtr = 2 Then  
                          v_ExpLines.COLUMN123		:= sp.Price_Exltax;
                          v_ExpLines.COLUMN124		:= sp.Price_Inctax;
                       ElsIf vLoopCtr = 3 Then  
                          v_ExpLines.COLUMN125		:= sp.Price_Exltax;
                          v_ExpLines.COLUMN126		:= sp.Price_Inctax;
                       ElsIf vLoopCtr = 4 Then  
                          v_ExpLines.COLUMN127		:= sp.Price_Exltax;
                          v_ExpLines.COLUMN128		:= sp.Price_Inctax;
                       ElsIf vLoopCtr = 5 Then  
                          v_ExpLines.COLUMN129		:= sp.Price_Exltax;
                          v_ExpLines.COLUMN130		:= sp.Price_Inctax;
                      End If;
                       vLoopCtr := VLoopCtr + 1;
                    End Loop; -- Prices
                   
                      col_ExpLines(131,su.Web_Price1 );
                      col_ExpLines(132,su.Web_Price2 );
                      col_ExpLines(133,su.Web_Price3 );
                      col_ExpLines(134,su.Web_Price4 );
                      col_ExpLines(135,su.Web_Price4 );  -- def_fr_rate
                      col_ExpLines(136,a_Items(i).Web_Expedite_Flag );  -- def_fr_flag
   
			Begin
   				vItemFreight := Null;

   				Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> a_Items(i).Item_Id,
                            	p_SuID    		=> su.su_ID,
			    	p_DefCountryCode  	=> VcountryCode,
                            	p_CountryCode  		=> 'UK_EXP',
			    	p_Price1	 	=> vItemFreight.Price1,
			    	p_Price2	 	=> vItemFreight.Price2,
			    	p_Price3	 	=> vItemFreight.Price3,
			    	p_FreightRate  		=> v_ExpLines.Column144,
			    	p_ExpediteFlag  	=> v_ExpLines.Column145);
  			Exception When Others then Null;
 		        End;
 
			Begin
   				vItemFreight := Null;

   				Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> a_Items(i).Item_Id,
                            	p_SuID    		=> su.su_ID,
			    	p_DefCountryCode  	=> VcountryCode,
                            	p_CountryCode  		=> 'US',
			    	p_Price1	 	=> vItemFreight.Price1,
			    	p_Price2	 	=> vItemFreight.Price2,
			    	p_Price3	 	=> vItemFreight.Price3,
			    	p_FreightRate  		=> v_ExpLines.Column146,
			    	p_ExpediteFlag  	=> v_ExpLines.Column147);
  			Exception When Others then Null;
 		        End;
 
			Begin

   				Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> a_Items(i).Item_Id,
                            	p_SuID    		=> su.su_ID,
			    	p_DefCountryCode  	=> VcountryCode,
                            	p_CountryCode  		=> 'FRA',
			    	p_Price1	 	=> vItemFreight.Price1,
			    	p_Price2	 	=> vItemFreight.Price2,
			    	p_Price3	 	=> vItemFreight.Price3,
			    	p_FreightRate  		=> v_ExpLines.Column148,
			    	p_ExpediteFlag  	=> v_ExpLines.Column149);
  			Exception When Others then Null;
 		        End;
			Begin

   				Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> a_Items(i).Item_Id,
                            	p_SuID    		=> su.su_ID,
			    	p_DefCountryCode  	=> VcountryCode,
                            	p_CountryCode  		=> 'DEU',
			    	p_Price1	 	=> vItemFreight.Price1,
			    	p_Price2	 	=> vItemFreight.Price2,
			    	p_Price3	 	=> vItemFreight.Price3,
			    	p_FreightRate  		=> v_ExpLines.Column150,
			    	p_ExpediteFlag  	=> v_ExpLines.Column151);
  			Exception When Others then Null;
 		        End;
    
			Begin

   				Inv02_Pkg.Get_FreightPrices(p_ItemId  	=> a_Items(i).Item_Id,
                            	p_SuID    		=> su.su_ID,
			    	p_DefCountryCode  	=> VcountryCode,
                            	p_CountryCode  		=> 'UKS',
			    	p_Price1	 	=> vItemFreight.Price1,
			    	p_Price2	 	=> vItemFreight.Price2,
			    	p_Price3	 	=> vItemFreight.Price3,
			    	p_FreightRate  		=> v_ExpLines.Column152,
			    	p_ExpediteFlag  	=> v_ExpLines.Column153);
  			Exception When Others then Null;
 		        End;
 
              -- These Seven Reserved 
                      col_ExpLines(137,null);
                      col_ExpLines(138,null );
                      col_ExpLines(139,null );
                      col_ExpLines(140,null );
                      col_ExpLines(141,null );
                      col_ExpLines(142,null );
                      col_ExpLines(143,null );

          -- These  Seven Reserved 
                      col_ExpLines(154,null);
                      col_ExpLines(155,null );
                      col_ExpLines(156,null );
                      col_ExpLines(157,null );
                      col_ExpLines(158,null );
                      col_ExpLines(159,null );
                      col_ExpLines(160,null );
             Insert_ExportLines;
            End Loop; -- Sales_Unit Loop
                               
             
 
   /*     If Replace(a_Items(i).Batch_Hint,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).Batch_Hint,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column161,
                                   p_part2  => v_ExpLines.Column162,
                                   p_part3  => v_ExpLines.Column163,
                                   p_part4  => v_ExpLines.Column164,
                                   p_part5  => v_ExpLines.Column165,
                                   p_part6  => v_ExpLines.Column166,
                                   p_part7  => v_ExpLines.Column167,
                                   p_part8 => vDummyChar,
                                   p_part9 => vDummyChar,
                                   p_part10 => vDummyChar);
           End If; 
  
      If Replace(a_Items(i).MultiCat1to5,p_Delimiter)  is Not Null Then 
              SP_SPLITSTRING(p_string      	=> a_Items(i).MultiCat1to5,
                             p_Separator   	=> p_Delimiter,
                                   p_PartSpecial => vDummyChar,
                                   p_part1  => v_ExpLines.Column168,
                                   p_part2  => v_ExpLines.Column169,
                                   p_part3  => v_ExpLines.Column170,
                                   p_part4  => v_ExpLines.Column171,
                                   p_part5  => v_ExpLines.Column172,
                                   p_part6  => vDummyChar,
                                   p_part7  => vDummyChar,
                                   p_part8  => vDummyChar, 
                                   p_part9  => vDummyChar,
                                   p_part10 => vDummyChar);
       End If; 
     */              
                  
       
       End Loop;
      End; 
        Commit;                                    
      Exit When C_Items%Notfound;

   End Loop; -- Items   Cursor 
  -- Close Summary Loop;
        Close C_Items;     

   Commit;

Exception When Others Then 
  Raise_Application_Error(-20004,'Stage_Items:'||SqlErrm);
End;
----------------------------------------------------------------------------

Procedure Write_To_Files( p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
                              	         p_File0  		In Varchar2 Default Null, 
                                         p_file0Header                 In Varchar2 Default null,
                                         p_File0Data                    In Varchar2 Default Null,
                              	         p_File1  		In Varchar2 Default Null, 
                                         p_file1Header                 In Varchar2 Default null,
                                         p_File1Data                    In Varchar2 Default Null,
                              	         p_File2  		In Varchar2 Default Null, 
                                         p_file2Header                 In Varchar2 Default null,
                                         p_File2Data                    In Varchar2 Default Null,
                              	         p_File3  		In Varchar2 Default Null, 
                                         p_file3Header                 In Varchar2 Default null,
                                         p_File3Data                    In Varchar2 Default Null,
                              	         p_File4  		In Varchar2 Default Null, 
                                         p_file4Header                 In Varchar2 Default null,
                                         p_File4Data                    In Varchar2 Default Null,
                              	         p_File5  		In Varchar2 Default Null, 
                                         p_file5Header                 In Varchar2 Default null,
                                         p_File5Data                    In Varchar2 Default Null,
                              	         p_File6 		In Varchar2 Default Null, 
                                         p_file6Header                 In Varchar2 Default null,
                                         p_File6Data                    In Varchar2 Default Null,
                              	         p_File7  		In Varchar2 Default Null, 
                                         p_file7Header                 In Varchar2 Default null,
                                         p_File7Data                    In Varchar2 Default Null,
                              	         p_File8  		In Varchar2 Default Null, 
                                         p_file8Header                 In Varchar2 Default null,
                                         p_File8Data                    In Varchar2 Default Null,
                              	         p_File9  		In Varchar2 Default Null, 
                                         p_file9Header                 In Varchar2 Default null,
                                         p_File9Data                    In Varchar2 Default Null,
                              	         p_File10  		In Varchar2 Default Null, 
                                         p_file10Header                 In Varchar2 Default null,
                                         p_File10Data                    In Varchar2 Default Null)
IS

 Procedure Write_to_File(lp_File		In Varchar2,
		         lp_Header		In Varchar2,
                        	         lp_Data 		In Varchar2)
 IS
  vFileType  		Utility_Pkg.FileType;
 begin 

 if Replace( lp_File ,'NULL')  is not Null then 
    vFileType       := Utility_Pkg.OpenFile(pfile => lp_File,
                                 	 pDir  => p_Directory ,
                                 	 pMode => 'w');
 End If;
           Utility_Pkg.Write(pfileId => vFileType,Wstring => lp_Header);
           Utility_Pkg.Write(pfileId => vFileType,Wstring => lp_Data);       
         Utility_Pkg.closeFile(vFileType);

 Exception When Others Then 
Utility_Pkg.closeFile(vFileType);
 End;
begin
  Write_To_File(p_file0,p_File0Header,p_File0Data);
  Write_To_File(p_file1,p_File1Header,p_File1Data);
  Write_To_File(p_file2,p_File2Header,p_File2Data);
  Write_To_File(p_file3,p_File3Header,p_File3Data);
  Write_To_File(p_file4,p_File4Header,p_File4Data);
  Write_To_File(p_file5,p_File5Header,p_File5Data);
  Write_To_File(p_file6,p_File6Header,p_File6Data);
  Write_To_File(p_file7,p_File7Header,p_File7Data);
  Write_To_File(p_file8,p_File8Header,p_File8Data);
  Write_To_File(p_file9,p_File9Header,p_File9Data);
  Write_To_File(p_file1,p_File10Header,p_File10Data);

Exception When Others Then Null;
End;

------------------------------------------------------------------------------------
Function pop_export_header( p_ExportHeaderId               in NUMBER Default Null,
		              p_ExportName		In Varchar2 Default 'ITEMS',
		              p_ExportTYPE		In Varchar2 Default 'ITEMS',
                                             p_SourceName   		In Varchar2 Default 'WEBEXPORT',
			p_SourceId                     in NUMBER Default Null, 
                                               p_Hint       		In Varchar2 Default 'POPULATE',
	              		p_ActionType		In Varchar2 Default 'REPLACE',
			p_Param1                       in VARCHAR2 Default Null,
			p_Param2                       in VARCHAR2 Default Null,
			p_Param3                       in VARCHAR2 Default Null,
			p_Param4                       in VARCHAR2 Default Null,
			p_Param5                       in VARCHAR2 Default Null,
			p_Param6                       in VARCHAR2 Default Null,
			p_Param7                       in VARCHAR2 Default Null,
			p_Param8                       in VARCHAR2 Default Null,
			p_Param9                       in VARCHAR2 Default Null,
			p_Param10                      in VARCHAR2 Default Null,
			p_Param11                      in VARCHAR2 Default Null,
			p_Param12                      in VARCHAR2 Default Null,
			p_Param13                      in VARCHAR2 Default Null,
			p_Param14                      in VARCHAR2 Default Null,
			p_Param15                      in VARCHAR2 Default Null,
			p_Param16                      in VARCHAR2 Default Null,
			p_Param17                      in VARCHAR2 Default Null,
			p_Param18                      in VARCHAR2 Default Null,
			p_Param19                      in VARCHAR2 Default Null,
			p_Param20                      in VARCHAR2 Default Null)
 Return Number
IS
 v_ExportHeaderID   Number;
 v_SourceName     Varchar2(30);
Begin
  If p_ExportName is Null Then Return(p_ExportHeaderID); End If;
  If p_ActionType = 'REPLACE' Then 
   v_SourceName  := Substr(p_SourceName,1,30);
    Begin -- Delete Existing Records
      Delete Export_Lines
      Where  Export_Header_ID in (Select x.Export_Header_ID 
                                  From   Export_Headers x
                                  Where  x.Source_Name = v_SourceName);
      Delete Export_Headers
      Where Source_Name = p_SourceName;
      Commit;
    Exception When Others Then Null;
    End;
 Elsif p_ActionType in ('INSERT','APPEND') Then 
   begin 
     Select EXPORT_Header_ID,EXPORT_NAME,
           EXPORT_TYPE, SOURCE_NAME
     Into  v_ExpHeaders.EXPORT_Header_ID,v_ExpHeaders.EXPORT_NAME,
           v_ExpHeaders.EXPORT_TYPE, v_ExpHeaders.SOURCE_NAME
    From   Export_Headers
    Where  Source_Name = v_SourceName
    And    Rownum  = 1;
   Exception When Others Then Null;
  End;
 End If; 
if v_ExpHeaders.EXPORT_Header_ID is Null Then 
  select EXPORT_HEADERS_S.NEXTVAL Into v_ExpHeaders.EXPORT_Header_ID From Dual;
 Insert Into EXPORT_HEADERS(
                EXPORT_Header_ID,EXPORT_NAME, EXPORT_TYPE, SOURCE_NAME,
                Source_ID, Param1,Param2,
                Param3,Param4,Param5,Param6,
                Param7,Param8,Param9,Param10,
                Param11,Param12,Param13,Param14,Param15)
 Values(v_ExpHeaders.EXPORT_Header_ID,Substr(p_ExportName,1,30),
        p_ExportType, v_SourceName,
        p_SourceID, p_Param1,p_Param2,
        p_Param3,p_Param4,p_Param5,p_Param6,
                p_Param7,p_Param8,p_Param9,p_Param10,
                p_Param11,p_Param12,p_Param13,p_Param14,p_Param15 );

End If;
Return(v_ExpHeaders.EXPORT_Header_ID);

Exception When Others Then 
  Raise_Application_Error(-20001,SqlErrm);
Return(Null);
End;

 ---------------------------------------------------------
Procedure pop_Export_Lines( p_ExportHeaderID		In Varchar2 Default Null,
			p_SlNo			In Number Default 0,
			p_SourceID_1		In number Default Null,
			p_Sourceid_2		In Number Default Null,
			p_SourceNumber		In Varchar2 Default Null,
			p_Data			In Varchar2 Default Null,
			p_DataType		In Varchar2 Default 'DATA',	
			p_Hint       		In Varchar2 Default 'POPULATE',
	                                p_ActionType		In Varchar2 Default 'REPLACE',
		                p_ExportName		In Varchar2 Default 'ITEMS',
		                p_ExportTYPE		In Varchar2 Default 'ITEMS',
                                                p_SourceName   		In Varchar2 Default 'WEBEXPORT',		            		
                             	                p_Delimiter 		In Varchar2 Default ',',
                              		p_FileName  		In Varchar2 Default 'WEBSTOCK.csv',
                              		p_Directory 		In Varchar2 Default 'DIR_OUTBOUND',
			p_Statuscode	      	In Varchar2 Default 'OK',
			p_StatusText	     	In Varchar2 Default Null,
                             		p_NotifGroup 		In Varchar2 Default Null, 
			p_SourceID_3		In number Default Null,
			p_Sourceid_4		In Number Default Null,
			p_Order_By1		In Number Default Null,
			p_Order_By2		In Number Default Null,
			p_Order_By3		In Number Default Null
)
IS 
v_Ctr        	Number := 1;
vDelimiter		Varchar2(1);
vDummyChar 	Varchar2(400);
vDataArray    	Utility_Pkg.CharTab;

BEGIN
if p_Data is Null Then Return; End If;
v_ExpHeaders.EXPORT_Header_ID := p_ExportHeaderId;
if v_ExpHeaders.EXPORT_Header_ID is Null Then 
   v_ExpHeaders.EXPORT_Header_ID := Pop_Export_Header(p_ExportName         => p_ExportName,
                                                                                P_ExportType		=> p_ExportType,
					p_SourceName                     => p_SourceName);
End If; 
if v_ExpHeaders.EXPORT_Header_ID is Null then Return; End If;
v_ExpLines := Null;
  begin 
    If p_ActionType = 'REPLACE' Then 
        Delete Export_Lines
           Where Source_ID_1 		= p_SourceId_1
           And    nvl( Source_ID_2,0)  	= p_SourceId_2
           And    Export_Header_ID              = v_ExpHeaders.EXPORT_Header_ID;
    End If; 
 Exception When Others Then Null;
End;

		v_ExpLines.EXPORT_Header_ID  	:= v_ExpHeaders.EXPORT_Header_ID;
 		v_ExpLines.Sl_No			:= p_SlNo;
 		v_ExpLines.SOURCE_ID_1		:= p_SourceID_1;
 		v_ExpLines.SOURCE_ID_2		:= p_SourceID_2;
 		v_ExpLines.SOURCE_ID_3		:= p_SourceID_3;
 		v_ExpLines.SOURCE_ID_4		:= p_SourceID_4;
 		v_ExpLines.ORDER_BY_1		:= p_Order_By1;
 		v_ExpLines.ORDER_BY_2		:= p_Order_By2;
 		v_ExpLines.ORDER_BY_3		:= p_Order_By3;
 		v_ExpLines.SOURCE_NUMBER		:= p_SourceNumber;
 		v_ExpLines.Data_Type		:= p_DataType;
                                v_ExpLines.Status_code		:= p_Statuscode;
		v_ExpLines.Status_text		:= p_StatusText;

 Utility_Pkg.SplitLine(p_Data||p_Delimiter,p_Delimiter,vDataArray); 
 for i in 1..vDataArray.Count
  Loop
   	  Col_ExpLines(p_colpos  => i,
                  	        p_Value     => vDataArray(i));
 End Loop;
 Insert_ExportLines;
   Commit;

Exception When Others Then 
  Raise_Application_Error(-20004,'Stage_Items:'||SqlErrm);
End;
-----------------------------------------
Procedure Validate_Exported_Lines(p_StatusText			 In Out Varchar2,
                                                         p_Identifier  			in Varchar2,
		                           p_Expression                                In Varchar2 Default Null,
			         p_ExpressionMessage		In Varchar2 Default Null,
		                          p_Value       			In Varchar2  Default Null,
			          p_ValuetoMatch		In Varchar2 Default Null,
			          p_ValueNotToMatch		In Varchar2 Default null )
IS
  

 Failed Exception;
ctr       number := 0;
SqlStr   Varchar2(2000);
------------------------------
   Procedure lpr_status(p_text in Varchar2)
   Is
    begin
           p_StatusText := p_statusText||' '||p_Identifier||'='||p_text;
          Dbms_OutPut.Put_Line(p_statusText);
          raise Failed;
    End;
------------------------------
begin
if p_Expression is Not Null
  then 
    begin
      SqlStr := 'select 1 from dual where '||p_Expression;
      Dbms_Output.Put_Line(SqlStr);
      Execute Immediate SqlStr  Into ctr;
       if ctr = 1 then 
         lpr_Status(p_ExpressionMessage);
      End If;
   end;
End If; 

 if p_Value is null Then 
   lpr_Status('null');
 End If;

 if p_ValueToMatch is not null Then 
    If nvl(Instr(p_ValueToMatch,P_Value),0) = 0 Then 
       lpr_Status('M:'||p_ValuetoMatch);
    End If;
 End If;
 if p_ValueNotToMatch is not null Then 
    If nvl(Instr(p_ValueNotToMatch,P_Value),0) = 1 Then 
      lpr_Status('N:'||p_ValueNotToMatch);
    End If;
 End If;
 
 if p_Identifier = 'PRIMARYB' Then 
 
     If Length(p_Value) <> 13 Then 
        lpr_Status('No Barcode');
    End If;
End If; 

Exception When Others Then Null;
End;
----------------------------------------------------------------------
Procedure   Extract_View_Data(
                           p_ViewName 	In Varchar2,
	           p_Sql		In Varchar2 Default Null,
	           p_TargetType	In Varchar2  Default 'ARRAY',
	           p_SkipRows		In Number Default  0,
                           p_FileName 		In Varchar2  Default Null,
                           p_Where    		In Varchar2 Default Null,
                           p_OrderBy  		In Varchar2 Default Null,
                           p_DirName  		In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter 		In Varchar2 Default '|',
                           p_CallCode  		In Number Default 0,
                           p_Headers   		In Varchar2 Default Null,
                           p_NotifGroup 	In Varchar2 Default Null,
                           p_Hint       		In Varchar2 Default Null)
IS
vCharTab32k Utility_Pkg.CharTab;
vFileType  Utility_Pkg.FileType;
vString    Varchar2(4000);
vHeader    Varchar2(4000);
vLAstRunDate date;
VWhere     Varchar2(400);
 v_ExportHeaderID   Number;
 v_SourceName     Varchar2(30);

Begin

  v_ExpHeaders     := Null;
  v_ExpLines          := Null;
if p_callCode = 1 Then 
 vString := nvl(p_Sql,Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'QUERYSTRING',  p_Delimiter => p_Delimiter));
 dBMS_oUTPUT.Put_Line(vString);
 vHeader := nvl(p_Headers,Utility_Pkg.Getcolumns(p_ObjectName => p_ViewName,p_RetType => 'COLUMNS',  p_Delimiter => p_Delimiter));
 dBMS_oUTPUT.Put_Line(vheader);
End If;
vWhere := p_Where;
if p_HINT = 'INCREMENTAL' then 
 vWhere :=  Cmn_Common_Pkg.Add_Condition(p_NewString => ' creation_date >  Session_Pkg.Get_LastSavedDate('||''''||p_ViewName||''''||')',
                       p_OldString => vWhere,
                       p_Operator  => ' AND ');
End If; 
vCharTab32k := Utility_Pkg.GetDatatoArray32k(p_Sql => p_Sql,p_ViewNAme => p_ViewName,p_Where=>vWhere,p_Order=>p_Orderby);

  if vCharTab32k.count > 0 then 
    If p_TargetType = 'FILE' then 
         vFileType := Utility_Pkg.OpenFile(pfile => nvl(p_fileName,p_ViewName||'.csv'),
                                     pDir  => p_DirName,
                                     pMode => 'w');
      End If;
   If p_TargetType = 'TABLE' Then 
     v_ExportHeaderID  := pop_export_header( 
                                              p_ExportHeaderId            => Null,
		              p_ExportName 	       => p_ViewName,
		              p_ExportTYPE	       => 'IMPORT',
                                              p_SourceName   	       => p_ViewName,
		              p_SourceId                       =>  -1, 
                                              p_Hint       		       =>  'POPULATE',
	              	              p_ActionType	       =>  'REPLACE');
    Dbms_Output.Put_Line('Export Header ID:'||V_ExportHeaderID);
   End If;
End If; 
If p_TargetType = 'FILE'  and p_Headers is not Null Then  
       Utility_Pkg.Write(pfileId => vfileType,Wstring => p_Headers);
End If;

For i in 1..vCharTab32k.Count 
Loop

   if i <=  p_Skiprows Then Goto DoNothing; End If;
  if p_TargetType = 'FILE' Then 
      
      Utility_Pkg.Write(pfileId => vfileType,Wstring => vCharTab32k(i));
  End If; 
  If p_TargetType = 'TABLE' Then 
            pop_Export_Lines( p_ExportHeaderID	=> v_ExportHeaderID,
			p_SlNo		=> i,
			p_SourceID_1	=> i,
			p_Data		=> vCharTab32k(i),	            		
                             	                p_Delimiter 	=> p_Delimiter);

   End If;
 -- dbms_OutPut.Put_Line(Replace(Replace(vCharTab32k(i),CHR(10),' '),chr(13),' '));

 <<DoNothing>>
     Null;
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

If p_TargetType = 'FILE' Then 
   Utility_Pkg.closeFile(vFileType);
End If; 

Exception When Others then 
 if p_TargetType = 'FILE' 
   Then 
      Utility_Pkg.closeFile(vFileType);
  End If; 

End;
-----------------------------------------------------

Function  Data_To_Array(
                           p_FileName 		In Varchar2  Default Null,
	           p_SourceType	In Varchar2  Default 'FILE',
	           p_SkipRows		In Number Default  0,
                           p_DirName  		In Varchar2 Default 'DIR_OUTBOUND',
                           p_Delimiter 		In Varchar2 Default '|',
                           p_CallCode  		In Number Default 0,
                           p_Headers   		In Varchar2 Default Null,
                           p_NotifGroup 	In Varchar2 Default Null,
                           p_Hint       		In Varchar2 Default Null)
 Return   Utility_Pkg.CharTab
IS
vCharTab32k Utility_Pkg.CharTab;
vFileType  Utility_Pkg.FileType;
vString    Varchar2(32676);
vHeader    Varchar2(4000);
vLAstRunDate date;
VWhere     Varchar2(400);
 v_ExportHeaderID   Number;
 v_SourceName     Varchar2(30);
ArrayIndex   Number;
vRows   Number;

Begin

  v_ExpHeaders     := Null;
  v_ExpLines          := Null;
  vFileType := Utility_Pkg.OpenFile(pfile => p_fileName,
                                     pDir  => p_DirName,
                                     pMode => 'r');
 Dbms_OutPut.Put_Line('Opened File:'||p_FileName);
vCharTab32k.delete;
ArrayIndex := 1;
vRows        := 0;
While 1 = 1 
  Loop
                vRows  := vRows + 1;
                pub_CurrentLine := Utility_Pkg.Read(vFileType);
 Dbms_OutPut.Put_Line('Line:'||pub_CurrentLine);
                if pub_CurrentLine = '$EOF$' then Exit; End If; 
               if vRows  <=  p_Skiprows Then Goto DoNothing; End If;       
                vCharTab32k(ArrayIndex) := Pub_CurrentLine;
              ArrayIndex := ArrayIndex + 1;
 <<DoNothing>>
     Null;
End Loop;
Pub_RetValue :=  Notification_Pkg.NotifyGroup(
                        p_Group 	=> p_NotifGroup,
                        p_subject 	=> 'EXport File :'||p_FileName||' created  on :'||sysdate,
                        p_text          => null);

   Utility_Pkg.closeFile(vFileType);



        Return(vCharTab32k);
Exception When Others Then 
        Dbms_OutPut.Put_Line('DatatoArray:'||SqlErrm);
        Utility_Pkg.closeFile(vFileType);
        Return(vCharTab32k);
End;
-----------------------------------------------------
Procedure  ImpExp_By_Template(p_TemplateID	In Number,
				p_TemplateName 	In Varchar2 Default Null,
				p_Directory 	In Varchar2 Default Null,
                                        		p_File       	Varchar2 Default 'FILE1_FILE2_FILE3_FILE4.txt',
                                       		 p_Content    	Varchar2 Default Null,
                                        		p_TableName  	Varchar2 Default 'A',
                                        		p_ColumnList 	Varchar2 Default Null,
                                        		p_PrimaryKey   	Varchar2 Default 'Column2',
                                        		p_PrimaryKeyValue	Varchar2 Default ':2',
                                        		p_SeqName    	Varchar2 Default  NULL,
				p_DonotUpdate  	Varchar2 Default ',Column2,Column1,',
				p_NewLine    	Varchar2 Default CHR(10),
				p_Delimiter  	Varchar2 Default '|',
				p_TableOperation 	Varchar2 Default 'INSERT',
                                        		p_Hint       	Varchar2 Default 'FILETOTABLE')
IS
  Retvalue     clob ;

  v_FileArray      	Utility_Pkg.CHARTAB ;
  v_FileNameArray      Utility_Pkg.CHARTAB ;
  v_ContentArray   	Utility_Pkg.CHARTAB;
  v_ColumnArray    	Utility_Pkg.CHARTAB ;
  v_Sql            	Varchar2(10000);
  v_Columns        	Varchar2(10000);
  v_Values         	Varchar2(10000);
  v_TableValues    	Varchar2(32676);
  v_Expression     	Varchar2(10000)  := 'UPPER('||''''||':CURRENT'||''''||')';
  v_ExpressionType     	Varchar2(30) ;
  v_ColumnValue    	Varchar2(10000);
  v_XColumnIndex   Number;
  v_UpdateSql      	Varchar2(32676);
  v_OrigUpdateSql      	Varchar2(32676);
  v_PrimaryKeyValue    Varchar2(10000);
  v_RecordExist    	Number := 0;
  v_CurrentSql     	Varchar2(32676);
  v_CurrentValue   	Varchar2(4000);
  v_ColumnHeader   Varchar2(32676);
  v_FileHeader   Varchar2(32676);
  v_HeadRow        	IMPEXP_HEADERS%RowType;
  v_LineRow        	IMPEXP_LINES%RowType;
  TYPE v_LineType is TABLE of	   IMPEXP_LINES%RowType;
  v_LineArray 	   v_LineType  := v_LineType();      
  v_PrimaryKey        Varchar2(1000);  
  v_OrigPrimaryKey        Varchar2(1000);
  v_Dirname		Varchar2(100);

  Procedure lpr_AppendClob(p_String   in Varchar2)
   IS
      Begin
       dbms_lob.writeAppend(retvalue , Length(p_String)+1, p_String||Chr(10) );
    End;

Begin
  DBMS_LOB.CREATETEMPORARY(RetValue,TRUE);
 Utility_Pkg.SplitLine(p_File,  '_',v_FileNameArray);

 If p_TemplateName||p_TemplateID  is Not Null Then 
       Begin
  	Select * 
   	Into  v_HeadRow
   	From  ImpExp_Headers
   	Where (ImpExp_Name = p_TemplateName or ImpExp_Header_ID = p_TemplateID)
                And Rownum = 1;
                Select Decode(v_HeadRow.Column_Delimiter,'P','|','C',',','|') 
                Into    v_HeadRow.Column_Delimiter  
                From Dual;
  	Exception When Others Then Null;
       End;
  	If v_HeadRow.ImpExp_Header_ID is null Then 
    	   Return;   -- (RetValue);
  	End If;

      Begin 
   	Select * 
   	BULK COLLECT Into v_LineArray
   	From ImpExp_Lines
   	Where ImpExp_Header_ID = v_HeadRow.ImpExp_Header_ID
   	Order By Nvl(File_Position,Sl_No),ImpExp_Line_ID;
  	Exception When Others Then Null;
      End;
  	If Nvl(v_LineArray.Count,0) <= 0 Then 
                    Return;  -- (Retvalue) ;
  	End If; 
 
 End If; 
 

   v_Sql := 'SELECT ' ;
  
    Dbms_OutPut.Put_Line('EXPORT TYPE:'||v_HeadRow.ImpExp_Type );
  if v_HeadRow.ImpExp_Type = 'EXPORT' Then 
  
   For Column in 1..v_LineArray.Count 
       Loop
          Dbms_Output.Put_Line(v_LineArray(Column).Column_Name);
          v_CurrentValue 	:= v_LineArray(Column).Column_Name;
          v_ColumnHeader	:= v_ColumnHeader||''''||Nvl(v_LineArray(Column).File_Column_Header,v_CurrentValue) ||''''|| v_HeadRow.Column_Delimiter;
          v_FileHeader		:= v_FileHeader||Nvl(v_LineArray(Column).File_Column_Header,v_CurrentValue) ||v_HeadRow.Column_Delimiter;
          v_Expression  	:= v_LineArray(Column).Expression;
          v_ExpressionType 	:= v_LineArray(Column).Expression_Type;

          if v_LineArray(Column).Table_Alias is Not Null Then 
             v_CurrentValue 	:= v_LineArray(Column).Table_Alias||'.'||v_CurrentValue ;
          End If;

          if  nvl(v_ExpressionType,'NONE') <> 'NONE'  and v_Expression is Not Null Then 
             v_Expression := Replace(v_Expression,':CURRENT', v_CurrentValue);
             if Nvl(Instr(v_Expression,':#FILE'),0) > 0 Then 
                   For file in 1..v_FileNameArray.Count 
                    Loop
                        v_Expression := Replace(v_Expression,':#FILE'||File, v_FileNameArray(File));
                   End Loop;
             End If;

             If  Nvl(Instr(v_Expression,'#'),0) > 0 Then 
               For pos  in 1..v_LineArray.Count 
                Loop
                   v_Expression := Replace(v_Expression,'#'||pos||'#', v_LineArray(pos).Column_Name);
                End Loop;
             End If;

              If  v_ExpressionType = 'SEQUENCE' Then 
                  v_CurrentValue := nvl (v_Expression, v_HeadRow.Object_Name||'_S.NEXTVAL');
            elsif v_ExpressionType  in ('SQL') Then 
                   Execute Immediate v_Expression Into v_CurrentValue;
          elsif v_ExpressionType  in ('SQLIMP') Then 
                 Null;
               Else            
                   v_CurrentValue  := v_Expression;
               End If; 
            End If; 
                 if  v_LineArray(Column).Builtin_Functions is not null  and v_LineArray(Column).Column_Name is Not Null  Then 
                       v_CurrentValue   :=  v_LineArray(Column).Builtin_Functions||'('||v_CurrentValue||')';
                 End If;
                 if  v_LineArray(Column).If_Null  is not null Then 
                       v_CurrentValue   :=  'Nvl('||v_CurrentValue||','||v_LineArray(Column).If_Null ||')';
                 End If;

          v_Columns 		:= v_Columns||v_CurrentValue ||'||'||''''||v_HeadRow.Column_Delimiter||''''||'||';
    End Loop;
     v_Columns    := Replace(v_Columns||'||','||||');
    Dbms_OutPut.Put_Line('Select:'||v_Columns);
     v_FileHeader    := v_FileHeader;
     v_ColumnHeader    := Replace(v_ColumnHeader||'||','||||');
    Dbms_OutPut.Put_Line('Header:'||v_ColumnHeader);
    Dbms_OutPut.Put_Line('FileHeader:'||v_FileHeader);
    v_Sql := v_Sql ||v_Columns ||' String FROM '||v_HeadRow.Object_Name||' '||v_HeadRow.Where_Clause
                         ||' '||v_HeadRow.GroupBy_Clause||' '||v_HeadRow.OrderBy_Clause;
    v_Dirname := Utility02_Pkg.Get_DirectoryName(v_HeadRow.Directory_Name);
    Dbms_OutPut.Put_Line('DirName:'||v_DirNAme);
    Extract_View_Data(p_ViewName => v_HeadRow.Object_Name,
                                    p_sql             => v_Sql,
                                    p_Targettype  => 'FILE',
                                    p_Headers     => v_FileHeader,
                                    p_FileName    => v_HeadRow.file_Name,
				    p_Dirname     => v_Dirname);
    Dbms_OutPut.Put_Line(v_Sql);
    Return; -- ('OK');
 End If; 
   
  v_UpdateSql := Null;
  v_OrigUpdateSql := Null;
  v_PrimaryKey      := Null;
  v_OrigPrimaryKey      := Null;
   v_Sql := 'Insert Into '||v_HeadRow.Object_Name||' (';
   For Column in 1..v_LineArray.Count 
       Loop
          Dbms_Output.Put_Line(v_LineArray(Column).Column_Name);
          v_CurrentValue 	:= v_LineArray(Column).Column_Name;
          v_Columns 		:= v_Columns||v_CurrentValue ||',';
          v_Values 		:= v_Values||':'||Column||':'||',';
       If v_LineArray(Column).Update_Flag = 'Y' Then 
          v_OrigUpdateSql  	:= v_OrigUpdateSql||v_CurrentValue ||' = Nvl('||':#'||v_LineArray(Column).Sl_No||'#,'||v_CurrentValue ||'),';
       End If; 
        If v_LineArray(Column).Primary_Flag  = 'Y' Then 
          if v_OrigPrimaryKey      is null then 
               v_OrigPrimaryKey 	:= v_CurrentValue ||'  =  #'||Column||'#';
          else
               v_origPrimaryKey              := v_origPrimaryKey || ' and '||v_CurrentValue ||'  =  #'||Column||'#';
         End If;
       End If; 
   End Loop;
    Dbms_Output.Put_Line('---PrimaryKey:'||v_origPrimaryKey);
-- Testing Data_To_Array 
     v_FileArray:= Data_To_Array(
                           p_FileName 		=> v_HeadRow.file_Name,
	           p_SourceType	=> 'FILE',
	           p_SkipRows		=>  1,
                           p_DirName  		=>  'DIR_OUTBOUND',
                           p_Delimiter 		=> v_HeadRow.Column_Delimiter);

-- Remove additional commas 
    v_Columns    := Replace(v_Columns||',',',,');
    v_Values     := Replace(v_Values||',',',,');
   Dbms_OutPut.Put_Line(v_Columns||'  -- '||v_Values);
    v_OrigUpdateSql  := Replace(v_OrigUpdateSql||',',',,');
    If v_OrigUpdateSql is Not Null Then 
       v_OrigUpdateSql  := 'Update '||v_HeadRow.Object_Name ||' Set '||v_OrigUpdateSql;
       Dbms_OutPut.Put_Line('Update:'||V_OrigUpdateSql);
    End If; 



  For File in 1..v_FileArray.Count
  Loop
 
  -- Get Contents into an Array line by line 
  v_ContentArray.Delete;
     Utility_Pkg.SplitLine(v_FileArray(File),v_HeadRow.Column_Delimiter,v_ContentArray);
      v_TableValues 	:= v_Values;
     v_UpdateSql 	:= v_OrigUpdateSql;
     v_PrimaryKey 	:= v_OrigPrimaryKey;
      Dbms_OutPut.Put_Line('LoopFileArray:'||v_TableValues);

      For Content  in 1..v_ContentArray.Count
          Loop

  --   v_UpdateSql 	:= v_OrigUpdateSql;
         Dbms_Output.Put_line('Contnt Index:'||Content||' :' ||v_ContentArray(Content));
         
          begin 
            v_LineRow.File_Position := Nvl(v_LineArray(Content).File_Position,v_LineArray(Content).sl_No);
          Exception When Others Then 
            v_LineRow.File_Position := 0;
          
         End;
           if  v_LineRow.File_Position between 1 and  v_ContentArray.Count
             Then 
               v_ColumnValue 	:= v_ContentArray(v_LineRow.File_Position); 
           Else
               v_ColumnValue 	:= v_ContentArray(Content);   
           End If;     
    
       begin 
          v_Expression := v_LineArray(Content).Expression;
          v_ExpressionType := v_LineArray(Content).Expression_Type;
       Exception When Others Then 
          v_Expression := Null;
       End;

     -- Replace Positional Parameters with actual values 
        if  Nvl(v_ExpressionType,'NONE') <> 'NONE' and v_Expression is not null Then 
          begin 
           if Nvl(Instr(v_Expression,'$$'),0) > 0   Then 
               For expression  in 1..v_ContentArray.Count 
                Loop
                   v_Expression := Replace(v_Expression,'$$'||Expression, v_ContentArray(Expression));
                End Loop;
           End If; 
           if Nvl(Instr(v_Expression,'#'),0) > 0   Then 
               For expression  in 1..v_ContentArray.Count 
                Loop
                   v_Expression := Replace(v_Expression,'#'||Expression||'#', v_ContentArray(Expression));
                End Loop;
           End If; 
             Exception When Others Then Null;
         End; 
            Dbms_Output.Put_Line('Expression1:'||v_Expression);
             v_Expression := Replace(v_Expression,':CURRENT', v_ColumnValue);
             if Nvl(Instr(v_Expression,':FILE'),0) > 0 Then 
               For file in 1..v_FileNameArray.Count 
                Loop
                   v_Expression := Replace(v_Expression,':FILE'||File, v_FileNameArray(File));
                End Loop;
              End If;

             if v_ExpressionType = 'SEQUENCE' Then 
                v_ColumnValue  :=  v_LineArray(Content).Expression;
            elsif v_ExpressionType in ( 'SQL','SQLIMP') Then 
                   Dbms_OutPut.Put_Line('SQL Expression:'||v_Expression);
                   Execute Immediate v_Expression Into v_ColumnValue;
                   Dbms_OutPut.Put_Line('  Value:'||v_ColumnValue);
             elsif   v_ExpressionType = 'CONSTANT' Then      
                   v_ColumnValue := v_LineArray(Content).Expression;
              Else    
              	begin 
              		Execute Immediate 'Select ' ||v_Expression|| ' From Dual ' Into v_ColumnValue;
              	       Exception When Others Then 
                                    Lpr_AppendClob('Expression:'||v_Expression||' -- '||SqlErrm);
                                      Return;   -- (RetValue);
                 End;
            End If; 
         End If;  -- End Of Expression 

       Dbms_Output.Put_Line('After Expression:'||v_Expression);
      -- If Variables exist      
         begin 
             if Substr(v_ColumnValue,1,1) = '$'   Then 
                Begin 
                   v_XColumnIndex 	:= Replace(v_ContentArray(Content),'$');
                  Exception When Others Then v_XColumnIndex := 0; 
                 End;
            -- v_Expression  := 
              If v_XColumnIndex > 0 Then 
                  Dbms_OutPut.Put_Line('$Exist:'||Content||':'
                                         ||v_ColumnValue||' - '||v_ContentArray(v_XColumnIndex));
                  v_TableValues := Replace(v_TableValues,':'||Content||':',''''|| v_ContentArray(v_XColumnIndex)||'''');
              End If; 
          End If; 
             Exception When Others Then Null;
         End; 

         if nvl(Instr(v_ColumnValue,'.NEXTVAL'),0) > 0 Then 
            v_TableValues 		:= Replace(v_TableValues,':'||Content||':',v_ColumnValue); 
        elsif  upper(v_ColumnValue) in ('SYSDATE','SYSTIMESTAMP','USER')   Then 
            v_TableValues 		:= Replace(v_TableValues,':'||Content||':',v_ColumnValue);
         Else
            v_TableValues 		:= Replace(v_TableValues,':'||Content||':',Nvl(Replace(''''||v_ColumnValue||'''',''),'Null'));
         End If; 
        if  upper(v_ColumnValue) in ('SYSDATE','SYSTIMESTAMP','USER')   Then 
          v_UpdateSql 		:= Replace(v_UpdateSql,':#'||Content||'#',Nvl(Replace(v_ColumnValue,''),'Null'));
        Else
         v_UpdateSql 		:= Replace(v_UpdateSql,':#'||Content||'#',Nvl(Replace(''''||v_ColumnValue||'''',''),'Null'));
        End If;
        if p_PrimaryKeyValue = ':'||To_Char(Content) Then 
             v_PrimaryKeyValue  	:= Replace(P_PrimaryKeyValue,':'||To_Char(Content),v_ColumnValue);
           Dbms_OutPut.Put_Line('PrimaryValue:'||v_PrimaryKeyValue);
        End If;
          if v_Expression = 'CHAR' Then 
        
            v_PrimaryKey		:= Replace(v_PrimaryKey,'#'||Content||'#',''''||v_ColumnValue||'''');
         else
            v_PrimaryKey		:= Replace(v_PrimaryKey,'#'||Content||'#',v_ColumnValue);
        End If; 
      End Loop;

    Dbms_Output.Put_Line('---PrimaryKey AFTER :'||v_PrimaryKey);
   --- Assign to null for the columns not included in the file 
       For Content1  in v_ContentArray.Count..v_LineArray.Count
          Loop
             v_TableValues := Replace(v_TableValues,':#'||Content1||'#','Null');             
             v_TableValues := Replace(v_TableValues,'$'||Content1||'$','Null');             
             v_UpdateSql   := Replace(v_UpdateSql,':#'||Content1||'#','Null');     
         --  Dbms_OutPut.Put_Line(v_TableValues);
      End Loop;

     if v_HeadRow.Table_Operation in ('UPDATE','MERGE','INSERT')  Then 
       v_CurrentSql := 'Select Count(1)  From '||v_HeadRow.Object_Name ||' Where '||v_PrimaryKey ;
       Dbms_OutPut.Put_Line('SELECT:'||v_CurrentSql);
      begin 
        Execute Immediate v_CurrentSql  Into   v_RecordExist ;
         Dbms_OutPut.Put_Line('v_RecordExist:'||v_RecordExist);

      End;
      
     End If;
     If v_RecordExist = 0 and v_HeadRow.Table_Operation in ( 'INSERT','MERGE')  Then 
        v_CurrentSql := v_Sql||v_Columns||') Values( '||v_TableValues||' )';
       Dbms_OutPut.Put_Line('INSERT:'||v_CurrentSql);
      Execute Immediate v_CurrentSql;
     End If; 
     If v_RecordExist > 0 and v_HeadRow.Table_Operation in ('UPDATE','MERGE') Then 
        v_CurrentSql := v_UpdateSql ||' Where '||v_PrimaryKey ;
       Dbms_OutPut.Put_Line('UPDATE:'||v_CurrentSql);
       Dbms_OutPut.Put_Line('USING :  '||v_PrimaryKeyValue);
     Execute Immediate  v_CurrentSql; --Using v_PrimaryKeyValue;
     End If;       
  End Loop;

  Lpr_AppendClob('OK');
  Commit;
Exception When Others Then 
   Raise_Application_Error(-20001,'IMPORT/EXPORT:'||SqlErrm);
  Dbms_OutPut.Put_Line('In Last Exception:'||SqlErrm);
End;
------------------------------------------------------------------------------------------------------------------
Function ImpExp_Copy_Template(p_TemplateId 		In Number,
			      p_TemplateName	In Varchar2 Default Null,
			      p_Hint		In Varchar2 Default 'EXPORTTOIMPORT')
 Return Number
IS
 HeaderID  Number;
Begin 
  
if p_TemplateName||p_TemplateID  is  Null Then  Return(-1); End IF;
 For i in (Select *     
   	From  ImpExp_Headers
   	Where (ImpExp_Name = p_TemplateName or ImpExp_Header_ID = p_TemplateID)
                And Rownum = 1
              ) 
 Loop
    if p_Hint = 'EXPORTTOIMPORT' Then 
        i.ImpExp_Type 	:= 'IMPORT';
        i.Object_Name   	:= Replace(i.Object_Name,'_V');
        i.Table_Operation  	:= 'UPDATE';
        i.Where_Clause 	:= null;
        i.GroupBy_Clause 	:= null;
        i.OrderBy_Clause 	:= null;
    End If; 
        i.ImpExp_Name := Substr(i.ImpExp_Name|| i.ImpExp_Type,1,30);
        select  IMPEXP_HEADERS_S.NextVal Into HeaderID  From Dual;
       Insert Into IMPEXP_HEADERS(Impexp_Header_Id,Impexp_Name,Impexp_Type,
	Impexp_Decription,Object_Name,Use_Api,Directory_Name,
	File_Name,File_Name_Delimiter,Column_Delimiter,Copied_From,
	Active,Access_Level,Last_Update_Date,Last_Updated_By,
	Creation_Date,Created_By,Bu_Id,Delete_Flag,Update_Source,
	Record_Status,Where_Clause,Orderby_Clause,Groupby_Clause,
	Distinct_Clause,Table_Operation
              )
         Values(HeaderID,i.Impexp_Name,i.Impexp_Type,
	i.Impexp_Decription,i.Object_Name,i.Use_Api,i.Directory_Name,
	i.File_Name,i.File_Name_Delimiter,i.Column_Delimiter,i.Copied_From,
	i.Active,i.Access_Level,sysdate,i.Last_Updated_By,
	sysdate,i.Created_By,i.Bu_Id,i.Delete_Flag,i.Update_Source,
	i.Record_Status,i.Where_Clause,i.Orderby_Clause,i.Groupby_Clause,
	i.Distinct_Clause,i.Table_Operation);
     For line in (Select * 
                      From ImpExp_Lines
                      Where ImpExp_Header_ID = i.ImpExp_Header_ID
                       And    Column_Name is Not Null
                     Order By Sl_No
                    )
      Loop
            if  p_Hint = 'EXPORTTOIMPORT' Then 
              --  Line.Expression_Type := 'NONE';
            --    Line.Expression            := Null;
                Line.BuiltIn_Functions := Null;
                Line.If_Null                  := Null;
            End If; 
             Insert Into ImpExp_Lines(Impexp_Header_Id,Impexp_Line_Id,Sl_No,
	Column_Name,File_Position,Expression,Expression_Type,
	Max_Length,Format,Filter_Condition,Filter_Type,
	File_Column_Header,Parameter_Name,Insert_Flag,
	Update_Flag,Primary_Flag,Last_Update_Date,	Last_Updated_By,
	Creation_Date,Created_By,	Bu_Id,
	Delete_Flag,Update_Source,	Record_Status,
	Builtin_Functions,If_Null,Table_Alias
               )
             Values(HeaderID,IMPEXP_LINES_S.NEXTVAL,Line.Sl_No,
	Line.Column_Name,Line.File_Position,Line.Expression,Line.Expression_Type,
	Line.Max_Length,Line.Format,Line.Filter_Condition,Line.Filter_Type,
	Line.File_Column_Header,Line.Parameter_Name,Line.Insert_Flag,
	Line.Update_Flag,Line.Primary_Flag,sysdate,	Line.Last_Updated_By,
	Sysdate,Line.Created_By,	Line.Bu_Id,
	Line.Delete_Flag,Line.Update_Source,	Line.Record_Status,
	Line.Builtin_Functions,Line.If_Null,Line.Table_ALias
              );
   End Loop;
  End Loop;
  Commit;
  Return(HeaderID);

Exception  
  When Others Then Return(-1);
End;
 
------------------------------------------------------------------------------------------------------------------
Function ImpExp_Create_Template(p_ObjectName                In Varchar2 ,
                                                         p_ImpExpType	In Varchar2 Default 'EXPORT',		
			          p_TemplateName	In Varchar2 Default Null,
			          p_TemplateId 	In Number Default Null,	
			         p_Hint		In Varchar2 Default 'NEW')
 Return Number
IS
 HeaderID   Number;
 HRow         IMPEXP_HEADERS%RowType;
 LRow          IMPEXP_LINES%RowType;
 slNo            Number := 0;

  Procedure Lpr_InsertLine Is
   begin
     Delete ImpExp_Lines Where ImpExp_Header_Id = HRow.ImpExp_Header_ID and Sl_No = Lrow.Sl_No;

               Select IMPEXP_LINES_S.NextVAL into LRow.Impexp_Line_Id    From Dual;
             Insert Into ImpExp_Lines(Impexp_Header_Id,Impexp_Line_Id,Sl_No,
	Column_Name,File_Position,Expression,Expression_Type,
	Max_Length,Format,Filter_Condition,Filter_Type,
	File_Column_Header,Parameter_Name,Insert_Flag,
	Update_Flag,Primary_Flag,Last_Update_Date,	Last_Updated_By,
	Creation_Date,Created_By,	Bu_Id,
	Delete_Flag,Update_Source,	Record_Status,
	Builtin_Functions,If_Null,Table_Alias
               )
             Values(HRow.ImpExp_Header_Id,LRow.ImpExp_Line_ID,LRow.Sl_No,
	LRow.Column_Name,LRow.File_Position,LRow.Expression,LRow.Expression_Type,
	LRow.Max_Length,LRow.Format,LRow.Filter_Condition,LRow.Filter_Type,
	LRow.File_Column_Header,LRow.Parameter_Name,LRow.Insert_Flag,
	LRow.Update_Flag,LRow.Primary_Flag,sysdate,	LRow.Last_Updated_By,
	Sysdate,LRow.Created_By,	LRow.Bu_Id,
	LRow.Delete_Flag,LRow.Update_Source,	LRow.Record_Status,
	LRow.Builtin_Functions,LRow.If_Null, LRow.Table_Alias
              );
  End;

Begin 
  
if p_TemplateName||p_TemplateID||p_ObjectName  is  Null Then  Return(-1); End IF;
begin 
 Select *  
 Into    HRow
 From  ImpExp_Headers
 Where (ImpExp_Header_ID = p_TemplateID or ImpExp_Name = nvl(p_TemplateName,p_ObjectName) )
 And Rownum = 1;
Exception When Others then Null;
End;

 SlNo := 0;
 For Column in ( Select * 
                          From  Col
                          Where  Tname = p_ObjectName
                           Order by ColNo
                        )
  Loop
         slno := SlNo + 1;
         if SlNo = 1 and HROW.ImpExp_Header_ID is Null  then 
       	 HRow.ImpExp_Type 	:= p_ImpExpType;
      	  HRow.Object_Name   	:= Upper(p_ObjectName);
      	  HRow.Table_Operation  	:= 'UPDATE';
       	 HRow.Where_Clause 	:= 'a ' ;
     	   HRow.GroupBy_Clause 	:= null;
      	  HRow.OrderBy_Clause 	:= null;
       	  HRow.ImpExp_Name             := nvl(p_TemplateName,HRow.Object_Name);
       	  HRow.File_Name_Delimiter              := '_';
                  HRow.Column_Delimiter        := 'P';
                  HRow.Use_API		      := 'N';
                  HRow.ACTIVE		       := 'Y';
                  HRow.ACCESS_LEVEL	       := 'SYSTEM';
                  HROW.Directory_Name         := 'DIR_OUTBOUND';
                  HRow.File_Name		:= Lower(p_ObjectName)||'.txt';
        select  IMPEXP_HEADERS_S.NextVal Into HROW.ImpExp_Header_ID  From Dual;
       Insert Into IMPEXP_HEADERS(Impexp_Header_Id,Impexp_Name,Impexp_Type,
	Impexp_Decription,Object_Name,Use_Api,Directory_Name,
	File_Name,File_Name_Delimiter,Column_Delimiter,Copied_From,
	Active,Access_Level,Last_Update_Date,Last_Updated_By,
	Creation_Date,Created_By,Bu_Id,Delete_Flag,Update_Source,
	Record_Status,Where_Clause,Orderby_Clause,Groupby_Clause,
	Distinct_Clause,Table_Operation
              )
         Values(HROW.ImpExp_Header_ID,HRow.Impexp_Name,HRow.Impexp_Type,
	HRow.Impexp_Decription,HRow.Object_Name,HRow.Use_Api,HRow.Directory_Name,
	HRow.File_Name,HRow.File_Name_Delimiter,HRow.Column_Delimiter,HRow.Copied_From,
	HRow.Active,HRow.Access_Level,sysdate,HRow.Last_Updated_By,
	sysdate,HRow.Created_By,HRow.Bu_Id,HRow.Delete_Flag,HRow.Update_Source,
	HRow.Record_Status,HRow.Where_Clause,HRow.Orderby_Clause,HRow.Groupby_Clause,
	HRow.Distinct_Clause,HRow.Table_Operation);
        End If; 
              LRow := Null;
            if  HRow.ImpExp_Type = 'EXPORTTOIMPORT' Then 
                LRow.Expression_Type := 'NONE';
                LRow.Expression            := Null;
                LRow.BuiltIn_Functions := Null;
                LRow.If_Null                  := Null;
            End If; 
     	 LRow.Impexp_Header_Id       := Hrow.Impexp_Header_Id;
 	LRow.Sl_No       		:= SlNo;
 	LRow.Column_Name       	:= Column.CName;
	 LRow.File_Position       	:= null;
 	LRow.Expression       	:= null;
 	LRow.Expression_Type       	:= 'NONE';
	 LRow.Max_Length       	:= Column.width;
	 LRow.Data_Type       	:= Column.ColType;
	 LRow.Format      		 := Null;
 	 LRow.Filter_Condition       	:= null;
 	LRow.Filter_Type       	:= null;
	 LRow.File_Column_Header     := Replace(Initcap(Column.CName),'_');
	 LRow.Parameter_Name          := Null;
 	LRow.Insert_Flag       	:= 'Y';
 	LRow.Update_Flag       	:= 'Y';
	 LRow.Primary_Flag       	:= 'N';
 	LRow.Last_Update_Date       	:= sysdate;
 	LRow.Last_Updated_By       	:= 1;
 	LRow.Creation_Date       	:= sysdate;
 	LRow.Created_By       	:= -1;
	 LRow.Bu_Id       		:= 1;
	 LRow.Delete_Flag       	:= 'N';
 	LRow.Update_Source       	:= 'API';
	 LRow.Record_Status       	:= 'I';
 	LRow.Builtin_Functions      	:= null;
 	LRow.If_Null       		:= null;
 	LRow.Table_Alias       	:= 'a';     
               if Lrow.Column_Name like '%_ID' then 
                   Lrow.Expression :=  sfn_id('IMPORT',slno+1,HRow.Object_Name,LRow.Column_Name,Null) ;
                  if Lrow.Expression is Not Null then 
                      Lrow.Expression_Type := 'SQLIMP';
                  End If; 
               End If;
                
               If HRow.ImpExp_Type = 'EXPORT'  Then 
                 if LRow.Column_Name like '%NOTE%'  
                    OR LRow.Column_Name like '%COMMENT%'
                    OR LRow.Column_Name like '%SPEC%'
                    OR LRow.Column_Name like '%NAME%'
                    OR LRow.Column_Name like '%ADDRESS%'
                    OR LRow.Column_Name like '%ATTRIBUTE%'
                  Then 
 	       LRow.Builtin_Functions      	:= 'SFN_SP';
                End If;
              End If;
             lpr_InsertLine;
             if Lrow.Column_Name like '%_ID' then 
                 Lrow.Expression :=  sfn_id('EXPORT',slno,HRow.Object_Name,LRow.Column_Name,Null) ;
                   if Lrow.Expression is Not Null then 
                       Lrow.column_Name := Substr(LRow.column_Name||'!VAL',1,30);
	       LRow.File_Column_Header     := Replace(Initcap(Lrow.column_Name),'_');     
                       Lrow.column_Name := Null; -- Substr(LRow.column_Name||'!VAL',1,30);            
                       Lrow.Expression_Type := 'SQLEXP';
                         slno := slno + 1;
                     LRow.Sl_No := SlNo;
 	    LRow.Builtin_Functions      	:= 'SFN_SP';
                    lpr_InsertLine;
               End If; 
             End IF;
                

  End Loop;
  Commit;
  Return(HRow.ImpExp_Header_ID);

Exception  
  When Others Then
  Raise_Application_Error(-20001,SqlErrm);
  Return(-1);
End;
 
-----------------------------------------------------------------------------------------------------------------------
end IMPEXP2_PKG;
/

Show Error;
