page 50106 Personnes
{
    ApplicationArea = All;
    Caption = 'Personnes';
    PageType = Card;
    SourceTable = Personne;
    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("code personne"; Rec."code personne")
                {
                    ToolTip = 'Spécifie la valeur du champ code personne.';

                }

                field(genre; Rec.genre)
                {
                    ToolTip = 'Spécifie la valeur du champ genre.';
                    trigger OnValidate()
                    begin

                    end;

                }
                field(nom; Rec.nom)
                {
                    ToolTip = 'Spécifie la valeur du champ nom.';
                    trigger OnLookup(var text: Text): Boolean
                    begin


                    end;
                }
                field("prénom"; Rec."prénom")
                {
                    ToolTip = 'Spécifie la valeur du champ prénom.';
                }

            }

            group("Autre Infos")
            {
                Caption = 'Autre Infos';

                field("date de voyage"; Rec."date de voyage")
                {
                    ToolTip = 'Spécifie la valeur du champ date de voyage.';
                }
                field(salaire; Rec.salaire)
                {
                    ToolTip = 'Spécifie la valeur du champ salaire.';
                }
                field(ville; Rec.ville)
                {
                    ToolTip = 'Spécifie la valeur du champ ville.';
                }
                field("âge"; Rec."âge")
                {
                    ToolTip = 'Spécifie la valeur du champ âge.';
                }
            }
        }
    }
}
