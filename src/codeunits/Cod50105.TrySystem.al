codeunit 50105 TrySystem
{
    trigger OnRun()
    begin
        textError := 'Erreur dans votre code';
        textSucces := 'Tout se passe bien dans votre code!';


        if MyTryMehod(textError) <> true then begin
            Message(textError);
        end
        else begin
            Message(textSucces);
        end;
    end;

    var
        textError: Text;
        textSucces: Text;

    local procedure MyTryMehod(Error: Text): Boolean
    begin
        Error('%1', Error);
    end;
}
