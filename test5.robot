*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}         061972513N019007  # Ganti dengan ID perangkat/emulator Anda
${APP_PACKAGE}         com.instagram.android
${APP_ACTIVITY}        com.instagram.android.activity.MainTabActivity
${APPIUM_SERVER}       http://127.0.0.1:4723

*** Test Cases ***
Open Instagram App
    [Documentation]    Test to open Instagram app on Android.
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=UiAutomator2
    Sleep    10s
    # Add more actions or assertions here if needed
    Close Application

