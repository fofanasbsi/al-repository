page 50112 PowOfNumbersPage
{
    ApplicationArea = All;
    Caption = 'POW OF TWO NUMBERS';
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
        MyCode: Codeunit SumOfNumbers;
}
