page 50101 "Reward Levels"
{
    ApplicationArea = All;
    Caption = 'Reward Levels';
    PageType = List;
    SourceTable = "Reward Level";
    UsageCategory = Administration;
    Editable = false;
    CardPageId = "Reward Level";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Level; Rec.Level)
                {
                    ToolTip = 'Specifies the value of the Level field.';
                }
                field("Minimum Reward Points"; Rec."Minimum Reward Points")
                {
                    ToolTip = 'Specifies the value of the Minimum Reward Points field.';
                }
            }
        }
    }

}
