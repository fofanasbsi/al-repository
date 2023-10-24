page 50103 Adresse
{
    ApplicationArea = All;
    Caption = 'Adresse';
    PageType = List;
    SourceTable = Address;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County field.';
                }
                field(Locality; Rec.Locality)
                {
                    ToolTip = 'Specifies the value of the Locality field.';
                }
                field("Town/City"; Rec."Town/City")
                {
                    ToolTip = 'Specifies the value of the Town/City field.';
                }
            }
        }
    }
}
