codeunit 50101 MyNewCodeUnits
{
    trigger OnRun()
    begin
        num1 := 12;
        num2 := 13;
        //add(12, 13);
        comparaison(22, 22);
    end;
    /// <summary>
    /// 
    /// </summary>
    /// <param name="num1"></param>
    /// <param name="num2"></param>
    procedure add(num1: Integer; num2: Integer)
    var
        addition: Integer;
    begin
        addition := num1 + num2;
        Message('La somme de %1, et de %2 est de %3', num1, num2, addition);

    end;
    /// <summary>
    /// 
    /// </summary>
    /// <param name="num1"></param>
    /// <param name="num2"></param>
    procedure comparaison(num1: Integer; num2: Integer)
    begin
        if (num1 > num2) then
            Message('Le nombre %1 est plus grand que le nombre %2', num1, num2)
        else
            if (num2 > num1) then
                Message('Le nombre %1 est plus petit que le nombre %2', num1, num2)
            else begin
                Message('Le nombre %1 est égal que le nombre %2', num1, num2);
            end;
    end;

    var

        num1: Integer;
        num2: Integer;
}