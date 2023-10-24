page 50108 CodeDocumentationPage
{
    ApplicationArea = All;
    Caption = 'SUM OF TWO NUMBERS';
    PageType = Card;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Addtion)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    MyCode.Run();
                end;

            }
        }
    }
    var
        MyCode: Codeunit Calcul;
}
