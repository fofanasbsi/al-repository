page 50117 CustomerOverviewPages
{
    ApplicationArea = All;
    Caption = 'CustomerOverview Pages';
    PageType = List;
    SourceTable = CustomerOverview;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ToolTip = 'Specifies the value of the Source Code field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                ApplicationArea = All;
                Caption = 'Import Records';
                Image = Import;
                trigger OnAction()
                begin
                    Ref.Run();
                end;

            }
        }
    }
    var
        Ref: Codeunit CustomerCodeUnit;

}
