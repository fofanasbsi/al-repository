




pageextension 50130 "Sales HeaderExt" extends "Sales Quote"
{
    layout
    {


        addafter("Bill-to Name")
        {
            group("")
            {

                Visible = BillToOptions = BillToOptions::"Custom Address";
                field("Bill-to Name PTE"; Rec."Bill-to Name PTE")
                {
                    ApplicationArea = All;
                    Editable = BillToOptions = BillToOptions::"Custom Address";

                }
            }
        }
        modify(BillToContactPhoneNo)
        {
            ApplicationArea = All;
            Editable = BillToOptions = BillToOptions::"Custom Address";


        }
        modify(BillToContactMobilePhoneNo)
        {
            ApplicationArea = All;
            Editable = BillToOptions = BillToOptions::"Custom Address";

        }
        modify("Bill-to Name")
        {
            ApplicationArea = All;
            Visible = BillToOptions <> BillToOptions::"Custom Address";
            Editable = BillToOptions <> BillToOptions::"Custom Address";


        }
        modify("BillToContactEmail")
        {
            ApplicationArea = All;
            Editable = BillToOptions = BillToOptions::"Custom Address";

        }


    }

}


