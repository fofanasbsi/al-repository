page 50104 AddTwoNumbers
{
    ApplicationArea = All;
    Caption = 'AddTwoNumbers';
    PageType = Card;
    UsageCategory = Administration;

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
        MyCode: Codeunit MyNewCodeUnits;
}
