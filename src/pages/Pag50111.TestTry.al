page 50111 TestTry
{
    ApplicationArea = All;
    Caption = 'Try test';
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
        MyCode: Codeunit TrySystem;
}
