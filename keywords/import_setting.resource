*** Settings ***
Library    String
Library    BuiltIn 
Library    SeleniumLibrary    

Resource         ..${/}config.resource

Resource         general.resource
Resource         shopping.resource

Resource         ..${/}locators${/}bag.resource
Resource         ..${/}locators${/}dresses.resource
Resource         ..${/}locators${/}home.resource
Resource         ..${/}locators${/}topbar.resource
