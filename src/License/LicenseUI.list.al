pageextension 50101 CustomerListExtension extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(ViewLicenses)
            {
                Caption = 'Licenses';
                Image = List;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    LicenseRec: Record License;
                begin
                    LicenseRec.SetRange("Customer Name", Rec.Name);
                    Page.Run(Page::"License List", LicenseRec);
                end;
            }
        }
    }
}