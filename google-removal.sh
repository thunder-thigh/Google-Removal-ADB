#!/usr/bin/env bash
# File runs on bash environment

# Installs F-droid

mkdir ./RandomFolderdgh
curl -o ./RandomFolderdgh/Fdroidtemp.apk https://f-droid.org/F-Droid.apk

if
  adb shell pm list packages | grep -q org.fdroid.fdroid
then
  echo 'F-droid already installed'
else
  echo 'Installing F-droid via adb streamed install'
  adb install ./RandomFolderdgh/Fdroidtemp.apk
  echo 'F-droid installed'
fi

# Installs a second launcher (optional)

#echo 'Installing a second launcher'
# curl -o ./RandomFolderdgh/mlauncher.apk https://f-droid.org/repo/app.mlauncher_168.apk
# adb install ./RandomFolderdgh app.mlauncher_168.apk

# Removes Google Packages

adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.nbu.files 
adb shell pm uninstall -k --user 0 com.google.android.googlequickserachbox
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle 
adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant
adb shell pm uninstall -k --user 0 com.google.ar.lens
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.tvlauncher
adb shell pm uninstall -k --user 0 com.google.android.tvrecommendations 
adb shell pm uninstall -k --user 0 com.google.android.wearable.assistant
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.wearable.weather
adb shell pm uninstall -k --user 0 com.google.android.wearable.healthservices
adb shell pm uninstall -k --user 0 com.google.android.apps.healthdata
adb shell pm uninstall -k --user 0 com.google.ar.core
adb shell pm uninstall -k --user 0 com.google.android.play.games
adb shell pm uninstall -k --user 0 com.google.android.contacts
adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing
adb shell pm uninstall -k --user 0 com.google.android.apps.photosgo
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.apps.adwords
adb shell pm uninstall -k --user 0 com.google.android.apps.chromecast.app
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.apps.photos 
adb shell pm uninstall -k --user 0 com.google.android.apps.podcasts
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.apps.tasks
adb shell pm uninstall -k --user 0 com.google.android.apps.translate
adb shell pm uninstall -k --user 0 com.google.android.apps.helprtc
adb shell pm uninstall -k --user 0 com.google.android.apps.giant
adb shell pm uninstall -k --user 0 com.google.android.apps.fitness 
adb shell pm uninstall -k --user 0 com.google.android.apps.health.research.studies
adb shell pm uninstall -k --user 0 com.google.android.apps.kids.familylink
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
adb shell pm uninstall -k --user 0 com.google.android.apps.ads.homeservices 	
adb shell pm uninstall -k --user 0 com.google.android.apps.messaging 
adb shell pm uninstall -k --user 0 
adb shell pm uninstall -k --user 0 
adb shell pm uninstall -k --user 0 
# Google office apps
#
adb shell pm uninstall -k --user 0 com.google.android.apps.blogger
adb shell pm uninstall -k --user 0 com.google.android.calculator #Use Calculator++ (Foss + more features + faster)
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.docs
adb shell pm uninstall -k --user 0 com.google.android.keep
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets 
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.slides
#
# Re-installs some google packages
#
if
  adb shell pm list packages | grep -q com.google.android.ims
then
echo''
else
  echo 'Installing Google Play Carrier'
  adb shell cmd package install-existing --user 0 com.google.android.ims
  echo 'Google Play Carrier installed'
fi


if
  adb shell pm list packages | grep -q com.google.android.gms
then
echo''
else
  echo 'Installing Google Play Services'
  adb shell cmd package install-existing --user 0 com.google.android.gms
  echo 'Google Play Services installed'
fi


#Re-install Google Pixel Launcher
#adb shell cmd package install-existing --user 0 com.google.android.apps.nexuslauncher


#Post Script Cleanup
rm -r ./RandomFolderdgh

echo 'Thanks for using me!'
