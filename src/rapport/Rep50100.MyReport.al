report 50100 MyReport
{
    ApplicationArea = All;
    Caption = 'MyReport';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;//est utilisé pour que le rapport soit etabli automatiquement comme pour une fv, processus de vente
    dataset
    {
        dataitem(Customer; Customer)
        {
            /*
            est utilisé pour initialiser les objets avant tout traitement
            trigger OnPreDataItem()
            begin
                //Met une logique pour initialiser les objets
            end;
            */
            column(No_Customer; "No.")
            {
                IncludeCaption = true;
            }
            column(Name_Customer; Name)
            {
                IncludeCaption = true;
            }
            column(Phone_Customer; "Phone No.")
            {
                IncludeCaption = true;
            }
            column(Address_Customer; Address)
            {
                IncludeCaption = true;
            }
            column(EMail_Customer; "E-Mail")
            {
                IncludeCaption = true;
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
}
