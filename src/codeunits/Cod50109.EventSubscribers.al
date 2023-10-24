codeunit 50109 "Event Subscribers"
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    [EventSubscriber(ObjectType::Table, Database::Address, 'OnBeforeModifyEvent', '', true, true)]
    local procedure OnBeforeModifyAddress(var Rec: Record Address; var xRec: Record Address)
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Address, 'OnBeforeValidateEvent', 'County', true, true)]
    procedure OnBeforeValidateCounty(var Rec: Record Address)
    begin
        /*if (StrLen(Rec.Address) = 0) then begin
            Message('Le champs "Adress" ne doit pas être vide');
        end;

        if (StrLen(Rec.County) = 0) then begin
            Message('Le champs "County" ne doit pas être vide');
        end;
        if (StrLen(Rec.Locality) = 0) then begin
            Message('Le champs "Locality" ne doit pas être vide');
        end;

        if (StrLen(Rec."Town/City") = 0) then begin
            Message('Le champs "Town/City" ne doit pas être vide');
        end;
        */
        if (Rec.County.Contains('.')) then begin
            Message('Le nom de pays de doit pas contenir le caractère point(.)');
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostLines', '', true, true)]
    local procedure OnBeforePostLines()
    begin
        //my logic will be here
    end;
    /*
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostLines', '', true, true)]
    local procedure OnBeforePostLines()
    begin
        //my logic will be here
    end;
    */


}