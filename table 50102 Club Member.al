table 50102 ClubMember
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Type; Enum ClubMemberType)
        {

        }
        field(3; Name; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Address; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Status; enum MemberStatus)
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(PrimaryKey; ID, Name)
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