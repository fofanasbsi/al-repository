codeunit 50113 GetCustomerById
{
    trigger OnRun()
    begin

    end;

    procedure FindAllFromCustomer()

    begin
        customer.Find('-');
        // SELECT * FROM Customer
        Message('%1', customer);
    end;

    procedure FindAllFromCustomerOrderByNoDesc()
    begin
        customer.Find('+');
        // SELECT * FROM Customer Order By No. Desc
        Message('%1', customer);
    end;

    procedure FindFirstFromCustomer()
    begin
        customer.FindFirst();
        // SELECT TOP 1 * FROM Customer
        Message('%1', customer.Name);

    end;

    procedure FindLastCustomer()

    begin
        customer.FindLast();
        // SELECT TOP 1 * FROM Customer Order By No. Desc
        Message('%1', customer.Name);

    end;

    procedure FindAllCustomer()

    begin
        customer.FindSet();
        // SELECT * FROM Customer
        repeat
            // process record
            Message(customer.Name);
        until customer.Next() = 0;
    end;

    procedure GetCustomerByIdAndShow(): Text
    var
        customer: Record Customer;
    begin
        newProcedure(customer);

        if customer.Get(customer.County) then begin
            Message('%1', customer);
            exit;
        end
        else
            Error('Not found');
    end;

    local procedure newProcedure(var customer: Record Customer)
    begin
        customer.Get('French');
    end;
    /// <summary>
    /// Pour trier les enregistrements, utilisez la SetCurrentKeyfonction, où vous pouvez spécifier le ou les champs que vous souhaitez trier.
    /// </summary>
    procedure SetCurrentKey()
    begin
        customer.SetCurrentKey(City);

        customer.FindFirst();
        Message('%1', customer);
    end;
    /// <summary>
    /// Si le paramètre RunTriggerState est false , la Insertcommande n'exécute pas le OnInsertdéclencheur au niveau de la table. Vous devez définir la valeur sur true si vous souhaitez que le OnInsertdéclencheur soit exécut
    /// </summary>
    procedure AddNewCustomerData()
    var
        RunTriggerState: Boolean;

    begin
        customer.Init();
        customer."No." := '60000';
        customer.Name := 'Mohamed FOFANA';
        RunTriggerState := true;
        customer.Insert(RunTriggerState);
    end;


    local procedure CurrentBehavior()
    var
        cust: Record Customer;
        otherCust: Record Customer;
        curr: Record Currency;
    begin
        cust.FindFirst(); // READUNCOMMITTED

        // Heighten isolation level for Customer table.
        cust.LockTable();
        cust.FindLast(); // UPDLOCK

        // Also impacts other instances of same table.
        otherCust.FindSet(); // UPDLOCK

        // But does not impact other tables.
    end;

    procedure ModifyCustomerData()

    begin
        customer.Get('10000');
        customer.Name := 'Mohamed FOFANA';
        customer.Modify();
    end;

    var
        customer: Record Customer;

}
