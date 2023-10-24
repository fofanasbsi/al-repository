table 50103 BaseFoodTable
{
    DataClassification = ToBeClassified;
    DataPerCompany = false;

    fields
    {
        field(1; Name; Text[256]) { }
        field(2; Color; Enum FoodColor) { }
        field(3; Flavour; Text[256]) { }
        field(4; "Vegan Friendly"; Boolean) { }
        field(5; "Vegetarian Friendly"; Boolean) { }
        field(7; Price; Decimal)
        {
            DecimalPlaces = 2;
        }

        field(8; Restaurant; Integer) { }
    }

    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}