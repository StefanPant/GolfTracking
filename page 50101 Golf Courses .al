page 50101 GolfCourses
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = GolfCourse;

    layout
    {
        area(Content)
        {
            group(GolfCourses)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;


                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;



                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }
                field(GreenFeesAmount; Rec.GreenFeesAmount)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}