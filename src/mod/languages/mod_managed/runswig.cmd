\dev\swig\swig.exe -I..\..\..\include -v -O -c++ -csharp -namespace FreeSWITCH.Native -dllimport mod_managed freeswitch.i 
del swig.csx
@ECHO OFF
for %%X in (*.cs) do type %%X >> swig.csx
@ECHO ON
move swig.csx managed\swig.cs
del *.cs
