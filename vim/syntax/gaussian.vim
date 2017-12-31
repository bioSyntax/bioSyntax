" Gaussian VIM highlight file
" Language:         Gaussian
" Discipline:       Chemistry
" Maintainer:       Xiaoge Su (magichp@gmail.com)
" From Repo:        https://github.com/xis19/qcvim
" Last Revision:    Sat Jul 22 00:05:47 PDT 2017
" Version:          0.1

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

let b:current_syntax = "gaussian"

" Gaussian input file is NOT case sensitive.
syntax case ignore

" Comments always starts with !, like FORTRAN
syntax match gaussianComment /^\s*!.\+$/
highlight link gaussianComment Comment

" Operators
syntax match gaussianOperator "\v\="
syntax match gaussianOperator "\v\("
syntax match gaussianOperator "\v\)"
syntax match gaussianOperator "\v#"
syntax match gaussianOperator "\v\%"
highlight link gaussianOperator Operator

" Link0 commands
syntax match gaussianLink0Command /^\s*%Mem=/
syntax match gaussianLink0Command /^\s*%Chk=/
syntax match gaussianLink0Command /^\s*%OldChk=/
syntax match gaussianLink0Command /^\s*%SChk=/
syntax match gaussianLink0Command /^\s*%RWF=/
syntax match gaussianLink0Command /^\s*%RWF=/
syntax match gaussianLink0Command /^\s*%OldMatrix=/
syntax match gaussianLink0Command /^\s*%OldRawMatrix=/
syntax match gaussianLink0Command /^\s*%Int=/
syntax match gaussianLink0Command /^\s*%D2E=/
syntax match gaussianLink0Command /^\s*%KJob L/
syntax match gaussianLink0Command /^\s*%Save/
syntax match gaussianLink0Command /^\s*%ErrorSave/
syntax match gaussianLink0Command /^\s*%Subst L/
syntax match gaussianLink0Command /^\s*%CPU=/
syntax match gaussianLink0Command /^\s*%NProcShared=/
syntax match gaussianLink0Command /^\s*%GPUCPU=/
syntax match gaussianLink0Command /^\s*%LindaWorkers=/
syntax match gaussianLink0Command /^\s*%UseSSH/
syntax match gaussianLink0Command /^\s*%DebugLinda/
highlight default link gaussianLink0Command PreProc

" Link1 command
syntax match gaussianLink1 /\v^--LINK1--$/
highlight default link gaussianLink1 PreProc

" Route command


syntax match gaussianRouteCommand "\<ADMP\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg1
    \ "MaxPoints="
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "Lowdin"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "NKE="
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "DKE="
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "ElectronMass="
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "FullSCF"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "ReadVelocity"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "ReadMWVelocity"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "StepSize="
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "BandGap"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion1
    \ contained
syntax match gaussianRouteCommandArg1
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion1
    \ contained


syntax region gaussianRouteCommandRegion1
    \ matchgroup=gaussianRouteCommand
    \ start="ADMP=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg1
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg1 Identifier


syntax match gaussianRouteCommand "\<AM1\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg2
    \ "Generate"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Input"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "MOPACExternal"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Both"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "TCheckpoint"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "RWF"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Print"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "PrintAll"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Zero"
    \ containedin=gaussianRouteCommandRegion2
    \ contained
syntax match gaussianRouteCommandArg2
    \ "Old"
    \ containedin=gaussianRouteCommandRegion2
    \ contained


syntax region gaussianRouteCommandRegion2
    \ matchgroup=gaussianRouteCommand
    \ start="AM1=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg2
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg2 Identifier


syntax match gaussianRouteCommand "\<APF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<APFD\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Amber\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg3
    \ "QEq"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "UnTyped"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "UnCharged"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "HardFirst"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "SoftFirst"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "SoftOnly"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "FirstEquiv"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "LastEquiv"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "ChkParameters"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "NewParameters"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "Modify"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "Print"
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "VRange="
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "CRange="
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "CutRad="
    \ containedin=gaussianRouteCommandRegion3
    \ contained
syntax match gaussianRouteCommandArg3
    \ "Switch="
    \ containedin=gaussianRouteCommandRegion3
    \ contained


syntax region gaussianRouteCommandRegion3
    \ matchgroup=gaussianRouteCommand
    \ start="Amber=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg3
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg3 Identifier


syntax match gaussianRouteCommand "\<B1B95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B1LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B2PLYPD\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B2PLYPD3\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B3LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B3P86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B3PW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B971\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B972\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B97D\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B97D3\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<B98\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg4
    \ "T"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "TQ"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "FC"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "Read"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "OldFCBD"
    \ containedin=gaussianRouteCommandRegion4
    \ contained
syntax match gaussianRouteCommandArg4
    \ "NewFCBD"
    \ containedin=gaussianRouteCommandRegion4
    \ contained


syntax region gaussianRouteCommandRegion4
    \ matchgroup=gaussianRouteCommand
    \ start="BD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg4
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg4 Identifier


syntax match gaussianRouteCommand "\<BHandH\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BHandHLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BMK\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BOMD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg5
    \ "MaxPoints="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "Phase=("
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "ReadVelocity"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "ReadMWVelocity"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "SimAnneal"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "ReadStop"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "RTemp="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "NSample="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "NTraj="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "Update="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "RandomVelocity"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "StepSize="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "Sample="
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion5
    \ contained
syntax match gaussianRouteCommandArg5
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion5
    \ contained


syntax region gaussianRouteCommandRegion5
    \ matchgroup=gaussianRouteCommand
    \ start="BOMD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg5
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg5 Identifier


syntax match gaussianRouteCommand "\<BP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BRxVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<BVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<CAM-B3LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<CAS\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg6
    \ "NRoot="
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "StateAverage"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "SpinOrbit"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "RAS=("
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "DavidsonDiag"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "LanczosDiag"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "FullDiag"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "StateGuess="
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "OrbRot"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "SlaterDet"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "SaveGEDensities"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "HWDet"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "RFO"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "QC"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "UNO"
    \ containedin=gaussianRouteCommandRegion6
    \ contained
syntax match gaussianRouteCommandArg6
    \ "NPairs="
    \ containedin=gaussianRouteCommandRegion6
    \ contained


syntax region gaussianRouteCommandRegion6
    \ matchgroup=gaussianRouteCommand
    \ start="CAS=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg6
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg6 Identifier


syntax match gaussianRouteCommand "\<CASSCF\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg7
    \ "NRoot="
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "StateAverage"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "SpinOrbit"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "RAS=("
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "DavidsonDiag"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "LanczosDiag"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "FullDiag"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "StateGuess="
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "OrbRot"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "SlaterDet"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "SaveGEDensities"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "HWDet"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "RFO"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "QC"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "UNO"
    \ containedin=gaussianRouteCommandRegion7
    \ contained
syntax match gaussianRouteCommandArg7
    \ "NPairs="
    \ containedin=gaussianRouteCommandRegion7
    \ contained


syntax region gaussianRouteCommandRegion7
    \ matchgroup=gaussianRouteCommand
    \ start="CASSCF=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg7
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg7 Identifier


syntax match gaussianRouteCommand "\<CBS-4M\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg8
    \ "SP"
    \ containedin=gaussianRouteCommandRegion8
    \ contained
syntax match gaussianRouteCommandArg8
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion8
    \ contained
syntax match gaussianRouteCommandArg8
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion8
    \ contained
syntax match gaussianRouteCommandArg8
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion8
    \ contained


syntax region gaussianRouteCommandRegion8
    \ matchgroup=gaussianRouteCommand
    \ start="CBS-4M=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg8
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg8 Identifier


syntax match gaussianRouteCommand "\<CBS-APNO\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg9
    \ "SP"
    \ containedin=gaussianRouteCommandRegion9
    \ contained
syntax match gaussianRouteCommandArg9
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion9
    \ contained
syntax match gaussianRouteCommandArg9
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion9
    \ contained
syntax match gaussianRouteCommandArg9
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion9
    \ contained


syntax region gaussianRouteCommandRegion9
    \ matchgroup=gaussianRouteCommand
    \ start="CBS-APNO=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg9
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg9 Identifier


syntax match gaussianRouteCommand "\<CBS-QB3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg10
    \ "SP"
    \ containedin=gaussianRouteCommandRegion10
    \ contained
syntax match gaussianRouteCommandArg10
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion10
    \ contained
syntax match gaussianRouteCommandArg10
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion10
    \ contained
syntax match gaussianRouteCommandArg10
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion10
    \ contained


syntax region gaussianRouteCommandRegion10
    \ matchgroup=gaussianRouteCommand
    \ start="CBS-QB3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg10
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg10 Identifier


syntax match gaussianRouteCommand "\<CBSExtrapolate\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg11
    \ "NMin="
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "MinPopLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "PopLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "BoysLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "NoLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "NRPopLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "NRBoysLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "NRMinPopLocal"
    \ containedin=gaussianRouteCommandRegion11
    \ contained
