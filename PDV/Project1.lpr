program Project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazcontrols, Unit1, PdvManual, PdvConst, PdvClass, Pdv, PdvPafEcf,
  MnOpcNfce, MnOpcPafECF, PdvNFCe, PdvBD, CadCliNfce, CadCliPafEcf, CadTipPes,
  DmPDV, MnFisPafEcf;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmMnOpcNfce, FrmMnOpcNfce);
  Application.CreateForm(TFrmMnOpcPafECF, FrmMnOpcPafECF);
  Application.CreateForm(TPDVDm, PDVDm);
  Application.CreateForm(TFrmMnFisPafEcf, FrmMnFisPafEcf);
  Application.Run;
end.

