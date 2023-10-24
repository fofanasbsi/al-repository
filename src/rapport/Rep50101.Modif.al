report 50101 Modif

{
    ApplicationArea = All;
    Caption = 'Modif';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;//
    dataset
    {
        dataitem(Cust; "Customer")
        {
            trigger OnPreDataItem()
            begin
                Clear(Cust);
                Clear(Counter);
                if not ReplaceExisting then
                    Cust.SetRange("Name 2", '');
            end;

            trigger OnAfterGetRecord()
            begin
                if Cust2.get(Cust."No.") then begin
                    Cust2."Name 2" := Name2ToApply;
                    Cust2.Modify();
                    Counter += 1;
                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(Name2ToApply; Name2ToApply)
                    {
                        ApplicationArea = All;
                        Caption = 'Name2 to Apply';
                        ToolTip = 'Specifies the Name2 Apply';
                    }
                    field(ReplaceExisting; ReplaceExisting)
                    {
                        ApplicationArea = All;
                        Caption = 'Replace Existing?';
                        ToolTip = 'Replace Existing?';
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        Counter: Integer;
        Cust2: Record Customer;
        ReplaceExisting: Boolean;
        Name2ToApply: Text;

}