syntax match gaussianRouteCommandArg11
    \ "SaveOrbitals"
    \ containedin=gaussianRouteCommandRegion11
    \ contained


syntax region gaussianRouteCommandRegion11
    \ matchgroup=gaussianRouteCommand
    \ start="CBSExtrapolate=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg11
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg11 Identifier


syntax match gaussianRouteCommand "\<CC\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg12
    \ "FC"
    \ containedin=gaussianRouteCommandRegion12
    \ contained
syntax match gaussianRouteCommandArg12
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion12
    \ contained
syntax match gaussianRouteCommandArg12
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion12
    \ contained
syntax match gaussianRouteCommandArg12
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion12
    \ contained
syntax match gaussianRouteCommandArg12
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion12
    \ contained
syntax match gaussianRouteCommandArg12
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion12
    \ contained


syntax region gaussianRouteCommandRegion12
    \ matchgroup=gaussianRouteCommand
    \ start="CC=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg12
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg12 Identifier


syntax match gaussianRouteCommand "\<CCD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg13
    \ "FC"
    \ containedin=gaussianRouteCommandRegion13
    \ contained
syntax match gaussianRouteCommandArg13
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion13
    \ contained
syntax match gaussianRouteCommandArg13
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion13
    \ contained
syntax match gaussianRouteCommandArg13
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion13
    \ contained
syntax match gaussianRouteCommandArg13
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion13
    \ contained
syntax match gaussianRouteCommandArg13
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion13
    \ contained


syntax region gaussianRouteCommandRegion13
    \ matchgroup=gaussianRouteCommand
    \ start="CCD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg13
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg13 Identifier


syntax match gaussianRouteCommand "\<CCSD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg14
    \ "FC"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "T"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "E4T"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "T1Diag"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion14
    \ contained
syntax match gaussianRouteCommandArg14
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion14
    \ contained


syntax region gaussianRouteCommandRegion14
    \ matchgroup=gaussianRouteCommand
    \ start="CCSD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg14
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg14 Identifier


syntax match gaussianRouteCommand "\<CCSD-T\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg15
    \ "FC"
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "E4T"
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "T1Diag"
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion15
    \ contained
syntax match gaussianRouteCommandArg15
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion15
    \ contained


syntax region gaussianRouteCommandRegion15
    \ matchgroup=gaussianRouteCommand
    \ start="CCSD-T=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg15
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg15 Identifier


syntax match gaussianRouteCommand "\<CI\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg16
    \ "FC"
    \ containedin=gaussianRouteCommandRegion16
    \ contained
syntax match gaussianRouteCommandArg16
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion16
    \ contained
syntax match gaussianRouteCommandArg16
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion16
    \ contained
syntax match gaussianRouteCommandArg16
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion16
    \ contained
syntax match gaussianRouteCommandArg16
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion16
    \ contained


syntax region gaussianRouteCommandRegion16
    \ matchgroup=gaussianRouteCommand
    \ start="CI=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg16
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg16 Identifier


syntax match gaussianRouteCommand "\<CID\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg17
    \ "FC"
    \ containedin=gaussianRouteCommandRegion17
    \ contained
syntax match gaussianRouteCommandArg17
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion17
    \ contained
syntax match gaussianRouteCommandArg17
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion17
    \ contained
syntax match gaussianRouteCommandArg17
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion17
    \ contained
syntax match gaussianRouteCommandArg17
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion17
    \ contained


syntax region gaussianRouteCommandRegion17
    \ matchgroup=gaussianRouteCommand
    \ start="CID=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg17
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg17 Identifier


syntax match gaussianRouteCommand "\<CIS\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg18
    \ "Singlets"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Triplets"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "50-50"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Root="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "NStates="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Add="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "GOccSt="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "GOccEnd="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "GDEMin="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "DEMin="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "IFact="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "WhenReduce="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "AllTransitionDensities"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "FC"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "MO"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "AO"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Read"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "RWFRestart"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "EqSolv"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "NoIVOGuess"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "NonAdiabaticCoupling"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "ICDiag"
    \ containedin=gaussianRouteCommandRegion18
    \ contained
syntax match gaussianRouteCommandArg18
    \ "MaxDiag="
    \ containedin=gaussianRouteCommandRegion18
    \ contained


syntax region gaussianRouteCommandRegion18
    \ matchgroup=gaussianRouteCommand
    \ start="CIS=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg18
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg18 Identifier


syntax match gaussianRouteCommand "\<CISD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg19
    \ "FC"
    \ containedin=gaussianRouteCommandRegion19
    \ contained
syntax match gaussianRouteCommandArg19
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion19
    \ contained
syntax match gaussianRouteCommandArg19
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion19
    \ contained
syntax match gaussianRouteCommandArg19
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion19
    \ contained
syntax match gaussianRouteCommandArg19
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion19
    \ contained


syntax region gaussianRouteCommandRegion19
    \ matchgroup=gaussianRouteCommand
    \ start="CISD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg19
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg19 Identifier


syntax match gaussianRouteCommand "\<CNDO\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<CPHF\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg20
    \ "RdFreq"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "InputFreq"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Static"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Grid="
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "OneStep"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "TwoStep"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "TauOneStep"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "PSCFOneStep"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "PSCFTauOneStep"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "RecursiveDIIS"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "MaxInv="
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Simultaneous"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Separate"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "AO"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "MO"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "Canonical"
    \ containedin=gaussianRouteCommandRegion20
    \ contained
syntax match gaussianRouteCommandArg20
    \ "MOD"
    \ containedin=gaussianRouteCommandRegion20
    \ contained


syntax region gaussianRouteCommandRegion20
    \ matchgroup=gaussianRouteCommand
    \ start="CPHF=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg20
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg20 Identifier


syntax match gaussianRouteCommand "\<CacheSize\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Charge\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg21
    \ "Angstroms"
    \ containedin=gaussianRouteCommandRegion21
    \ contained
syntax match gaussianRouteCommandArg21
    \ "Bohrs"
    \ containedin=gaussianRouteCommandRegion21
    \ contained
syntax match gaussianRouteCommandArg21
    \ "Check"
    \ containedin=gaussianRouteCommandRegion21
    \ contained


syntax region gaussianRouteCommandRegion21
    \ matchgroup=gaussianRouteCommand
    \ start="Charge=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg21
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg21 Identifier


syntax match gaussianRouteCommand "\<CheckBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<CheckPointBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ChkBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Complex\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Constants\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg22
    \ "2010"
    \ containedin=gaussianRouteCommandRegion22
    \ contained
syntax match gaussianRouteCommandArg22
    \ "2006"
    \ containedin=gaussianRouteCommandRegion22
    \ contained
syntax match gaussianRouteCommandArg22
    \ "1998"
    \ containedin=gaussianRouteCommandRegion22
    \ contained
syntax match gaussianRouteCommandArg22
    \ "1986"
    \ containedin=gaussianRouteCommandRegion22
    \ contained
syntax match gaussianRouteCommandArg22
    \ "1979"
    \ containedin=gaussianRouteCommandRegion22
    \ contained


syntax region gaussianRouteCommandRegion22
    \ matchgroup=gaussianRouteCommand
    \ start="Constants=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg22
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg22 Identifier


syntax match gaussianRouteCommand "\<Counterpoise\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg23
    \ "NewGhost"
    \ containedin=gaussianRouteCommandRegion23
    \ contained
syntax match gaussianRouteCommandArg23
    \ "OldGhost"
    \ containedin=gaussianRouteCommandRegion23
    \ contained


syntax region gaussianRouteCommandRegion23
    \ matchgroup=gaussianRouteCommand
    \ start="Counterpoise=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg23
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg23 Identifier


syntax match gaussianRouteCommand "\<DFTB\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg24
    \ "Read"
    \ containedin=gaussianRouteCommandRegion24
    \ contained
syntax match gaussianRouteCommandArg24
    \ "ChkParameters"
    \ containedin=gaussianRouteCommandRegion24
    \ contained


syntax region gaussianRouteCommandRegion24
    \ matchgroup=gaussianRouteCommand
    \ start="DFTB=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg24
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg24 Identifier


syntax match gaussianRouteCommand "\<DFTBA\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg25
    \ "Read"
    \ containedin=gaussianRouteCommandRegion25
    \ contained
syntax match gaussianRouteCommandArg25
    \ "ChkParameters"
    \ containedin=gaussianRouteCommandRegion25
    \ contained


syntax region gaussianRouteCommandRegion25
    \ matchgroup=gaussianRouteCommand
    \ start="DFTBA=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg25
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg25 Identifier


syntax match gaussianRouteCommand "\<DenFit\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg26
    \ "Iterative"
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "InvToler="
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "Convergence="
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "Coulomb"
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "Overlap"
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "JNormalization"
    \ containedin=gaussianRouteCommandRegion26
    \ contained
syntax match gaussianRouteCommandArg26
    \ "AONormalization"
    \ containedin=gaussianRouteCommandRegion26
    \ contained


