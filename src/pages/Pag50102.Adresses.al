page 50102 Adresses
{
    ApplicationArea = All;
    Caption = 'Adresses';
    PageType = Card;
    SourceTable = Address;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Address; Rec.Address)
                {
                    ToolTip = 'Spécifie la valeur du champ Adresse.';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'SSpécifie la valeur du champ Adresse County.';
                }
                field(Locality; Rec.Locality)
                {
                    ToolTip = 'Spécifie la valeur du champ Locality..';
                }
                field("Town/City"; Rec."Town/City")
                {
                    ToolTip = 'Specifies the value of the Town/City field.';
                }
            }
        }
    }
}
