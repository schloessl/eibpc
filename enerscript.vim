" Vim syntax file
" Language: Enerscript
" Maintainer: Stefan Betz
" Latest Revision: 27 March 2013

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword EnerscriptKeywords if then else endif and or xor hysteresis
" Functions
syn keyword EnerscriptFunctions read write event gettime settime getdate setdate
syn keyword EnerscriptFunctions gettimedate settimedate hour minute second
syn keyword EnerscriptFunctions changehour changeminute changesecond date month
syn keyword EnerscriptFunctions day dayofweek sun azimuth elevation sunrisehour
syn keyword EnerscriptFunctions sunriseminute sunsethoursunsetminute wtime htime
syn keyword EnerscriptFunctions mtime stime cwtime chtime cmtime cstime delay
syn keyword EnerscriptFunctions after cycle readflash writeflash abs acos asin
syn keyword EnerscriptFunctions atan cos ceil average exp floor log max min mod
syn keyword EnerscriptFunctions pow sqrt sin tan change convert eval systemstart
syn keyword EnerscriptFunctions random comobject sleep scene storescene callscene
syn keyword EnerscriptFunctions find stringcast stringset stringformat split size
syn keyword EnerscriptFunctions readrs232 sendrs232 address readknx readudp
syn keyword EnerscriptFunctions sendudp connecttcp closetcp readtcp sendtcp
syn keyword EnerscriptFunctions resolve sendmail button webbutton chart webchart
syn keyword EnerscriptFunctions webdisplay getslider pshifter mpshifter getpslider
syn keyword EnerscriptFunctions mbutton mbbutton mchart mpchart mpbutton pdisplay
syn keyword EnerscriptFunctions pchart pbutton setslider setpslider slider
syn keyword EnerscriptFunctions pslider page line header footer none plink link
syn keyword EnerscriptFunctions frame dframe
" Constants
syn keyword EnerscriptConstants INFO INACTIVE GREEN GREY LINE DATE CLOCK LIGHT
syn keyword EnerscriptConstants PI E HELL DUNKEL RAUF RUNTER AUF ZU NACHTMODUS
syn keyword EnerscriptConstants KOMFORT STANDBY NIGHTMODE COMFORT END EOS MONTAG
syn keyword EnerscriptConstants DIENSTAG MITTWOCH DONNERSTAG FREITAG SAMSTAG
syn keyword EnerscriptConstants SONNTAG WERKTAGS WOCHENENDE MONDAY TUESDAY
syn keyword EnerscriptConstants WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY WEEKDAY
syn keyword EnerscriptConstants WEEKEND BLINKRED BLINKBLUE ABSENT BLIND DOWN
syn keyword EnerscriptConstants EJECT FORWARD HALT ICE MAIL MINUS MONITOR NIGHT
syn keyword EnerscriptConstants PAUSE PLAY PLUS PRESENT RECORD REWIND SCENES STOP
syn keyword EnerscriptConstants SWITCH TEMPERATURE UP WEATHER WIND WINDOW ACTIVE
syn keyword EnerscriptConstants BRIGHTRED DARKRED DISPLAY INACTIVE STATE4 STATE5
syn keyword EnerscriptConstants STATE6 STATE7 STATE8 CENTERGRAF COLUMN DOTS
syn keyword EnerscriptConstants DOUBLE LEFTGRAF LINE LINEDOTS SINGLE SXY XY
syn keyword EnerscriptConstants ZOOMGRAF EibParserVersion
" Boolean
syn keyword EnerscriptBool EIN AUS ON OFF
" Comment Notes
syn keyword EnerscriptTodo TODO FIXME XXX NOTE
" Comments
syn match EnerscriptComment "//.*$" contains=EnerscriptTodo
syn region EnerscriptComment start=+/\*+ end=+\*/+ contains=EnerscriptTodo
" Section
syn match EnerscriptSection "^\[.*\]$"
" Strings
syn region EnerscriptString start=+\$+ end=+\$+
syn region EnerscriptString start=+'+ end=+'+
" GAs
syn region EnerscriptGroupAdress start=+"+ end=+"+
" Macros
syn match EnerscriptMacro "^\:begin"
syn match EnerscriptMacro "^\:info"
syn match EnerscriptMacro "^\:shortinfo"
syn match EnerscriptMacro "^\:end"
" Types
syn match EnerscriptType "[tdfsu]\d\d"

" Hilight Preferences
hi link EnerscriptKeywords Statement
hi link EnerscriptFunctions Function
hi link EnerscriptConstants Constant
hi link EnerscriptComment Comment
hi link EnerscriptString String
hi link EnerscriptNumber Number
hi link EnerscriptFloat Float
hi link EnerscriptBool Boolean
hi link EnerscriptGroupAdress String
hi link EnerscriptSection Special
hi link EnerscriptMacro Special
hi link EnerscriptType Type

" Syntax Type
let b:current_syntax = "enerscript"