syntax region gaussianRouteCommandRegion26
    \ matchgroup=gaussianRouteCommand
    \ start="DenFit=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg26
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg26 Identifier


syntax match gaussianRouteCommand "\<Density\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg27
    \ "Current"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "All"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "SCF"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "MP2"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "Transition="
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "AllTransition"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "CI"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "CC"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "RhoCI"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "Rho2"
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "CIS="
    \ containedin=gaussianRouteCommandRegion27
    \ contained
syntax match gaussianRouteCommandArg27
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion27
    \ contained


syntax region gaussianRouteCommandRegion27
    \ matchgroup=gaussianRouteCommand
    \ start="Density=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg27
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg27 Identifier


syntax match gaussianRouteCommand "\<DensityFit\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg28
    \ "Iterative"
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "InvToler="
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "Convergence="
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "Coulomb"
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "Overlap"
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "JNormalization"
    \ containedin=gaussianRouteCommandRegion28
    \ contained
syntax match gaussianRouteCommandArg28
    \ "AONormalization"
    \ containedin=gaussianRouteCommandRegion28
    \ contained


syntax region gaussianRouteCommandRegion28
    \ matchgroup=gaussianRouteCommand
    \ start="DensityFit=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg28
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg28 Identifier


syntax match gaussianRouteCommand "\<Dreiding\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg29
    \ "QEq"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "UnTyped"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "UnCharged"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "HardFirst"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "SoftFirst"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "SoftOnly"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "FirstEquiv"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "LastEquiv"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "ChkParameters"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "NewParameters"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "Modify"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "Print"
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "VRange="
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "CRange="
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "CutRad="
    \ containedin=gaussianRouteCommandRegion29
    \ contained
syntax match gaussianRouteCommandArg29
    \ "Switch="
    \ containedin=gaussianRouteCommandRegion29
    \ contained


syntax region gaussianRouteCommandRegion29
    \ matchgroup=gaussianRouteCommand
    \ start="Dreiding=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg29
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg29 Identifier


syntax match gaussianRouteCommand "\<EET\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg30
    \ "Fragment="
    \ containedin=gaussianRouteCommandRegion30
    \ contained
syntax match gaussianRouteCommandArg30
    \ "FullSystemCavity"
    \ containedin=gaussianRouteCommandRegion30
    \ contained
syntax match gaussianRouteCommandArg30
    \ "FragmentCavity"
    \ containedin=gaussianRouteCommandRegion30
    \ contained
syntax match gaussianRouteCommandArg30
    \ "NonEqSolv"
    \ containedin=gaussianRouteCommandRegion30
    \ contained
syntax match gaussianRouteCommandArg30
    \ "EqSolv"
    \ containedin=gaussianRouteCommandRegion30
    \ contained


syntax region gaussianRouteCommandRegion30
    \ matchgroup=gaussianRouteCommand
    \ start="EET=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg30
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg30 Identifier


syntax match gaussianRouteCommand "\<EOMCCSD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg31
    \ "NStates="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "NStPIR="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "Singlets"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "Triplets"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "NCISState="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "Root="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "Convergence="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "CCConvergence="
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "LRTransitionDensities"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "EnergyOnly"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "ReadGroundStateAmplitudes"
    \ containedin=gaussianRouteCommandRegion31
    \ contained
syntax match gaussianRouteCommandArg31
    \ "NewCIS"
    \ containedin=gaussianRouteCommandRegion31
    \ contained


syntax region gaussianRouteCommandRegion31
    \ matchgroup=gaussianRouteCommand
    \ start="EOMCCSD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg31
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg31 Identifier


syntax match gaussianRouteCommand "\<EPT\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg32
    \ "OVGF"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "P3"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "OVGF+P3"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "D2"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "FC"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "ReadOrbitals"
    \ containedin=gaussianRouteCommandRegion32
    \ contained
syntax match gaussianRouteCommandArg32
    \ "ForceSort"
    \ containedin=gaussianRouteCommandRegion32
    \ contained


syntax region gaussianRouteCommandRegion32
    \ matchgroup=gaussianRouteCommand
    \ start="EPT=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg32
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg32 Identifier


syntax match gaussianRouteCommand "\<EmpiricalDispersion\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg33
    \ "GD2"
    \ containedin=gaussianRouteCommandRegion33
    \ contained
syntax match gaussianRouteCommandArg33
    \ "GD3"
    \ containedin=gaussianRouteCommandRegion33
    \ contained
syntax match gaussianRouteCommandArg33
    \ "GD3BJ"
    \ containedin=gaussianRouteCommandRegion33
    \ contained


syntax region gaussianRouteCommandRegion33
    \ matchgroup=gaussianRouteCommand
    \ start="EmpiricalDispersion=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg33
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg33 Identifier


syntax match gaussianRouteCommand "\<External\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg34
    \ "InUnf"
    \ containedin=gaussianRouteCommandRegion34
    \ contained
syntax match gaussianRouteCommandArg34
    \ "2ElIntegrals"
    \ containedin=gaussianRouteCommandRegion34
    \ contained
syntax match gaussianRouteCommandArg34
    \ "InputFchk"
    \ containedin=gaussianRouteCommandRegion34
    \ contained
syntax match gaussianRouteCommandArg34
    \ "OutputUnf"
    \ containedin=gaussianRouteCommandRegion34
    \ contained
syntax match gaussianRouteCommandArg34
    \ "IOFchk"
    \ containedin=gaussianRouteCommandRegion34
    \ contained
syntax match gaussianRouteCommandArg34
    \ "ReadInputSection"
    \ containedin=gaussianRouteCommandRegion34
    \ contained


syntax region gaussianRouteCommandRegion34
    \ matchgroup=gaussianRouteCommand
    \ start="External=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg34
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg34 Identifier


syntax match gaussianRouteCommand "\<ExtraBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ExtraDensityBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<FMM\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Field\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg35
    \ "Read"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "OldRead"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "RWF"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "ERWF"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "NoChK"
    \ containedin=gaussianRouteCommandRegion35
    \ contained
syntax match gaussianRouteCommandArg35
    \ "EChk"
    \ containedin=gaussianRouteCommandRegion35
    \ contained


syntax region gaussianRouteCommandRegion35
    \ matchgroup=gaussianRouteCommand
    \ start="Field=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg35
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg35 Identifier


syntax match gaussianRouteCommand "\<Force\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg36
    \ "EnOnly"
    \ containedin=gaussianRouteCommandRegion36
    \ contained
syntax match gaussianRouteCommandArg36
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion36
    \ contained
syntax match gaussianRouteCommandArg36
    \ "StepSize="
    \ containedin=gaussianRouteCommandRegion36
    \ contained
syntax match gaussianRouteCommandArg36
    \ "NoStep"
    \ containedin=gaussianRouteCommandRegion36
    \ contained


syntax region gaussianRouteCommandRegion36
    \ matchgroup=gaussianRouteCommand
    \ start="Force=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg36
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg36 Identifier


syntax match gaussianRouteCommand "\<Freq\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg37
    \ "ReadFC"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Raman"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "NRaman"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "NNRaman"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "NoRaman"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "VCD"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ROA"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Anharmonic"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadAnharm"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadHarmonic"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadDifferentharmonic"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "SelectAnharmonicModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "FranckCondon"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "HerzbergTeller"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "FCHT"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Emission"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadFCHT"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "VibRot"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Projected"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "TProjected"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "HinderedRotor"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadHinderedRotor"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "HPModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "InternalModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "SaveNormalModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadNormalModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "SelectNormalModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "SortModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ModelModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "MiddleModes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "PrintDerivatives"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "PrintFrozenAtoms"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "NoPrintNM"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ModRedundant"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Analytic"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Numerical"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "FourPoint"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "DoubleNumer"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Cubic"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Step="
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "DiagFull"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "TwoPoint"
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "NFreq="
    \ containedin=gaussianRouteCommandRegion37
    \ contained
syntax match gaussianRouteCommandArg37
    \ "WorkerPerturbations"
    \ containedin=gaussianRouteCommandRegion37
    \ contained


syntax region gaussianRouteCommandRegion37
    \ matchgroup=gaussianRouteCommand
    \ start="Freq=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg37
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg37 Identifier


syntax match gaussianRouteCommand "\<G1\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg38
    \ "SP"
    \ containedin=gaussianRouteCommandRegion38
    \ contained
syntax match gaussianRouteCommandArg38
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion38
    \ contained
syntax match gaussianRouteCommandArg38
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion38
    \ contained
syntax match gaussianRouteCommandArg38
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion38
    \ contained


syntax region gaussianRouteCommandRegion38
    \ matchgroup=gaussianRouteCommand
    \ start="G1=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg38
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg38 Identifier


syntax match gaussianRouteCommand "\<G2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg39
    \ "SP"
    \ containedin=gaussianRouteCommandRegion39
    \ contained
syntax match gaussianRouteCommandArg39
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion39
    \ contained
syntax match gaussianRouteCommandArg39
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion39
    \ contained
syntax match gaussianRouteCommandArg39
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion39
    \ contained


