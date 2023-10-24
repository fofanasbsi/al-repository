page 50113 CodeUnitTest
{
    ApplicationArea = All;
    Caption = 'CodeUnit Test';
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
                var
                    Ref: Codeunit MyCodeunit;
                begin
                    Message('%1', Ref.MyProcedure(5, 'fofana'));
                end;

            }
        }
    }


}
