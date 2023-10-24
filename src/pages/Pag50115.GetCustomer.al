page 50115 GetCustomer
{
    ApplicationArea = All;
    Caption = 'Get Customer';
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
                    Ref: Codeunit GetCustomerById;
                begin
                    Ref.FindAllCustomer();

                end;

            }
        }
    }
}