syntax region gaussianRouteCommandRegion39
    \ matchgroup=gaussianRouteCommand
    \ start="G2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg39
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg39 Identifier


syntax match gaussianRouteCommand "\<G2MP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg40
    \ "SP"
    \ containedin=gaussianRouteCommandRegion40
    \ contained
syntax match gaussianRouteCommandArg40
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion40
    \ contained
syntax match gaussianRouteCommandArg40
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion40
    \ contained
syntax match gaussianRouteCommandArg40
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion40
    \ contained


syntax region gaussianRouteCommandRegion40
    \ matchgroup=gaussianRouteCommand
    \ start="G2MP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg40
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg40 Identifier


syntax match gaussianRouteCommand "\<G3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg41
    \ "SP"
    \ containedin=gaussianRouteCommandRegion41
    \ contained
syntax match gaussianRouteCommandArg41
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion41
    \ contained
syntax match gaussianRouteCommandArg41
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion41
    \ contained
syntax match gaussianRouteCommandArg41
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion41
    \ contained


syntax region gaussianRouteCommandRegion41
    \ matchgroup=gaussianRouteCommand
    \ start="G3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg41
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg41 Identifier


syntax match gaussianRouteCommand "\<G3B3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg42
    \ "SP"
    \ containedin=gaussianRouteCommandRegion42
    \ contained
syntax match gaussianRouteCommandArg42
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion42
    \ contained
syntax match gaussianRouteCommandArg42
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion42
    \ contained
syntax match gaussianRouteCommandArg42
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion42
    \ contained


syntax region gaussianRouteCommandRegion42
    \ matchgroup=gaussianRouteCommand
    \ start="G3B3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg42
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg42 Identifier


syntax match gaussianRouteCommand "\<G3MP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg43
    \ "SP"
    \ containedin=gaussianRouteCommandRegion43
    \ contained
syntax match gaussianRouteCommandArg43
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion43
    \ contained
syntax match gaussianRouteCommandArg43
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion43
    \ contained
syntax match gaussianRouteCommandArg43
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion43
    \ contained


syntax region gaussianRouteCommandRegion43
    \ matchgroup=gaussianRouteCommand
    \ start="G3MP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg43
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg43 Identifier


syntax match gaussianRouteCommand "\<G3MP2B3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg44
    \ "SP"
    \ containedin=gaussianRouteCommandRegion44
    \ contained
syntax match gaussianRouteCommandArg44
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion44
    \ contained
syntax match gaussianRouteCommandArg44
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion44
    \ contained
syntax match gaussianRouteCommandArg44
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion44
    \ contained


syntax region gaussianRouteCommandRegion44
    \ matchgroup=gaussianRouteCommand
    \ start="G3MP2B3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg44
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg44 Identifier


syntax match gaussianRouteCommand "\<G4\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg45
    \ "SP"
    \ containedin=gaussianRouteCommandRegion45
    \ contained
syntax match gaussianRouteCommandArg45
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion45
    \ contained
syntax match gaussianRouteCommandArg45
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion45
    \ contained
syntax match gaussianRouteCommandArg45
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion45
    \ contained


syntax region gaussianRouteCommandRegion45
    \ matchgroup=gaussianRouteCommand
    \ start="G4=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg45
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg45 Identifier


syntax match gaussianRouteCommand "\<G4MP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg46
    \ "SP"
    \ containedin=gaussianRouteCommandRegion46
    \ contained
syntax match gaussianRouteCommandArg46
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion46
    \ contained
syntax match gaussianRouteCommandArg46
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion46
    \ contained
syntax match gaussianRouteCommandArg46
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion46
    \ contained


syntax region gaussianRouteCommandRegion46
    \ matchgroup=gaussianRouteCommand
    \ start="G4MP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg46
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg46 Identifier


syntax match gaussianRouteCommand "\<G96B95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96BRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96KCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96P86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96PKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96PL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96PW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96RevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96TPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96V5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96VP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96VWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<G96VWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<GFInput\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg47
    \ "JNormalization"
    \ containedin=gaussianRouteCommandRegion47
    \ contained
syntax match gaussianRouteCommandArg47
    \ "AONormalization"
    \ containedin=gaussianRouteCommandRegion47
    \ contained
syntax match gaussianRouteCommandArg47
    \ "RawNormalization"
    \ containedin=gaussianRouteCommandRegion47
    \ contained


syntax region gaussianRouteCommandRegion47
    \ matchgroup=gaussianRouteCommand
    \ start="GFInput=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg47
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg47 Identifier


syntax match gaussianRouteCommand "\<GFPrint\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<GVB\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg48
    \ "NPair"
    \ containedin=gaussianRouteCommandRegion48
    \ contained
syntax match gaussianRouteCommandArg48
    \ "InHam="
    \ containedin=gaussianRouteCommandRegion48
    \ contained
syntax match gaussianRouteCommandArg48
    \ "OSS"
    \ containedin=gaussianRouteCommandRegion48
    \ contained
syntax match gaussianRouteCommandArg48
    \ "Freeze"
    \ containedin=gaussianRouteCommandRegion48
    \ contained


syntax region gaussianRouteCommandRegion48
    \ matchgroup=gaussianRouteCommand
    \ start="GVB=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg48
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg48 Identifier


syntax match gaussianRouteCommand "\<Gen\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg49
    \ "NZCore="
    \ containedin=gaussianRouteCommandRegion49
    \ contained


syntax region gaussianRouteCommandRegion49
    \ matchgroup=gaussianRouteCommand
    \ start="Gen=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg49
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg49 Identifier


syntax match gaussianRouteCommand "\<GenChk\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<GenECP\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg50
    \ "NZCore="
    \ containedin=gaussianRouteCommandRegion50
    \ contained


syntax region gaussianRouteCommandRegion50
    \ matchgroup=gaussianRouteCommand
    \ start="GenECP=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg50
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg50 Identifier


syntax match gaussianRouteCommand "\<Geom\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg51
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "AllCheck"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Step="
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Modify"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ModRedundant"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "NewDefinition"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "SkipAll"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "SkipAng"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "SkipDihedral"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "SkipHBond"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "KeepConstants"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "NewRedundant"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Redundant"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Connectivity"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ModConnectivity"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ZMConnectivity"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "IHarmonic="
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ChkHarmonic="
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ReadHarmonic="
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ReadOptimize"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Micro"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Distance"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "CAngle"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "CDihedral"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "PrintInputOrient"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Print"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "GIC"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "AddGIC"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "DefaultGIC"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "DefaultNoGIC"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "GICOld"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "ReadAllGIC"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Crowd"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Independent"
    \ containedin=gaussianRouteCommandRegion51
    \ contained
syntax match gaussianRouteCommandArg51
    \ "Huge"
    \ containedin=gaussianRouteCommandRegion51
    \ contained


syntax region gaussianRouteCommandRegion51
    \ matchgroup=gaussianRouteCommand
    \ start="Geom=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg51
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg51 Identifier


syntax match gaussianRouteCommand "\<Guess\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg52
    \ "Harris"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Huckel"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "RdScale"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "OldHuckel"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "INDO"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "AM1"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Core"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "TightConvergence"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Permute"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Alter"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Mix"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "DensityMix"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "DensityMix="
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "CopyChk"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Biorthogonalize"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "NaturalOrbitals"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Only"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Always"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Fragment="
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Local"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Sparse"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Extra"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Fock"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Read"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Alpha"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Translate"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Cards"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Input"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Save"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "Print"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "LowSymm"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "NoSymm"
    \ containedin=gaussianRouteCommandRegion52
    \ contained
syntax match gaussianRouteCommandArg52
    \ "ForceAbelianSymmetry"
    \ containedin=gaussianRouteCommandRegion52
    \ contained


syntax region gaussianRouteCommandRegion52
    \ matchgroup=gaussianRouteCommand
    \ start="Guess=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg52
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg52 Identifier


syntax match gaussianRouteCommand "\<HCTH\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HCTH147\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HCTH407\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HCTH93\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFBVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HFSVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HISSbPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<HSEH1PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Huckel\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg53
    \ "Hoffmann"
    \ containedin=gaussianRouteCommandRegion53
    \ contained
syntax match gaussianRouteCommandArg53
    \ "Muller"
    \ containedin=gaussianRouteCommandRegion53
    \ contained
syntax match gaussianRouteCommandArg53
    \ "Guess"
    \ containedin=gaussianRouteCommandRegion53
    \ contained


syntax region gaussianRouteCommandRegion53
    \ matchgroup=gaussianRouteCommand
    \ start="Huckel=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg53
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg53 Identifier


syntax match gaussianRouteCommand "\<INDO\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<IOp\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<IRC\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg54
    \ "Phase=("
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Forward"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Reverse"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Downhill"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "MaxPoints="
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "StepSize="
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "HPC"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "EulerPC"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "LQA"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "DVV"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Euler"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReCalc"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "GradientOnly"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "MassWeighted"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Cartesian"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "RCFC"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "CalcFC"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReCorrect"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "MaxCycle="
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "VeryTight"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "GS2"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "CalcAll"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report=Read"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report=Bonds"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report=Angles"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report=Dihedrals"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "Report=Cartesians"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReCorrect=Never"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReCorrect=Always"
    \ containedin=gaussianRouteCommandRegion54
    \ contained
