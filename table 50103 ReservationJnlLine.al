table 50103 ReservationJnlLine
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;



        }



        field(2; Reservation; enum ReservationType)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()









            begin


                Validate(TotalFees);






            end;





        }


        field(3; Course; Text[30])
        {
            TableRelation = GolfCourse.Name;

            DataClassification = ToBeClassified;

            trigger OnValidate()
            VAR










            begin


                Validate(TotalFees);
            end;













        }


        field(4; Member; Text[30])
        {
            TableRelation = ClubMember.Name;
            DataClassification = ToBeClassified;


        }
        field(5; DateofPlay; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(6; PlayersInGroup; Integer)
        {


            trigger OnValidate()









            begin


                Validate(TotalFees);






            end;




        }
        field(7; TeeTime; Time)
        {
            DataClassification = ToBeClassified;


        }


        field(8; TotalFees; Integer)
        {

            DataClassification = ToBeClassified;







            trigger OnValidate()
            VAR
                RecordGolf: Record GolfCourse;











            begin

                if xRec.Course <> Rec.Course
          then begin
                    RecordGolf.Reset();
                    IF RecordGolf.Get(Course) then begin
                        Course := RecordGolf.Name;
                    end;

                end;











                if Reservation = 0 then
                    TotalFees := RecordGolf.GreenFeesAmount * PlayersInGroup
                else
                    if Reservation = 2 then
                        TotalFees := (RecordGolf.GreenFeesAmount * PlayersInGroup) * 1.1
                    else
                        TotalFees := 0;





            end;









        }


    }



    keys
    {
        key(PrimayKey; ID, TotalFees)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}