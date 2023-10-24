codeunit 50103 Calcul
{
    trigger OnRun()
    begin
        num1 := 12;
        num2 := 13;
        //add(12, 13);
        solde(17, 22);
    end;

    procedure solde(num1: Decimal; num2: Decimal)
    begin
        if (num1 > num2) then begin
            result := num1 - num2;
            Message('%1', result);
        end
        else
            if (num2 > num1) then begin
                result := num2 - num1;
                Message('%1', result);
            end
            else begin
                result := 0;
                Message('%1', result);
            end
    end;

    var

        num1: Decimal;
        num2: Decimal;
        result: Decimal;
}