syntax match gaussianRouteCommandArg54
    \ "ReCorrect=Test"
    \ containedin=gaussianRouteCommandRegion54
    \ contained


syntax region gaussianRouteCommandRegion54
    \ matchgroup=gaussianRouteCommand
    \ start="IRC=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg54
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg54 Identifier


syntax match gaussianRouteCommand "\<IRCMax\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg55
    \ "Zero"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "Forward"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "Reverse"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "ReadVector"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "MaxPoints="
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "StepSize="
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "MassWeighted"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "Internal"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "Cartesian"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "VeryTight"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "CalcFC"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "CalcAll"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion55
    \ contained
syntax match gaussianRouteCommandArg55
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion55
    \ contained


syntax region gaussianRouteCommandRegion55
    \ matchgroup=gaussianRouteCommand
    \ start="IRCMax=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg55
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg55 Identifier


syntax match gaussianRouteCommand "\<Int\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg56
    \ "DKH"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SSWeights"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "FMMNAtoms="
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Symm"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "FoFCou"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "LTrace"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SplitDBFSP"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "ECPAcc="
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Acc2E="
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "DigestCartesian"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "UnconAOBasis"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "UnconDBF"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "NoXCTest"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "ReadB"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Raff"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Raf1"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Raf2"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Raf3"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "BasisTransform="
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "ExactBasisTransform"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "NoBasisTransform"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "DKH0"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "DKHSO"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "RESC"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "CoarseGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=CoarseGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SG1Grid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=SG1Grid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "FineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=FineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "UltraFineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=UltraFineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SuperFineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=SuperFineGrid"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Coarse"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=Coarse"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SG1"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=SG1"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Fine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=Fine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "UltraFine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=UltraFine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "SuperFine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained
syntax match gaussianRouteCommandArg56
    \ "Grid=SuperFine"
    \ containedin=gaussianRouteCommandRegion56
    \ contained


syntax region gaussianRouteCommandRegion56
    \ matchgroup=gaussianRouteCommand
    \ start="Int=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg56
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg56 Identifier


syntax match gaussianRouteCommand "\<Integral\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg57
    \ "DKH"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SSWeights"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "FMMNAtoms="
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Symm"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "FoFCou"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "LTrace"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SplitDBFSP"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "ECPAcc="
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Acc2E="
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "DigestCartesian"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "UnconAOBasis"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "UnconDBF"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "NoXCTest"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "ReadB"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Raff"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Raf1"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Raf2"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Raf3"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "BasisTransform="
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "ExactBasisTransform"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "NoBasisTransform"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "DKH0"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "DKHSO"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "RESC"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "CoarseGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=CoarseGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SG1Grid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=SG1Grid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "FineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=FineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "UltraFineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=UltraFineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SuperFineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=SuperFineGrid"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Coarse"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=Coarse"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SG1"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=SG1"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Fine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=Fine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "UltraFine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=UltraFine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "SuperFine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained
syntax match gaussianRouteCommandArg57
    \ "Grid=SuperFine"
    \ containedin=gaussianRouteCommandRegion57
    \ contained


syntax region gaussianRouteCommandRegion57
    \ matchgroup=gaussianRouteCommand
    \ start="Integral=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg57
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg57 Identifier


syntax match gaussianRouteCommand "\<LC-\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<LC-BLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<LC-wHPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<LC-wPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<LSDA\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M05\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M052X\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M06\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M062X\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M06HF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M06L\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M08HX\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M11\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<M11L\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MINDO3\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MN12L\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MN12SX\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MN15\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MN15L\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MNDO\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<MP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg58
    \ "FC"
    \ containedin=gaussianRouteCommandRegion58
    \ contained
syntax match gaussianRouteCommandArg58
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion58
    \ contained
syntax match gaussianRouteCommandArg58
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion58
    \ contained
syntax match gaussianRouteCommandArg58
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion58
    \ contained
syntax match gaussianRouteCommandArg58
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion58
    \ contained
syntax match gaussianRouteCommandArg58
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion58
    \ contained


syntax region gaussianRouteCommandRegion58
    \ matchgroup=gaussianRouteCommand
    \ start="MP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg58
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg58 Identifier


syntax match gaussianRouteCommand "\<MP3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg59
    \ "FC"
    \ containedin=gaussianRouteCommandRegion59
    \ contained
syntax match gaussianRouteCommandArg59
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion59
    \ contained
syntax match gaussianRouteCommandArg59
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion59
    \ contained
syntax match gaussianRouteCommandArg59
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion59
    \ contained
syntax match gaussianRouteCommandArg59
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion59
    \ contained
syntax match gaussianRouteCommandArg59
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion59
    \ contained


syntax region gaussianRouteCommandRegion59
    \ matchgroup=gaussianRouteCommand
    \ start="MP3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg59
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg59 Identifier


syntax match gaussianRouteCommand "\<MP4\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg60
    \ "FC"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "DQ"
    \ containedin=gaussianRouteCommandRegion60
    \ contained
syntax match gaussianRouteCommandArg60
    \ "SDQ"
    \ containedin=gaussianRouteCommandRegion60
    \ contained


syntax region gaussianRouteCommandRegion60
    \ matchgroup=gaussianRouteCommand
    \ start="MP4=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg60
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg60 Identifier


syntax match gaussianRouteCommand "\<MP5\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg61
    \ "FC"
    \ containedin=gaussianRouteCommandRegion61
    \ contained
syntax match gaussianRouteCommandArg61
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion61
    \ contained
syntax match gaussianRouteCommandArg61
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion61
    \ contained
syntax match gaussianRouteCommandArg61
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion61
    \ contained
syntax match gaussianRouteCommandArg61
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion61
    \ contained
syntax match gaussianRouteCommandArg61
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion61
    \ contained


syntax region gaussianRouteCommandRegion61
    \ matchgroup=gaussianRouteCommand
    \ start="MP5=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg61
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg61 Identifier


syntax match gaussianRouteCommand "\<MaxDisk\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<N12\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<N12SX\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<NMR\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg62
    \ "SpinSpin"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "Mixed"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "ReadAtoms"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "CSGT"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "GIAO"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "IGAIM"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "SingleOrigin"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "All"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "PrintEigenvectors"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "FCOnly"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "ReadFC"
    \ containedin=gaussianRouteCommandRegion62
    \ contained
syntax match gaussianRouteCommandArg62
    \ "Susceptibility"
    \ containedin=gaussianRouteCommandRegion62
    \ contained


syntax region gaussianRouteCommandRegion62
    \ matchgroup=gaussianRouteCommand
    \ start="NMR=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg62
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg62 Identifier


syntax match gaussianRouteCommand "\<Name\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<NoDenFit\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<NoDensity\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<NoDensityFit\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<O3LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OHSE1PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OHSE2PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ONIOM\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg63
    \ "EmbedCharge"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "MKUFF"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "MK"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "Mulliken"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "HLYGAt"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "ScaleCharge="
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "SValue"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "Compress"
    \ containedin=gaussianRouteCommandRegion63
    \ contained
syntax match gaussianRouteCommandArg63
    \ "InputFiles"
    \ containedin=gaussianRouteCommandRegion63
    \ contained


syntax region gaussianRouteCommandRegion63
    \ matchgroup=gaussianRouteCommand
    \ start="ONIOM=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg63
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg63 Identifier


syntax match gaussianRouteCommand "\<OP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ORevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<OVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Opt\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg64
    \ "QST2"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "QST3"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "TS"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Saddle="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Conical"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ModRedundant"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ReadOptimize"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "NoFreeze"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "MaxCycles="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "MaxStep="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "InitialHarmonic="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ChkHarmonic="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ReadHarmonic="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "MaxMicroiterations="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "NGoDown="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ReadFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "CalcFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "RCFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "CalcHFFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "CalcAll"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "RecalcFC=N"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "VCD"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "NoRaman"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "StarOnly"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "NewEstmFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "EstmFC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "FCCards"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "VeryTight"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "EigenTest"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Expert"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Loose"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "GEDIIS"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "RFO"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "EF"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Micro"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "QuadMacro"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Redundant"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Z-matrix"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Cartesian"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "GIC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "AddGIC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "GICOld"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "ReadAllGIC"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Path="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "OptReactant"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "BiMolecular"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "OptProduct"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Linear"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "TrustUpdate"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Newton"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "NRScale"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "Steep"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "UpdateMethod="
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "HFError"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "FineGridError"
    \ containedin=gaussianRouteCommandRegion64
    \ contained
syntax match gaussianRouteCommandArg64
    \ "SG1Error"
    \ containedin=gaussianRouteCommandRegion64
    \ contained


