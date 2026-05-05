enum 50100 "License Status"
{
    Extensible = true;

    value(0; Active)
    {
        Caption = 'Active';
    }

    value(1; Suspended)
    {
        Caption = 'Suspended';
    }

    value(2; Revoked)
    {
        Caption = 'Revoked';
    }

    value(3; Expired)
    {
        Caption = 'Expired';
    }

    value(4; Pending)
    {
        Caption = 'Pending';
    }
}