reportextension 50100 MyExtContactList extends "Contact - List"
{

    rendering
    {
        layout(LayoutPDF)
        {
            Type = RDLC;
            LayoutFile = 'MyPDFContactList.rdlc';

        }
    }
}