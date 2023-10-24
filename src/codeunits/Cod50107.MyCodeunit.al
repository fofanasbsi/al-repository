codeunit 50107 MyCodeunit
{
    Access = Public;
    Subtype = Normal;
    trigger OnRun()
    begin

    end;

    procedure MyProcedure(id: Integer; designation: Text[50]): Boolean
    begin
        if (designation.Contains('a')) then begin
            exit(true);
        end;
        exit(false);
    end;

}