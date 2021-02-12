*** Settings ***
Library    RobotFrameworkPercy
Library    SeleniumLibrary


*** Keywords ***
Initialize
    Open Browser              url    Chrome

    # initialize percy
    Percy Initialize Build    access_token=&{Token}

Take Snapshot
    # take snapshot
    Percy Snapshot    snapshot name

Teardown
    # finalize and push to percy server
    Percy Finalize Build

*** Test Case ***
Test only
  Initialize
  Take Snapshot
  Teardown