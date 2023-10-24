codeunit 50100 Manipulation
{
    trigger OnRun()
    begin
        InitialiserVariables();
    end;

    var
        entier: Integer;
        grandEntier: BigInteger;
        caractere: Char;
        chaineDeCaractere: Text[50];
        codeDeCaractere: Code[50];
        bool: Boolean;
        date: Date;
        dateTemps: DateTime;
        temps: Time;
        dialogue: Dialog;
        reel: Decimal;

    procedure InitialiserVariables()

    begin
        // Initialisation des variables avec des valeurs adéquates
        entier := 42;
        grandEntier := -9223372036854775807L;
        caractere := 'A';
        chaineDeCaractere := 'Exemple de texte';
        codeDeCaractere := 'CODE1234';
        bool := TRUE;
        date := TODAY;
        dateTemps := CURRENTDATETIME;
        temps := TIME;

        // Pour le dialogue, il faudrait utiliser les fonctions de création et de définition d'un dialogue spécifique.

        reel := 3.14159;

        // Vous pouvez également afficher les valeurs attribuées aux variables
        MESSAGE('Entier : ' + FORMAT(entier));
        MESSAGE('Grand Entier : ' + FORMAT(grandEntier)); // Conversion du BigInteger en chaîne
        MESSAGE('Caractère : ' + caractere);
        MESSAGE('Chaine de Caractère : ' + chaineDeCaractere);
        MESSAGE('Code de Caractère : ' + codeDeCaractere);
        MESSAGE('Booléen : ' + FORMAT(bool));
        MESSAGE('Date : ' + FORMAT(date));
        MESSAGE('Date et Temps : ' + FORMAT(dateTemps));
        MESSAGE('Temps : ' + FORMAT(temps));
        MESSAGE('Réel : ' + FORMAT(reel));
    end;

    procedure Post(DocumentNo: Code[20]; LineNo: Integer)
    var
        SalesLine: Record "Sales Line";
        SalesHeader: Record "Sales Header";
    begin
        if (SalesLine.Get(SalesLine."Document Type"::Order, DocumentNo, LineNo)) then begin
            SalesHeader.Get(SalesHeader."Document Type"::Order, DocumentNo);

            OnBeforePostSalesLine(SalesLine, SalesHeader);
            DoPost(SalesLine);
            OnAfterPostSalesLine(SalesLine);
        end;
    end;

    local procedure DoPost(var SalesLine: Record "Sales Line")
    begin
        // The posting code happens here.
    end;

    [IntegrationEvent(true, false)]
    local procedure OnBeforePostSalesLine(var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header")
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnAfterPostSalesLine(var SalesLine: Record "Sales Line")
    begin
    end;


}
