*** Settings ***
Resource    ../Utils/resource.robot


*** Keywords ***

Gerar Dados Fake
    ${FIRSTNAME_FAKE}=    FakerLibrary.First Name
    ${LASTNAME_FAKE}=     FakerLibrary.Last Name
    ${ADDRESS_FAKE}=      FakerLibrary.Address
    ${CITY_FAKE}=         FakerLibrary.City
    ${STATE_FAKE}=        FakerLibrary.State
    ${ZIPCODE_FAKE}=      FakerLibrary.Postcode
    ${PHONE_FAKE}=        FakerLibrary.Phone Number
    ${SSN_FAKE}=          FakerLibrary.SSN
    ${USERNAME_FAKE}=     FakerLibrary.User Name
    ${PASSWORD_FAKE}=     FakerLibrary.Password
    
    RETURN    ${FIRSTNAME_FAKE}    ${LASTNAME_FAKE}    ${ADDRESS_FAKE}    ${CITY_FAKE}    ${STATE_FAKE}    ${ZIPCODE_FAKE}    ${PHONE_FAKE}    ${SSN_FAKE}    ${USERNAME_FAKE}    ${PASSWORD_FAKE}
    