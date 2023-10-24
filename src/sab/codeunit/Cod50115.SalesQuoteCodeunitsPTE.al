codeunit 50115 "Sales Quote Codeunits PTE"
{
    [EventSubscriber(ObjectType::Page, Page::"Contact Card", 'OnModifyRecordEvent', '', false, false)]
    local procedure OnAfterGetRecordEvent(var Rec: Record Contact)
    begin
        Rec."E-Mail" := Rec."E-Mail";

    end;


    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Header", 'OnAfterModifyEvent', '', false, false)]
    local procedure OnAfterModifyEvent(var Rec: Record "Sales Invoice Header"; var xRec: Record "Sales Invoice Header"; RunTrigger: Boolean)
    begin

    end;

}
