/*
pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("F&unctions")
        {
            action(UpdateCreditLimit)
            {
                ApplicationArea = All;
                Caption = 'Update Credit Limit';
                Image = CalculateCost;
                ToolTip = 'Update Credit Limit';
                trigger OnAction()
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }

    }
    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
    begin
        CreditLimitCalculated := Rec.CalculateCreditLimit();
        if CreditLimitCalculated = Rec."Credit Limit (LCY)" then begin
            Message(CreditLimitUpToDateTxt);
            exit;
        end;

        if GuiAllowed() then
            if not Confirm(AreYouSureQst, false, CreditLimitCalculated) then
                exit;

        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        if CreditLimitActual <> CreditLimitCalculated then
            Message(CreditLimitROundedTxt, CreditLimitActual);
    end;

    var
        AreYouSureQst: Label 'Êtes-vous sûr de vouloir définir %1 sur %2 ?', Comment = '%1 est la limite de credit et %2 est la nouvelle limite de credit acceptée.';
        CreditLimitRoundedTxt: Label 'La limite de crédit a été arrondie à %1 pour se conformer aux politiques de lentreprise.', Comment = '%1  est la nouvelle  valeur limite de credit.';
        CreditLimitUpToDateTxt: Label 'La limite de credit est à jour.';
}*/