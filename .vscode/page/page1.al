page 50100 "Customer Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Customer Management";
    Caption = 'Customer Lists';

    layout
    {
        area(Content)
        {
            group(Customers)
            {
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
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