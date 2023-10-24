report 50104 "Bank Account List"
{
    Caption = 'Bank Account List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts/bankaccouLis.rdl';

    dataset
    {
        dataitem("DataItemName"; "Bank Account")
        {
            RequestFilterFields = "No.", "Date Filter";
            column(BankNo; "No.")
            {

            }
            column(BankName; Name)
            {

            }
            column(BankBranchNo; "Bank Branch No.")
            {

            }
            column(BankBalance; "Balance (LCY)")
            {

            }
            column(CompanyName; CompanyName)
            {

            }
            column(CompanyPick; CompanyInfo.Picture)
            {

            }
            column(Bank_Report_Title; Bank_Report_Title)
            {

            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
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
    trigger OnPreReport()
    begin
        CompanyInfo.Get;
        CompanyInfo.CalcFields(Picture);
    end;

    var
        CompanyInfo: Record "Company Information";
        Bank_Report_Title: Label 'Bank Account Report';
}
