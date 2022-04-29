##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Pong
ConfigurationName      :=Debug
WorkspacePath          :=E:/MY_OWN_C++_PROJECTS/Pong/Pong
ProjectPath            :=E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=abdo
Date                   :=16/09/2020
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Pong.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)C:\SFML-2.5.1\include\ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-audio" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:\SFML-2.5.1\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Bat.cpp$(ObjectSuffix) $(IntermediateDirectory)/Update.cpp$(ObjectSuffix) $(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) $(IntermediateDirectory)/Input.cpp$(ObjectSuffix) $(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) $(IntermediateDirectory)/Ball.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(ConfigurationName)"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(ConfigurationName)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Bat.cpp$(ObjectSuffix): Bat.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Bat.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Bat.cpp$(DependSuffix) -MM Bat.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Bat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bat.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Bat.cpp$(PreprocessSuffix): Bat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Bat.cpp$(PreprocessSuffix) Bat.cpp

$(IntermediateDirectory)/Update.cpp$(ObjectSuffix): Update.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Update.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Update.cpp$(DependSuffix) -MM Update.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Update.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Update.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Update.cpp$(PreprocessSuffix): Update.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Update.cpp$(PreprocessSuffix) Update.cpp

$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix): Draw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Draw.cpp$(DependSuffix) -MM Draw.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Draw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Draw.cpp$(PreprocessSuffix): Draw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Draw.cpp$(PreprocessSuffix) Draw.cpp

$(IntermediateDirectory)/Input.cpp$(ObjectSuffix): Input.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Input.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Input.cpp$(DependSuffix) -MM Input.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Input.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Input.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Input.cpp$(PreprocessSuffix): Input.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Input.cpp$(PreprocessSuffix) Input.cpp

$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix): Engine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Engine.cpp$(DependSuffix) -MM Engine.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Engine.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Engine.cpp$(PreprocessSuffix): Engine.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Engine.cpp$(PreprocessSuffix) Engine.cpp

$(IntermediateDirectory)/Ball.cpp$(ObjectSuffix): Ball.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Ball.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Ball.cpp$(DependSuffix) -MM Ball.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/MY_OWN_C++_PROJECTS/Pong/Pong/Pong/Ball.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Ball.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Ball.cpp$(PreprocessSuffix): Ball.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Ball.cpp$(PreprocessSuffix) Ball.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


