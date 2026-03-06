@echo off

set "wdir=%~dp0"
cd /d "%wdir%\source"

if not exist "%wdir%\bin" mkdir "%wdir%\bin"

set "FFLAGS=-O2 -ffpe-summary=none"
gfortran %FFLAGS% HYDRUS.FOR INPUT.FOR HYSTER.FOR MATERIAL.FOR OUTPUT.FOR SINK.FOR SOLUTE.FOR TEMPER.FOR TIME.FOR WATFLOW.FOR -o "%wdir%\bin\hydrus.exe"
cd /d "%wdir%"
