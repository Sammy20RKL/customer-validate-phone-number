/*report 50112 "Customer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    


    dataset
    {
        dataitem(Customer; "Customer Management")
        {
            RequestFilterFields="Phone Number";
            column(Customer_ID; "Customer ID")
            {

            }
            column(Name; Name)
            {

            }
            column(Address; Address) { }
            column(Phone_Number; "Phone Number") {
             }
            column(Email; Email) { }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                     field("Show Phone Numbers"; "Phone Number")
                    {
                        Caption = 'Show Phone Numbers';
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    }

    var
        myInt: Integer;
}
*/