codeunit 50130 "EditPostedDocumentHandler"
{
    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure OnAfterRecordChanged(var SalesInvoiceHeader: Record "Sales Invoice Header"; xSalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean)
    begin
        IsChanged :=
                  (SalesInvoiceHeader."Bill-to Address" <> xSalesInvoiceHeader."Bill-to Address")
                  or
                  (SalesInvoiceHeader."Bill-to Address 2" <> xSalesInvoiceHeader."Bill-to Address 2")
                  or
                  (SalesInvoiceHeader."Bill-to City" <> xSalesInvoiceHeader."Bill-to City")
                  or
                  (SalesInvoiceHeader."Bill-to Post Code" <> xSalesInvoiceHeader."Bill-to Post Code")
                   or
                  (SalesInvoiceHeader."Bill-to County" <> xSalesInvoiceHeader."Bill-to County")
                  or
                  (SalesInvoiceHeader."Bill-to Country/Region Code" <> xSalesInvoiceHeader."Bill-to Country/Region Code")
                  or
                  (SalesInvoiceHeader."Bill-to Customer No." <> xSalesInvoiceHeader."Bill-to Customer No.")

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", 'OnRunOnBeforeAssignValues', '', false, false)]
    local procedure OnRunOnBeforeAssignValues(var SalesInvoiceHeader: Record "Sales Invoice Header"; SalesInvoiceHeaderRec: Record "Sales Invoice Header")
    begin
        SalesInvoiceHeader."Bill-to Address" := SalesInvoiceHeaderRec."Bill-to Address";
        SalesInvoiceHeader."Bill-to Address 2" := SalesInvoiceHeaderRec."Bill-to Address 2";
        SalesInvoiceHeader."Bill-to City" := SalesInvoiceHeaderRec."Bill-to City";
        SalesInvoiceHeader."Bill-to Post Code" := SalesInvoiceHeaderRec."Bill-to Post Code";
        SalesInvoiceHeader."Bill-to County" := SalesInvoiceHeaderRec."Bill-to County";
        SalesInvoiceHeader."Bill-to Country/Region Code" := SalesInvoiceHeaderRec."Bill-to Country/Region Code";
        SalesInvoiceHeader."Bill-to Customer No." := SalesInvoiceHeaderRec."Bill-to Customer No.";
    end;

}