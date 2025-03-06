table 50111 "Customer Management"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer ID';

        }
        field(2; "Name"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
        }
        field(3; "Address"; Code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Address';

        }
        field(4; "Phone Number"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone Number';
        }
        field(50; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email';
        }
    }

    keys
    {
        key(Key1; "Customer ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        // Message('Data Inserted');

    end;

    trigger OnModify()
    begin
        // Message('Data Modified');

    end;

    trigger OnDelete()
    begin
        // Message('Data Deleted');

    end;

    trigger OnRename()
    begin
        // Message('Data Renamed');

    end;

}