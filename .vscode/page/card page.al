page 50131 "Customer Page Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Customer Management";
    Caption = 'Customer Card';

    layout
    {
        area(Content)
        {
            group(Customers)
            {
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                    Importance = Standard;
                    // Editable = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Importance = Standard;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    Importance = Standard;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Importance = Standard;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SaveAndClose)
            {
                Caption = 'Save';
                Image = Approve;

                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }

    var
        myInt: Integer;
}