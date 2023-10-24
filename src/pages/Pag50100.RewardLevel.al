page 50100 "Reward Level"
{
    ApplicationArea = All;
    Caption = 'Reward Levels';
    PageType = Card;
    SourceTable = "Reward Level";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Level; Rec.Level)
                {
                    ToolTip = 'Specifies the value of the Level field.';
                }
                field("Minimum Reward Points"; Rec."Minimum Reward Points")
                {
                    ToolTip = 'Specifies the value of the Minimum Reward Points field.';
                }
            }
            group("Autre Infos")
            {
                Caption = 'Autre Infos';
                field("Reward Points"; Rec."Minimum Reward Points")
                {
                    ToolTip = 'Specifies the value of the Minimum Reward Points field.';
                }

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
