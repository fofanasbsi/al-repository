codeunit 50106 DoPostj
{
    var
        Number: Integer;

    trigger OnRun()
    begin
        if Number mod 2 <> 0 then
            Error(ErrorInfo.Create('Number should be equal', true));

        if Number <= 0 then
            Error(ErrorInfo.Create('Number should be larger than 0', true));

        if Number mod 3 = 0 then
            Error(ErrorInfo.Create('Number should not be divisible by 10', true));

        // Everything was valid, do the actual posting.
    end;
}
