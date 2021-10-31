table 50101 GolfCourse
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            Description = 'unique Id of Golf Course';

        }
        field(2; Name; Text[30])
        {
            Description = 'Name of the Course';






        }

        field(3; Address; Text[30])
        {
            Description = 'Course Address';
        }
        field(4; GreenFeesAmount; Integer)
        {
            Description = 'Green Fees Amount';


        }

    }

    keys
    {
        key(PrimaryKey; ID, Name, GreenFeesAmount)
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