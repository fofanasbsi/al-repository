codeunit 50108 MyCodeunitTest
{
    trigger OnRun()
    begin
        Result := Ref.MyProcedure(1, 'Fofana');
        Message('%1', Result);
    end;

    var
        Ref: Codeunit MyCodeunit;

        Result: Boolean;
}
