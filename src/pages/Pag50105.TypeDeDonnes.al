page 50105 "TypeDeDonnées"
{
    ApplicationArea = All;
    Caption = 'TypeDeDonnées';
    PageType = Card;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Types)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    MyType.Run();
                end;

            }
        }
    }
    var
        MyType: Codeunit Manipulation;
}
