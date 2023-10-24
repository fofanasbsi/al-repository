table 50102 CustomerOverview
{
    DataClassification = CustomerContent;
    Caption = 'Customer Overview';
    TableType = Normal;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
        }
        field(2; "Customer No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
        }
        field(3; "Customer Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Name';
        }
        field(4; "Source Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Source Code';
        }
        field(5; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
        field(6; "LastRunDate"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'LastRunDate';
        }
    }

    keys
    {
        key(Pk; "Entry No.")
        {
            Clustered = true;
        }
    }
}