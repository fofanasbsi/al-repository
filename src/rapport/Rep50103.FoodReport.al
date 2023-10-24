report 50103 FoodReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'FoodReport.rdl';
    AllowScheduling = true;

    dataset
    {
        dataitem(FoodTable; BaseFoodTable)
        {
            column(Name; Name) { }
            column(Color; Color) { }
            column(Flavour; Flavour) { }
            column(Vegan_Friendly; "Vegan Friendly") { }
            column(Vegetarian_Friendly; "Vegetarian Friendly") { }
            column(Price; Price) { }


        }
    }
}