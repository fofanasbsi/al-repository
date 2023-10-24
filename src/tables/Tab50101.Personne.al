table 50101 Personne
{
    Caption = 'Personne Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "code personne"; Code[5])
        {
            DataClassification = ToBeClassified;
            Caption = 'code personne';
            trigger OnValidate()
            begin

            end;

        }
        field(2; "prénom"; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "nom"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "âge"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "salaire"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "ville"; Option)
        {
            OptionMembers = Rennes,Paris,Toulouse,Brest,Lyon,Marseille,"Le Mans",Lille;
            DataClassification = ToBeClassified;

        }
        field(7; "date de voyage"; Date)
        {
            DataClassification = ToBeClassified;

        }

        field(8; "genre"; Option)
        {
            OptionMembers = Homme,Femme,Autre;
            DataClassification = ToBeClassified;


        }

    }

    keys
    {
        key(pk; "code personne")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin
        Message('Donnée inserée avec succès!');
    end;

    trigger OnModify()
    begin
        Message('Donnée modifiée avec succès!');
    end;

    trigger OnDelete()
    begin
        Message('Donnée supprimée avec succès!');
    end;

    trigger OnRename()
    begin
        Message('Donnée renomée avec succès!');
    end;

}