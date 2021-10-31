page 50103 ReservationJournal
{
    PageType = WorkSheet;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ReservationJnlLine;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(Reservation; Rec.Reservation)
                {
                    ApplicationArea = All;

                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;

                }
                field(Member; Rec.Member)
                {
                    ApplicationArea = All;

                }
                field(DateofPlay; Rec.DateofPlay)
                {
                    ApplicationArea = All;

                }
                field(PlayersInGroup; Rec.PlayersInGroup)
                {
                    ApplicationArea = All;

                }
                field(TeeTime; Rec.TeeTime)
                {
                    ApplicationArea = All;

                }
                field(TotalFees; Rec.TotalFees)
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