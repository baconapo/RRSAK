@echo off
cd /D "%~dp0"
del Reshade.ini /s /f /q
timeout 1

set ini="Reshade.ini"
echo [DEPTH] >> %ini%
echo DepthCopyAtClearIndex=0 >> %ini%
echo DepthCopyBeforeClears=0 >> %ini%
echo UseAspectRatioHeuristics=1 >> %ini%
echo. >> %ini%
echo [GENERAL] >> %ini%
echo EffectSearchPaths=%localappdata%\Roshade\reshade-shaders\Shaders >> %ini%
echo IntermediateCachePath=%localappdata%\Temp\ReShade >> %ini%
echo NoDebugInfo=0 >> %ini%
echo NoEffectCache=0 >> %ini%
echo NoReloadOnInit=0 >> %ini%
echo NoReloadOnInitForNonVR=0 >> %ini%
echo PerformanceMode=0 >> %ini%
echo PreprocessorDefinitions= >> %ini%
echo PresetTransitionDelay=1000 >> %ini%
echo PresetTransitionDuration=1000 >> %ini%
echo SkipLoadingDisabledEffects=0 >> %ini%
echo TextureSearchPaths=%localappdata%\Roshade\reshade-shaders\Textures >> %ini%
echo TutorialProgress=4 >> %ini%
echo PresetPath=%localappdata%\Roshade\Presets\RRSAK.ini >> %ini%
echo. >> %ini%
echo [INPUT] >> %ini%
echo ForceShortcutModifiers=1 >> %ini%
echo InputProcessing=2 >> %ini%
echo KeyEffects=119,0,0,0 >> %ini%
echo KeyMenu=118,0,0,0 >> %ini%
echo KeyNextPreset=33,0,0,0 >> %ini%
echo KeyOverlay=118,0,0,0 >> %ini%
echo KeyPerformanceMode=0,0,0,0 >> %ini%
echo KeyPreviousPreset=34,0,0,0 >> %ini%
echo KeyReload=0,0,0,0 >> %ini%
echo KeyScreenshot=44,0,0,0 >> %ini%
echo. >> %ini%
echo [OVERLAY] >> %ini%
echo ClockFormat=0 >> %ini%
echo FPSPosition=1 >> %ini%
echo NoFontScaling=0 >> %ini%
echo SaveWindowState=0 >> %ini%
echo ShowClock=0 >> %ini%
echo ShowForceLoadEffectsButton=1 >> %ini%
echo ShowFPS=0 >> %ini%
echo ShowFrameTime=0 >> %ini%
echo ShowScreenshotMessage=1 >> %ini%
echo TutorialProgress=4 >> %ini%
echo VariableListHeight=300.000000 >> %ini%
echo VariableListUseTabs=0 >> %ini%
echo. >> %ini%
echo [SCREENSHOT] >> %ini%
echo ClearAlpha=1 >> %ini%
echo FileFormat=1 >> %ini%
echo FileNaming=%AppName% %Date% %Time% >> %ini%
echo JPEGQuality=90 >> %ini%
echo PostSaveCommand= >> %ini%
echo PostSaveCommandArguments="%TargetPath%" >> %ini%
echo PostSaveCommandNoWindow=0 >> %ini%
echo PostSaveCommandWorkingDirectory=%localappdata%\Roblox\Versions\version-91f017face444efd >> %ini%
echo SaveBeforeShot=0 >> %ini%
echo SaveOverlayShot=0 >> %ini%
echo SavePath=%localappdata%\Roshade\Pictures >> %ini%
echo SavePresetFile=0 >> %ini%
echo. >> %ini%
echo [STYLE] >> %ini%
echo Alpha=1.000000 >> %ini%
echo Border=0.862745,0.862745,0.862745,0.300000 >> %ini%
echo BorderShadow=0.000000,0.000000,0.000000,0.000000 >> %ini%
echo Button=0.164706,0.443137,1.000000,0.440000 >> %ini%
echo ButtonActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo ButtonHovered=0.164706,0.443137,1.000000,0.860000 >> %ini%
echo CheckMark=0.164706,0.443137,1.000000,0.800000 >> %ini%
echo ChildBg=0.171271,0.159916,0.163701,0.000000 >> %ini%
echo ChildRounding=2.000000 >> %ini%
echo ColFPSText=1.000000,1.000000,0.784314,1.000000 >> %ini%
echo DockingEmptyBg=0.200000,0.200000,0.200000,1.000000 >> %ini%
echo DockingPreview=0.164706,0.443137,1.000000,0.532000 >> %ini%
echo DragDropTarget=1.000000,1.000000,0.000000,0.900000 >> %ini%
echo EditorFont=%localappdata%\Roshade\Fonts\FiraCode-VariableFont_wght.ttf >> %ini%
echo EditorFontSize=17 >> %ini%
echo EditorStyleIndex=0 >> %ini%
echo Font=%localappdata%\Roshade\Fonts\OpenSans-SemiBold.ttf >> %ini%
echo FontSize=15 >> %ini%
echo FPSScale=1.000000 >> %ini%
echo FrameBg=0.171271,0.159916,0.163701,1.000000 >> %ini%
echo FrameBgActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo FrameBgHovered=0.164706,0.443137,1.000000,0.680000 >> %ini%
echo FrameRounding=2.000000 >> %ini%
echo GrabRounding=2.000000 >> %ini%
echo Header=0.164706,0.443137,1.000000,0.760000 >> %ini%
echo HeaderActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo HeaderHovered=0.164706,0.443137,1.000000,0.860000 >> %ini%
echo MenuBarBg=0.171271,0.159916,0.163701,0.570000 >> %ini%
echo ModalWindowDimBg=0.800000,0.800000,0.800000,0.350000 >> %ini%
echo NavHighlight=0.260000,0.590000,0.980000,1.000000 >> %ini%
echo NavWindowingDimBg=0.800000,0.800000,0.800000,0.200000 >> %ini%
echo NavWindowingHighlight=1.000000,1.000000,1.000000,0.700000 >> %ini%
echo PlotHistogram=0.862745,0.862745,0.862745,0.630000 >> %ini%
echo PlotHistogramHovered=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo PlotLines=0.862745,0.862745,0.862745,0.630000 >> %ini%
echo PlotLinesHovered=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo PopupBg=0.133333,0.121569,0.125490,0.920000 >> %ini%
echo PopupRounding=2.000000 >> %ini%
echo ResizeGrip=0.164706,0.443137,1.000000,0.200000 >> %ini%
echo ResizeGripActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo ResizeGripHovered=0.164706,0.443137,1.000000,0.780000 >> %ini%
echo ScrollbarBg=0.171271,0.159916,0.163701,1.000000 >> %ini%
echo ScrollbarGrab=0.164706,0.443137,1.000000,0.310000 >> %ini%
echo ScrollbarGrabActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo ScrollbarGrabHovered=0.164706,0.443137,1.000000,0.780000 >> %ini%
echo ScrollbarRounding=2.000000 >> %ini%
echo Separator=0.862745,0.862745,0.862745,0.320000 >> %ini%
echo SeparatorActive=0.862745,0.862745,0.862745,1.000000 >> %ini%
echo SeparatorHovered=0.862745,0.862745,0.862745,0.780000 >> %ini%
echo SliderGrab=0.164706,0.443137,1.000000,0.240000 >> %ini%
echo SliderGrabActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo StyleIndex=3 >> %ini%
echo Tab=0.164706,0.443137,1.000000,0.440000 >> %ini%
echo TabActive=0.164706,0.443137,1.000000,1.000000 >> %ini%
echo TabHovered=0.164706,0.443137,1.000000,0.860000 >> %ini%
echo TabRounding=2.000000 >> %ini%
echo TabUnfocused=0.164706,0.443137,1.000000,0.448000 >> %ini%
echo TabUnfocusedActive=0.164706,0.443137,1.000000,0.780000 >> %ini%
echo Text=0.862745,0.862745,0.862745,1.000000 >> %ini%
echo TextDisabled=0.862745,0.862745,0.862745,0.580000 >> %ini%
echo TextSelectedBg=0.164706,0.443137,1.000000,0.430000 >> %ini%
echo TitleBg=0.164706,0.443137,1.000000,0.450000 >> %ini%
echo TitleBgActive=0.164706,0.443137,1.000000,0.580000 >> %ini%
echo TitleBgCollapsed=0.164706,0.443137,1.000000,0.350000 >> %ini%
echo WindowBg=0.133333,0.121569,0.125490,1.000000 >> %ini%
echo WindowRounding=2.000000 >> %ini%
exit