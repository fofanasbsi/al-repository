page 50107 PersonneL
{
    ApplicationArea = All;
    Caption = 'PersonneL';
    PageType = List;
    SourceTable = Personne;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code personne"; Rec."code personne")
                {
                    ToolTip = 'Spécifie la valeur du champ code personne.';
                }
                field("date de voyage"; Rec."date de voyage")
                {
                    ToolTip = 'Spécifie la valeur du champ date de voyage.';
                }
                field(genre; Rec.genre)
                {
                    ToolTip = 'Spécifie la valeur du champ genre.';
                }
                field(nom; Rec.nom)
                {
                    ToolTip = 'Spécifie la valeur du champ nom.';
                }
                field("prénom"; Rec."prénom")
                {
                    ToolTip = 'Spécifie la valeur du champ prénom.';
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
