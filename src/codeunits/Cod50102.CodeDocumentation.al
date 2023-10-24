codeunit 50102 CodeDocumentation
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="first"></param>
    /// <param name="Second"></param>
    /// <returns>Sum(first,Second)Integer</returns>
    local procedure CalculateSum(first: Integer; Second: Integer): Integer
    begin
        exit(first + Second);
    end;
    /*
        Définissons de région dans une unité de code!
    */
    #region foo
    local procedure foo()
    begin

    end;
    #endregion foo
    /*
        exemple de regio reduite
    */
    /* #region foo...

     #region bar...
     */
    trigger OnRun()
    begin
        CalculateSum(5, 17);
    end;
}
