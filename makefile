###############################################################
#  Define type of binary, used packages, project defines and  #
#  include paths if needed                                    #
###############################################################

ISPACKAGE=FALSE
DEFINES=$(DBVER)
INCLUDEPATH=$(RO)\Source
UNITINCLUDEPATH=$(SvCom)\RunTime;$(SvCom)\Experts;$(SvCom)\DesignTime;$(DevExpLib);$(RO)\Source;$(RO)\Source\RODEC;$(RO)\Source\CodeGen;$(RO)\Source\ZLib;$(SDAC)\source;$(ODAC)\source;$(SDACLIB);$(ODACLib);..\School;

###############################################################
!include ..\local_rules.inc
!include ..\make_settings.inc
###############################################################

PROJECTS=ClientSchool.res ClientSchool.exe
default:: $(PROJECTS)

###############################################################

!if $(ARCHITECTURE)==X32
ClientSchool.res:: res\ClientSchool.rc
   $(INCBLD)
   $(RCC) -foClientSchool.res
!endif

!if $(ARCHITECTURE)==X64
ClientSchool.res:: res\ClientSchoolx64.rc
   $(INCBLD)
   $(RCC) -foClientSchool.res
!endif


ClientSchool.exe:: ClientSchool.dpr
   $(BACKUPDOF)
   $(BACKUPCFG)
   $(MESSAGE)
   $(DCC)
   $(CHECKIN)
   $(RESTOREDOF)
   $(RESTORECFG)

###############################################################

