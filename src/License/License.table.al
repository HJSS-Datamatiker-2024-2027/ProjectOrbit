table 50100 License
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Tenant Id"; Guid)
        {
            // Table Relation her!
            DataClassification = ToBeClassified;
            Caption = 'Tenant Id';
        }

        field(2; "Customer Name"; Text[100])
        {
            // Skal Customer Name på?
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }

        field(3; "Extension Id"; Guid)
        {
            DataClassification = ToBeClassified;
            Caption = 'Extension Id';
        }

        field(4; "Date Created"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Created';
        }

        field(5; "Expiration Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Expiration Date';
        }

        field(6; Status; Enum "License Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; "Tenant Id", "Extension Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin
        //rec."Tenant Id" := CreateGuid();
    end;

}