syntax region gaussianRouteCommandRegion64
    \ matchgroup=gaussianRouteCommand
    \ start="Opt=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg64
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg64 Identifier


syntax match gaussianRouteCommand "\<Optimization\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg65
    \ "QST2"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "QST3"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "TS"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Saddle="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Conical"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ModRedundant"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ReadOptimize"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "NoFreeze"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "MaxCycles="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "MaxStep="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "InitialHarmonic="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ChkHarmonic="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ReadHarmonic="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "MaxMicroiterations="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "NGoDown="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ReadFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "CalcFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "RCFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "CalcHFFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "CalcAll"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "RecalcFC=N"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "VCD"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "NoRaman"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "StarOnly"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "NewEstmFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "EstmFC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "FCCards"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "VeryTight"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "EigenTest"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Expert"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Loose"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "GEDIIS"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "RFO"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "EF"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Micro"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "QuadMacro"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Redundant"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Z-matrix"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Cartesian"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "GIC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "AddGIC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "GICOld"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "ReadAllGIC"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Path="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "OptReactant"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "BiMolecular"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "OptProduct"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Linear"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "TrustUpdate"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Newton"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "NRScale"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "Steep"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "UpdateMethod="
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "HFError"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "FineGridError"
    \ containedin=gaussianRouteCommandRegion65
    \ contained
syntax match gaussianRouteCommandArg65
    \ "SG1Error"
    \ containedin=gaussianRouteCommandRegion65
    \ contained


syntax region gaussianRouteCommandRegion65
    \ matchgroup=gaussianRouteCommand
    \ start="Optimization=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg65
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg65 Identifier


syntax match gaussianRouteCommand "\<Output\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg66
    \ "WFN"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "WFX"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "GIAOCx"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "CSGTCx"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "Pickett"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "SpinRotation"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "RotationalConstants"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "QuarticCentrifugal"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "ReadAtoms"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "MatrixElement"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "I4Labels"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "MO2ElectronIntegrals"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "DerivativeDensities"
    \ containedin=gaussianRouteCommandRegion66
    \ contained
syntax match gaussianRouteCommandArg66
    \ "GIAOInts"
    \ containedin=gaussianRouteCommandRegion66
    \ contained


syntax region gaussianRouteCommandRegion66
    \ matchgroup=gaussianRouteCommand
    \ start="Output=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg66
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg66 Identifier


syntax match gaussianRouteCommand "\<PBC\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg67
    \ "GammaOnly"
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "NKPoint="
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "CellRange="
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "NCellMin="
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "NCellMax="
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "NCellDFT="
    \ containedin=gaussianRouteCommandRegion67
    \ contained
syntax match gaussianRouteCommandArg67
    \ "NCellK="
    \ containedin=gaussianRouteCommandRegion67
    \ contained


syntax region gaussianRouteCommandRegion67
    \ matchgroup=gaussianRouteCommand
    \ start="PBC=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg67
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg67 Identifier


syntax match gaussianRouteCommand "\<PBE1PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBELYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBERevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBETPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEh1PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PBEhVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PKZBVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PM3\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg68
    \ "Generate"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Input"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "MOPACExternal"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Both"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "TCheckpoint"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "RWF"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Print"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "PrintAll"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Zero"
    \ containedin=gaussianRouteCommandRegion68
    \ contained
syntax match gaussianRouteCommandArg68
    \ "Old"
    \ containedin=gaussianRouteCommandRegion68
    \ contained


syntax region gaussianRouteCommandRegion68
    \ matchgroup=gaussianRouteCommand
    \ start="PM3=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg68
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg68 Identifier


syntax match gaussianRouteCommand "\<PM6\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg69
    \ "Generate"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Input"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "MOPACExternal"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Both"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "TCheckpoint"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "RWF"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Print"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "PrintAll"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Zero"
    \ containedin=gaussianRouteCommandRegion69
    \ contained
syntax match gaussianRouteCommandArg69
    \ "Old"
    \ containedin=gaussianRouteCommandRegion69
    \ contained


syntax region gaussianRouteCommandRegion69
    \ matchgroup=gaussianRouteCommand
    \ start="PM6=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg69
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg69 Identifier


syntax match gaussianRouteCommand "\<PM7\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg70
    \ "Generate"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Input"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "MOPACExternal"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Both"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "TCheckpoint"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "RWF"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Print"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "PrintAll"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Zero"
    \ containedin=gaussianRouteCommandRegion70
    \ contained
syntax match gaussianRouteCommandArg70
    \ "Old"
    \ containedin=gaussianRouteCommandRegion70
    \ contained


syntax region gaussianRouteCommandRegion70
    \ matchgroup=gaussianRouteCommand
    \ start="PM7=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg70
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg70 Identifier


syntax match gaussianRouteCommand "\<PW6B95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW6B95D3\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91B95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91BRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91KCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91P86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91PKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91PL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91PW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91RevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91TPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91V5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91VP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91VWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<PW91VWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Polar\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg71
    \ "OptRot"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "DCSHG"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Gamma"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Analytic"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "WorkerPerturbations"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "FourPoint"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "DoubleNumer"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Cubic"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Numerical"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Step="
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Susceptibility"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "TwoPoint"
    \ containedin=gaussianRouteCommandRegion71
    \ contained
syntax match gaussianRouteCommandArg71
    \ "Dipole"
    \ containedin=gaussianRouteCommandRegion71
    \ contained


syntax region gaussianRouteCommandRegion71
    \ matchgroup=gaussianRouteCommand
    \ start="Polar=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg71
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg71 Identifier


syntax match gaussianRouteCommand "\<Pop\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg72
    \ "None"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Minimal"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Regular"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Full"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Always"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Orbitals"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Orbitals="
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "ThreshOrbitals="
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Bonding"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "MBS"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Hirshfeld"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Biorthogonalize"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SaveBiorth"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "DCT"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NaturalTransitionOrbitals"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SaveNaturalTransitionOrbitals"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NoOrthogonalize"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Save"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NaturalOrbitals"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NOAB"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "AlphaNatural"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "BetaNatural"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SpinNatural"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "MK"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "MKUFF"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "CHelp"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "CHelpG"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "HLY"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "HLYGAt"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "Dipole"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "AtomDipole"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "ReadRadii"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "ReadAtRadii"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NBO"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NCS"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NCSDiag"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NCSAll"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NPA"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NBORead"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "NBODel"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SaveNBOs"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SaveNLMOs"
    \ containedin=gaussianRouteCommandRegion72
    \ contained
syntax match gaussianRouteCommandArg72
    \ "SaveMixed"
    \ containedin=gaussianRouteCommandRegion72
    \ contained


syntax region gaussianRouteCommandRegion72
    \ matchgroup=gaussianRouteCommand
    \ start="Pop=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg72
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg72 Identifier


syntax match gaussianRouteCommand "\<Population\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg73
    \ "None"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Minimal"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Regular"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Full"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Always"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Orbitals"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Orbitals="
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "ThreshOrbitals="
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Bonding"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "MBS"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Hirshfeld"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Biorthogonalize"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SaveBiorth"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "DCT"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NaturalTransitionOrbitals"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SaveNaturalTransitionOrbitals"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NoOrthogonalize"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Save"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NaturalOrbitals"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NOAB"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "AlphaNatural"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "BetaNatural"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SpinNatural"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "MK"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "MKUFF"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "CHelp"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "CHelpG"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "HLY"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "HLYGAt"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "Dipole"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "AtomDipole"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "ReadRadii"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "ReadAtRadii"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NBO"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NCS"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NCSDiag"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NCSAll"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NPA"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NBORead"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "NBODel"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SaveNBOs"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SaveNLMOs"
    \ containedin=gaussianRouteCommandRegion73
    \ contained
syntax match gaussianRouteCommandArg73
    \ "SaveMixed"
    \ containedin=gaussianRouteCommandRegion73
    \ contained


syntax region gaussianRouteCommandRegion73
    \ matchgroup=gaussianRouteCommand
    \ start="Population=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg73
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg73 Identifier


syntax match gaussianRouteCommand "\<Pressure\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg74
    \ "Default"
    \ containedin=gaussianRouteCommandRegion74
    \ contained


syntax region gaussianRouteCommandRegion74
    \ matchgroup=gaussianRouteCommand
    \ start="Pressure=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg74
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg74 Identifier


syntax match gaussianRouteCommand "\<Prop\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg75
    \ "EFG"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Potential"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Field"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "EPR"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Read"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Opt"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "FitCharge"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Dipole"
    \ containedin=gaussianRouteCommandRegion75
    \ contained
syntax match gaussianRouteCommandArg75
    \ "Grid"
    \ containedin=gaussianRouteCommandRegion75
    \ contained


syntax region gaussianRouteCommandRegion75
    \ matchgroup=gaussianRouteCommand
    \ start="Prop=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg75
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg75 Identifier


syntax match gaussianRouteCommand "\<Pseudo\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg76
    \ "Read"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "SOScal"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "CHF"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "SHC"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "LANL1"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "LANL2"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Old"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Name"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Max"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "ICore"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Title"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "NTerm"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "NPower"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Expon"
    \ containedin=gaussianRouteCommandRegion76
    \ contained
