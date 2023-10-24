pageextension 50101 "PostedSalesInvoiceUpdate PTE " extends "Posted Sales Inv. - Update"
{
    layout
    {
        addafter("Payment Method Code")
        {
            field("Address"; Rec."Bill-to Address")
            {
                ApplicationArea = All;

            }
            field("Address 2"; Rec."Bill-to Address 2")
            {
                ApplicationArea = All;

            }
            field("City"; Rec."Bill-to City")
            {
                ApplicationArea = All;

            }
            field("Post Code"; Rec."Bill-to Post Code")
            {
                ApplicationArea = All;

            }
            field("Country/Region"; Rec."Bill-to Country/Region Code")
            {
                ApplicationArea = All;

            }

        }
    }
}
