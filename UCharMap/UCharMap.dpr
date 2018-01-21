{******************************************************************************}
{* (c) Max Rusov                                                              *}
{* Unicode CharMap                                                            *}
{* License: WTFPL                                                             *}
{* Home: https://github.com/MaxRusov/far-plugins                              *}
{******************************************************************************}

library UCharMap;

{$I Defines.inc}

{$APPTYPE CONSOLE}
{$ifdef Debug}
 {$ImageBase $40900000}
{$endif Debug}

uses
  MixErrors,
 {$ifdef bTrace}
  MixCheck,
 {$endif bTrace}
  MixFormat,
  FarPlug,
  UCharMapMain;

exports
 {$ifdef Far3}
  GetGlobalInfoW,
 {$else}
  GetMinFarVersionW,
 {$endif Far3}
  SetStartupInfoW,
  GetPluginInfoW,
 {$ifdef Far3}
  OpenW,
 {$else}
  OpenPluginW,
 {$endif Far3}
  ConfigureW;

{$R UCharMapW.res}

begin
  Plug := TCharMapPlug.Create;
end.
