page 50109 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                //
                Caption = 'Input';
                field("Niveau de difficulté"; "Difficulté")
                {
                    ApplicationArea = All;
                    Caption = 'Difficulté';
                    ToolTip = 'Selctionnez la Difficulté.';

                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;

                }

            }
            group(Output)
            {
                //
                Caption = 'Output';
                field("suggestion"; "Texte de suggestion")
                {
                    ApplicationArea = All;
                    Caption = 'Texte de suggestion';
                    ToolTip = 'Suggestion';
                    Editable = false;


                }
                field("niveau"; "Texte de niveau")
                {
                    ApplicationArea = All;
                    Caption = 'Texte de niveau';
                    ToolTip = 'niveau';
                    Editable = false;


                }


            }

        }
    }



    var
        "Texte de niveau": Text[20];
        "Texte de suggestion": Text[80];
        Difficulté: Integer;

    local procedure GetSuggestion()
    begin
        "Texte de niveau" := '';
        "Texte de suggestion" := '';

        case Difficulté of
            1 .. 5:
                begin
                    "Texte de niveau" := 'Beginner';
                    "Texte de suggestion" := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    "Texte de niveau" := 'Intermediate';
                    "Texte de suggestion" := 'Attend instructor-Led';
                end;
            9:
                begin
                    "Texte de niveau" := 'Advanced';
                    "Texte de suggestion" := 'Attend instructor-Led and self study';
                end;
            10:
                begin
                    "Texte de niveau" := 'Hyper Advanced';
                    "Texte de suggestion" := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}