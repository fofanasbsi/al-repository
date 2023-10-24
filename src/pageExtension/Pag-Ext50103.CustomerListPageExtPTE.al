pageextension 50103 "CustomerListPageExt PTE" extends "Customer List"
{
    trigger OnOpenPage()

    begin
        Report.Run(Report::"Bank Account List");
    end;
}
