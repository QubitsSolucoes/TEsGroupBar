{******************************************************************************}
{                            ErrorSoft(c) 2015-2016                            }
{                                                                              }
{             TEsGroupBar - the best skinnable groupbar for vcl                }
{                                  Version 1.0                                 }
{                                                                              }
{                        Free for noncommercial use                            }
{   You can purchase this, write on errorsoft@mail.ru or Enter256@yandex.ru    }
{             This on GitHub: https://github.com/errorcalc/TEsGroupBar         }
{                                                                              }
{           errorsoft@mail.ru | vk.com/errorsoft | github.com/errorcalc        }
{              errorsoft@protonmail.ch | habrahabr.ru/user/error1024           }
{                                                                              }
{     Designed for ��� "������� �������������� �������", manager@bis3.ru       }
{                                                                              }
{                    ��������� ��� ���������� ���                              }
{            ��� "������� �������������� �������", manager@bis3.ru             }
{   ������ �� errorsoft@mail.ru ��� ���������� ���������� (VCL/FMX) �� �����   }
{******************************************************************************}
unit ES.GroupBarRegister;

interface

{$I 'Es.GroupBar.inc'}

uses
  Es.GroupBar, Classes, DesignIntf, Es.GroupBarEditor, Es.CfxClasses, PngImage;

procedure Register;

implementation

{$R 'Icons/EsGroupBarIcons.res'}

procedure Register;
begin
  RegisterComponents('ErrorSoft Panels', [TEsGroupBar]);
  RegisterComponentEditor(TEsGroupBar, TEsGroupBarEditor);
  RegisterComponentEditor(TEsGroup, TEsGroupEditor);
  {$ifdef FixLoadPng}
  RegisterPropertyEditor(TypeInfo(TPngImage), TStyleNinePatch, '', TEsPngPropertyFix);
  {$endif}
  UnlistPublishedProperty(TEsGroupBar, 'GroupOptions');
  UnlistPublishedProperty(TEsGroupStyle, 'GroupStyle');
  UnlistPublishedProperty(TEsGroupButtonStyle, 'IsDefaultStyle');
  UnlistPublishedProperty(TEsGroupSelectStyle, 'IsDefaultStyle');
  UnlistPublishedProperty(TEsGroupItemSeparatorStyle, 'IsDefaultStyle');
  UnlistPublishedProperty(TEsGroupBackgroundStyle, 'IsDefaultStyle');
end;

end.
