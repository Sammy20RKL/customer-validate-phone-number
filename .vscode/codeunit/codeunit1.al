codeunit 50112 "Customer Validate"
{

    SingleInstance = false;
    Subtype = Normal;

    procedure validatePhoneNumber(Customer: Record "Customer Management")

    var
        PhoneNumber: Text[30];

    begin
        PhoneNumber := Customer."Phone Number";

        if StrLen(PhoneNumber) < 10 then
            Error('Phone number must be at least 10 characters long');

        // Additional validation logic can be added here

    end;
}