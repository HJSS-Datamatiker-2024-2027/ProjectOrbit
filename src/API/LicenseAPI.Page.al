namespace ProjectOrbit.ProjectOrbit;

page 50101 "License API"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'gruppe6';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    UsageCategory = Administration; // temp
    Caption = 'licenseAPI';
    DelayedInsert = true;
    EntityName = 'license';
    EntitySetName = 'licenses';
    PageType = API;
    SourceTable = License;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.Id)
                {
                    Caption = 'Id';
                }
                field(tenantId; Rec."Tenant Id")
                {
                    Caption = 'Tenant Id';
                }
                field(customerName; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                }
                field(extensionId; Rec."Extension Id") // lav tabel for sig selv
                {
                    Caption = 'Extension Id';
                }
                field(dateCreated; Rec."Date Created")
                {
                    Caption = 'Date Created';
                }
                field(expirationDate; Rec."Expiration Date")
                {
                    Caption = 'Expiration Date';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
            }
        }
    }
}
