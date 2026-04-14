table 50100 License
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Id';
            AutoIncrement = true; // sql "serial" / "identity"
        }

        field(2; "Tenant Id"; Guid)
        {
            // Table Relation her!
            DataClassification = ToBeClassified;
            Caption = 'Tenant Id';
        }

        field(3; "Customer Name"; Text[100])
        {
            // Skal Customer Name på?
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }

        field(4; "Extension Id"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Extension Id';
        }

        field(5; "Date Created"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Created';
        }

        field(6; "Expiration Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Expiration Date';
        }

        field(7; Status; Enum "License Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; "Id")
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
        rec."Tenant Id" := CreateGuid();
    end;

}