syntax match gaussianRouteCommandArg76
    \ "Coeff"
    \ containedin=gaussianRouteCommandRegion76
    \ contained


syntax region gaussianRouteCommandRegion76
    \ matchgroup=gaussianRouteCommand
    \ start="Pseudo=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg76
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg76 Identifier


syntax match gaussianRouteCommand "\<Punch\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg77
    \ "Archive"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "Title"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "Coord"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "Derivatives"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "MO"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "NaturalOrbitals"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "HondoInput"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "GAMESSInput"
    \ containedin=gaussianRouteCommandRegion77
    \ contained
syntax match gaussianRouteCommandArg77
    \ "All"
    \ containedin=gaussianRouteCommandRegion77
    \ contained


syntax region gaussianRouteCommandRegion77
    \ matchgroup=gaussianRouteCommand
    \ start="Punch=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg77
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg77 Identifier


syntax match gaussianRouteCommand "\<QCI\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg78
    \ "T"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "E4T"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "TQ"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "T1Diag"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "FC"
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion78
    \ contained
syntax match gaussianRouteCommandArg78
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion78
    \ contained


syntax region gaussianRouteCommandRegion78
    \ matchgroup=gaussianRouteCommand
    \ start="QCI=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg78
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg78 Identifier


syntax match gaussianRouteCommand "\<QCID\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg79
    \ "FC"
    \ containedin=gaussianRouteCommandRegion79
    \ contained
syntax match gaussianRouteCommandArg79
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion79
    \ contained
syntax match gaussianRouteCommandArg79
    \ "MaxCyc="
    \ containedin=gaussianRouteCommandRegion79
    \ contained
syntax match gaussianRouteCommandArg79
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion79
    \ contained
syntax match gaussianRouteCommandArg79
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion79
    \ contained
syntax match gaussianRouteCommandArg79
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion79
    \ contained


syntax region gaussianRouteCommandRegion79
    \ matchgroup=gaussianRouteCommand
    \ start="QCID=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg79
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg79 Identifier


syntax match gaussianRouteCommand "\<RHF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RMP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg80
    \ "FC"
    \ containedin=gaussianRouteCommandRegion80
    \ contained
syntax match gaussianRouteCommandArg80
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion80
    \ contained
syntax match gaussianRouteCommandArg80
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion80
    \ contained
syntax match gaussianRouteCommandArg80
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion80
    \ contained
syntax match gaussianRouteCommandArg80
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion80
    \ contained
syntax match gaussianRouteCommandArg80
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion80
    \ contained


syntax region gaussianRouteCommandRegion80
    \ matchgroup=gaussianRouteCommand
    \ start="RMP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg80
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg80 Identifier


syntax match gaussianRouteCommand "\<ROHF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ROMP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg81
    \ "FC"
    \ containedin=gaussianRouteCommandRegion81
    \ contained
syntax match gaussianRouteCommandArg81
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion81
    \ contained
syntax match gaussianRouteCommandArg81
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion81
    \ contained
syntax match gaussianRouteCommandArg81
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion81
    \ contained
syntax match gaussianRouteCommandArg81
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion81
    \ contained
syntax match gaussianRouteCommandArg81
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion81
    \ contained


syntax region gaussianRouteCommandRegion81
    \ matchgroup=gaussianRouteCommand
    \ start="ROMP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg81
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg81 Identifier


syntax match gaussianRouteCommand "\<RdBass\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ReadBasis\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Restart\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<RevTPSSVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<S\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SCF\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg82
    \ "DIIS"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "CDIIS"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Fermi"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Damp"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "NDamp="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "QC"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "XQC"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "YQC"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "MaxConventionalCycles="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "PseudoDiagonalization="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "FullDiagonalization"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "SD"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "SSD"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "SaveKPoint"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "DM"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "VShift"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "VShift="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "MaxCycle="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "FullLinear"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "FinalIteration"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "IncFock"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Pass"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "TightLinEq"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "VeryTightLinEq"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Conventional"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "PtDensity=N"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "VarAcc"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Big"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "MaxNR="
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "IDSymm"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "DSymm"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "NoSymm"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Symm"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "IntRep"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "FockSymm"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Save"
    \ containedin=gaussianRouteCommandRegion82
    \ contained
syntax match gaussianRouteCommandArg82
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion82
    \ contained


syntax region gaussianRouteCommandRegion82
    \ matchgroup=gaussianRouteCommand
    \ start="SCF=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg82
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg82 Identifier


syntax match gaussianRouteCommand "\<SCRF\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg83
    \ "Solvent="
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "PCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "CPCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Dipole"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "IPCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "SCIPCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "SMD"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "NonEquilibrium="
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "ExternalIteration"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "1stVac"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "1stPCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "SolventAccessibleSurface"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "AsymmetricIEFPCM"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "PTED"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "CorrectedLinearResponse"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Read"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Checkpoint"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Modify"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "ONIOMPCM="
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "G09Defaults"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "G03Defaults"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "A0="
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "Dielectric="
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "GradVne"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "GradRho"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "UseDensity"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "UseMOs"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "GasCavity"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "SaveQ"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "LoadQ"
    \ containedin=gaussianRouteCommandRegion83
    \ contained
syntax match gaussianRouteCommandArg83
    \ "COSMORS"
    \ containedin=gaussianRouteCommandRegion83
    \ contained


syntax region gaussianRouteCommandRegion83
    \ matchgroup=gaussianRouteCommand
    \ start="SCRF=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg83
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg83 Identifier


syntax match gaussianRouteCommand "\<SKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SOGGA11\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SOGGA11X\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<STPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<SVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Scale\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg84
    \ "Default"
    \ containedin=gaussianRouteCommandRegion84
    \ contained


syntax region gaussianRouteCommandRegion84
    \ matchgroup=gaussianRouteCommand
    \ start="Scale=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg84
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg84 Identifier


syntax match gaussianRouteCommand "\<Scan\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg85
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion85
    \ contained


syntax region gaussianRouteCommandRegion85
    \ matchgroup=gaussianRouteCommand
    \ start="Scan=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg85
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg85 Identifier


syntax match gaussianRouteCommand "\<Sparse\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg86
    \ "Loose"
    \ containedin=gaussianRouteCommandRegion86
    \ contained
syntax match gaussianRouteCommandArg86
    \ "Medium"
    \ containedin=gaussianRouteCommandRegion86
    \ contained
syntax match gaussianRouteCommandArg86
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion86
    \ contained
syntax match gaussianRouteCommandArg86
    \ "N"
    \ containedin=gaussianRouteCommandRegion86
    \ contained
syntax match gaussianRouteCommandArg86
    \ "None"
    \ containedin=gaussianRouteCommandRegion86
    \ contained


syntax region gaussianRouteCommandRegion86
    \ matchgroup=gaussianRouteCommand
    \ start="Sparse=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg86
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg86 Identifier


syntax match gaussianRouteCommand "\<Stable\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg87
    \ "RExt"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "Int"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "RRHF"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "RUHF"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "CRHF"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "CUHF"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "Opt"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "1Opt"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "MO"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "AO"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "ICDiag"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "QCOnly"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "XQC"
    \ containedin=gaussianRouteCommandRegion87
    \ contained
syntax match gaussianRouteCommandArg87
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion87
    \ contained


syntax region gaussianRouteCommandRegion87
    \ matchgroup=gaussianRouteCommand
    \ start="Stable=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg87
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg87 Identifier


syntax match gaussianRouteCommand "\<Symmetry\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg88
    \ "Int"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "Grad"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "SCF"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "Loose"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "Follow"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "PG="
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "CenterOfCharge"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "CenterOfMass"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "None"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "PrintOrientation"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "SaveOrientation"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "On"
    \ containedin=gaussianRouteCommandRegion88
    \ contained
syntax match gaussianRouteCommandArg88
    \ "Axis="
    \ containedin=gaussianRouteCommandRegion88
    \ contained


syntax region gaussianRouteCommandRegion88
    \ matchgroup=gaussianRouteCommand
    \ start="Symmetry=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg88
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg88 Identifier


syntax match gaussianRouteCommand "\<TD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg89
    \ "Singlets"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Triplets"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "50-50"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Root="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "NStates="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Add="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Read"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "EqSolv"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "IVOGuess"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "SOS"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "NonAdiabaticCoupling"
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "Conver="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "GOccSt="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "GOccEnd="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "GDEMin="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "DEMin="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "IFact="
    \ containedin=gaussianRouteCommandRegion89
    \ contained
syntax match gaussianRouteCommandArg89
    \ "WhenReduce="
    \ containedin=gaussianRouteCommandRegion89
    \ contained


syntax region gaussianRouteCommandRegion89
    \ matchgroup=gaussianRouteCommand
    \ start="TD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg89
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg89 Identifier


