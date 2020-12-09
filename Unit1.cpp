//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include <stdio.h>
#include <io.h>

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

struct Student
{
    char name[30];
    int group;
    int grades[4];
    double avgGrade;

}
St;

void Out(Student st, TMemo*);

AnsiString filePath;
FILE *fileCr;
int size(sizeof(Student));
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
    Memo1->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::createFileClick(TObject *Sender)
{
    OpenDialog1->Title="Create new file";

    if (OpenDialog1->Execute())
    {

        filePath = OpenDialog1->FileName;
        filePath += ".txt";

        if ((fileCr = fopen(filePath.c_str(),"w+t")) == NULL)
        {
            ShowMessage("Error! file hasn't created");
            return;
            }
        }

        Memo1->Lines->Add("File created: " + AnsiString(filePath));

        fclose(fileCr);

}
//---------------------------------------------------------------------------
void __fastcall TForm1::openFileClick(TObject *Sender)
{
    OpenDialog1->Title="Open file";

    if (OpenDialog1->Execute())
    {

        filePath = OpenDialog1->FileName;
        filePath += ".txt";

        if ((fileCr = fopen(filePath.c_str(),"w+t")) == NULL)
        {
            ShowMessage("Error! file hasn't opened");
            return;
        }
        
    }


    Memo1->Lines->Add("-------file data-------");

    while(1)
    {
   	if(!fread(&St, size, 1, fileCr)) break;

        Out(St, Memo1);
   }

   fclose(fileCr);

}


void Out(Student st, TMemo *Memo1)
{
     Memo1->Lines->Add(AnsiString(st.name));
}

//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
    fileCr = fopen(filePath.c_str(),"ab");

    strcpy(St.name,  enterSNP->Text.c_str());

    St.grades[0] = StrToFloat(physics->Text);
    St.grades[1] = StrToFloat(math->Text);
    St.grades[2] = StrToFloat(cs->Text);
    St.grades[3] = StrToFloat(chemstry->Text);

    Out(St, Memo1);

    fwrite(&St, size, 1, fileCr);

    chemstry->Text = "";
    cs->Text = "";
    math->Text = "";
    physics->Text = "";
    enterSNP->Text = "";

    fclose(fileCr);

}
//---------------------------------------------------------------------------
