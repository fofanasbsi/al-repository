codeunit 50104 SumOfNumbers
{



    trigger OnRun()
    begin

        Message('%1', pow(2, 3));
    end;



    procedure CalculSolde()
    var
    begin
        myTable.FindSet();
        repeat
            myTable."Minimum Reward Points" := 100;

        until myTable.Next() = 0;
        Message('%1', myTable."Minimum Reward Points");
    end;


    procedure SumSales(ventes: array[5] of Integer): Integer
    begin
        for i := 1 downto 5 do begin
            result := result + ventes[i];
            numberSales := numberSales + 1;
        end;

    end;

    local procedure pow(n1: Integer; n2: Integer): Integer
    var
        myResult: Integer;
    begin
        myResult := Power(n1, n2);
        exit(myResult);
    end;

    var

        num1: Decimal;
        num2: Decimal;
        i: Decimal;
        numberSales: Integer;
        result: Decimal;
        ventes: array[5] of Integer;
        myTable: Record "Reward Level";

}
