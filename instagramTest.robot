*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}         061972513N019007
${APP_PACKAGE}         com.instagram.android
${APP_ACTIVITY}        com.instagram.android/.activity.MainTabActivity
${APPIUM_SERVER}       http://127.0.0.1:4723


# Ganti username dan password dengan kredensial yang valid
${INSTAGRAM_USERNAME} irfan
${INSTAGRAM_PASSWORD} 12345678

*** Test Cases ***
Test Instagram Login
    [Documentation]    Test to open Instagram and perform login.
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=UiAutomator2
    Sleep    5s
    # Tap on login button if required
    # Click Element    id=com.instagram.android:id/button_login
    Input Text    id=com.instagram.android:id/login_username    ${INSTAGRAM_USERNAME}
    Input Text    id=com.instagram.android:id/login_password    ${INSTAGRAM_PASSWORD}
    Click Element    id=com.instagram.android:id/button_login
    Sleep    10s
    # Verify login success by checking element presence or text
    Element Should Be Present    id=com.instagram.android:id/home_activity
    [Teardown]    Close Application


