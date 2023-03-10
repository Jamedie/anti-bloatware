@echo off
set /p Y=Enter adb.exe folder path:    
cd %Y%
adb devices
pause
for %%X in (
"com.sec.android.app.samsungapps"
"com.dsi.ant.plugins.antplus"
"com.dsi.ant.service.socket"
"com.sec.spp.push"
"com.samsung.android.scloud"
"com.samsung.android.app.dressroom"
"com.samsung.android.bio.face.service"
"com.samsung.android.bixby.agent"
"com.samsung.android.bixby.es.globalaction"
"com.samsung.android.bixby.wakeup"
"com.samsung.android.bixby.plmsync"
"com.samsung.android.app.spage"
"com.samsung.android.visionintelligence"
"com.samsung.android.bixby.voiceinput"
"com.samsung.systemui.bixby"
"com.samsung.android.bixby.agent.dummy"
"com.ebay.carrier"
"com.sec.android.widgetapp.easymodecontactswidget"
"com.sec.android.easyMover.Agent"
"com.samsung.android.game.gamehome"
"com.sec.android.app.desktoplauncher"
"com.samsung.android.widgetapp.yahooedge.finance"
"de.axelspringer.yana.zeropage"
"com.samsung.android.drivelink.stub"
"com.samsung.android.widgetapp.yahooedge.sport"
"com.android.hotwordenrollment.okgoogle"
"com.samsung.knox.securefolder"
"com.samsung.android.app.talkback"
"com.samsung.android.game.gametools"
"com.samsung.android.app.reminder"
"com.sec.android.desktopmode.uiservice"
"com.samsung.android.app.mirrorlink"
"com.google.android.tts"
"com.google.android.syncadapters.calendar"
"com.sec.android.service.health"
"com.enhance.gameservice"
"com.google.vr.vrcore"
"com.samsung.android.samsungpassautofill"
"com.sec.android.widgetapp.webmanual"
"com.microsoft.office.excel"
"com.microsoft.office.word"
"com.microsoft.office.powerpoint"
"com.microsoft.skydrive"
"com.samsung.knox.securefolder"
"com.facebook.services"
"com.facebook.katana"
"com.facebook.system"
"com.facebook.appmanager"
"com.linkedin.android"
"com.samsung.android.app.sbrowseredge"
"com.samsung.android.provider.stickerprovider"
"com.samsung.android.stickercenter"
"com.cnn.mobile.android.phone.edgepanel"
"com.samsung.android.app.watchmanagerstub" ) do (
    adb shell pm uninstall %%X
    adb shell pm uninstall --user 0 %%X
)
pause