syntax match gaussianRouteCommand "\<TPSSB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TPSSh\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Temperature\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg90
    \ "Default"
    \ containedin=gaussianRouteCommandRegion90
    \ contained


syntax region gaussianRouteCommandRegion90
    \ matchgroup=gaussianRouteCommand
    \ start="Temperature=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg90
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg90 Identifier


syntax match gaussianRouteCommand "\<Test\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TestMO\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<TrackIO\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Transformation\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg91
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "Force"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "Full"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "IJAB"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "IAJB"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "IJKL"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "IJKA"
    \ containedin=gaussianRouteCommandRegion91
    \ contained
syntax match gaussianRouteCommandArg91
    \ "IABC"
    \ containedin=gaussianRouteCommandRegion91
    \ contained


syntax region gaussianRouteCommandRegion91
    \ matchgroup=gaussianRouteCommand
    \ start="Transformation=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg91
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg91 Identifier


syntax match gaussianRouteCommand "\<UFF\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg92
    \ "QEq"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "UnTyped"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "UnCharged"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "HardFirst"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "SoftFirst"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "SoftOnly"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "FirstEquiv"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "LastEquiv"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "ChkParameters"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "NewParameters"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "Modify"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "Print"
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "VRange="
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "CRange="
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "CutRad="
    \ containedin=gaussianRouteCommandRegion92
    \ contained
syntax match gaussianRouteCommandArg92
    \ "Switch="
    \ containedin=gaussianRouteCommandRegion92
    \ contained


syntax region gaussianRouteCommandRegion92
    \ matchgroup=gaussianRouteCommand
    \ start="UFF=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg92
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg92 Identifier


syntax match gaussianRouteCommand "\<UHF\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<UMP2\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg93
    \ "FC"
    \ containedin=gaussianRouteCommandRegion93
    \ contained
syntax match gaussianRouteCommandArg93
    \ "FullDirect"
    \ containedin=gaussianRouteCommandRegion93
    \ contained
syntax match gaussianRouteCommandArg93
    \ "TWInCore"
    \ containedin=gaussianRouteCommandRegion93
    \ contained
syntax match gaussianRouteCommandArg93
    \ "SemiDirect"
    \ containedin=gaussianRouteCommandRegion93
    \ contained
syntax match gaussianRouteCommandArg93
    \ "Direct"
    \ containedin=gaussianRouteCommandRegion93
    \ contained
syntax match gaussianRouteCommandArg93
    \ "InCore"
    \ containedin=gaussianRouteCommandRegion93
    \ contained


syntax region gaussianRouteCommandRegion93
    \ matchgroup=gaussianRouteCommand
    \ start="UMP2=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg93
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg93 Identifier


syntax match gaussianRouteCommand "\<Units\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg94
    \ "Ang"
    \ containedin=gaussianRouteCommandRegion94
    \ contained
syntax match gaussianRouteCommandArg94
    \ "AU"
    \ containedin=gaussianRouteCommandRegion94
    \ contained
syntax match gaussianRouteCommandArg94
    \ "Deg"
    \ containedin=gaussianRouteCommandRegion94
    \ contained
syntax match gaussianRouteCommandArg94
    \ "Rad"
    \ containedin=gaussianRouteCommandRegion94
    \ contained


syntax region gaussianRouteCommandRegion94
    \ matchgroup=gaussianRouteCommand
    \ start="Units=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg94
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg94 Identifier


syntax match gaussianRouteCommand "\<VSXC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<Volume\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg95
    \ "Tight"
    \ containedin=gaussianRouteCommandRegion95
    \ contained


syntax region gaussianRouteCommandRegion95
    \ matchgroup=gaussianRouteCommand
    \ start="Volume=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg95
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg95 Identifier


syntax match gaussianRouteCommand "\<W1BD\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg96
    \ "SP"
    \ containedin=gaussianRouteCommandRegion96
    \ contained
syntax match gaussianRouteCommandArg96
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion96
    \ contained
syntax match gaussianRouteCommandArg96
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion96
    \ contained
syntax match gaussianRouteCommandArg96
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion96
    \ contained
syntax match gaussianRouteCommandArg96
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion96
    \ contained
syntax match gaussianRouteCommandArg96
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion96
    \ contained


syntax region gaussianRouteCommandRegion96
    \ matchgroup=gaussianRouteCommand
    \ start="W1BD=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg96
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg96 Identifier


syntax match gaussianRouteCommand "\<W1RO\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg97
    \ "SP"
    \ containedin=gaussianRouteCommandRegion97
    \ contained
syntax match gaussianRouteCommandArg97
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion97
    \ contained
syntax match gaussianRouteCommandArg97
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion97
    \ contained
syntax match gaussianRouteCommandArg97
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion97
    \ contained
syntax match gaussianRouteCommandArg97
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion97
    \ contained
syntax match gaussianRouteCommandArg97
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion97
    \ contained


syntax region gaussianRouteCommandRegion97
    \ matchgroup=gaussianRouteCommand
    \ start="W1RO=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg97
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg97 Identifier


syntax match gaussianRouteCommand "\<W1U\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg98
    \ "SP"
    \ containedin=gaussianRouteCommandRegion98
    \ contained
syntax match gaussianRouteCommandArg98
    \ "NoOpt"
    \ containedin=gaussianRouteCommandRegion98
    \ contained
syntax match gaussianRouteCommandArg98
    \ "ReadAmplitudes"
    \ containedin=gaussianRouteCommandRegion98
    \ contained
syntax match gaussianRouteCommandArg98
    \ "SaveAmplitudes"
    \ containedin=gaussianRouteCommandRegion98
    \ contained
syntax match gaussianRouteCommandArg98
    \ "Restart"
    \ containedin=gaussianRouteCommandRegion98
    \ contained
syntax match gaussianRouteCommandArg98
    \ "ReadIsotopes"
    \ containedin=gaussianRouteCommandRegion98
    \ contained


syntax region gaussianRouteCommandRegion98
    \ matchgroup=gaussianRouteCommand
    \ start="W1U=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg98
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg98 Identifier


syntax match gaussianRouteCommand "\<Window\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg99
    \ "FC"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "FreezeNobleGasCore"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "FreezeInnerNobleGasCore"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "FreezeG2"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "FreezeG3"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "FreezeG4"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "Full"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "RW"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "ChkWindow"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "ListWindow"
    \ containedin=gaussianRouteCommandRegion99
    \ contained
syntax match gaussianRouteCommandArg99
    \ "Window=("
    \ containedin=gaussianRouteCommandRegion99
    \ contained


syntax region gaussianRouteCommandRegion99
    \ matchgroup=gaussianRouteCommand
    \ start="Window=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg99
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg99 Identifier


syntax match gaussianRouteCommand "\<X3LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XABRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XALYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XARevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XATPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<XAlphaVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<ZIndo\>"
    \ containedin=gaussianRouteRegion
    \ contained

syntax match gaussianRouteCommandArg100
    \ "Singlets"
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "Triplets"
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "50-50"
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "Root="
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "NStates="
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "Add="
    \ containedin=gaussianRouteCommandRegion100
    \ contained
syntax match gaussianRouteCommandArg100
    \ "Window=("
    \ containedin=gaussianRouteCommandRegion100
    \ contained


syntax region gaussianRouteCommandRegion100
    \ matchgroup=gaussianRouteCommand
    \ start="ZIndo=\?("
    \ end=")"
    \ transparent
    \ contains=gaussianRouteCommandArg100
    \ containedin=gaussianRouteRegion
    \ contained

highlight link gaussianRouteCommandArg100 Identifier


syntax match gaussianRouteCommand "\<mPW1LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPW1PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPW1PW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPW3PBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<mPWVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<tHCTH\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<tHCTHhyb\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wB97\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wB97X\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wB97XD\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhB95\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhBRC\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhKCIS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhLYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhPBE\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhPKZB\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhPL\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhPW91\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhRevTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhTPSS\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhV5LYP\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhVP86\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhVWN\>"
    \ containedin=gaussianRouteRegion
    \ contained


syntax match gaussianRouteCommand "\<wPBEhVWN5\>"
    \ containedin=gaussianRouteRegion
    \ contained




highlight link gaussianRouteCommand Keyword

syntax region gaussianRouteRegion
    \ start=/\v^\s*#/rs=e+1 end=/\v^\s*$/re=s-1
    \ transparent
    \ contains=gaussianRouteCommand



" Copyright (c) 2017, Xiaoge Su (magichp@gmail.com)
" All rights reserved.
" 
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are
" met:
" 
"     (1) Redistributions of source code must retain the above copyright
"     notice, this list of conditions and the following disclaimer.
" 
"     (2) Redistributions in binary form must reproduce the above copyright
"     notice, this list of conditions and the following disclaimer in
"     the documentation and/or other materials provided with the
"     distribution.
" 
"     (3)The name of the author may not be used to
"     endorse or promote products derived from this software without
"     specific prior written permission.
" 
" THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
" IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
" WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
" DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
" INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
" (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
" SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
" HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
" STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
" IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
" POSSIBILITY OF SUCH DAMAGE.
" 