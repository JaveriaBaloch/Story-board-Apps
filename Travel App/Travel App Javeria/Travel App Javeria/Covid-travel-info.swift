//
//  Covid-travel-info.swift
//  Travel App Javeria
//
//  Created by Javeria on 27/02/2022.
//

import Foundation
var icelandCovidRestrictions = "You should have followings:\n+\tPCR test taken in the last 72 hours\n+\tRapid antigen test taken in the last 48 hours\n+\tVaccination certificate showing the last dose was given at least 14 days before arrivaln+\tMedical certificate showing recovery in the last 6 months\n+\tNeed to quarantine"
var indiaCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination\n+\ta Digital COVID Certificate (DCC) based on proof of recovery or a negative test result."
var netherlandsCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination\n+\ta Digital COVID Certificate (DCC) based on proof of recovery or a negative test result."
var mexicoCovidRestrictions = "Only proof of vaccination is required"
var brazilCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tDigital COVID Certificate (DCC) based on proof of recovery \n+\ta negative test result at 72 hours before your entry or within 24 hours of your entry."
var uruguayCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tDigital COVID Certificate (DCC) based on proof of recovery \n+\ta negative test result at 72 hours before your entry or within 24 hours of your entry and a health declearation form."
var iranCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination or a negative test result at 72 hours before your entry."
var finlandCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tDigital COVID Certificate (DCC) based on proof of recovery a negative test result"
var omanCovidRestrictions = "You should have followings:\n+\tPassengers can submit a negative COVID-19 PCR test taken at most 96 hours before arrival if arriving on a flight that takes 8 hours or more (including transit) \n+\tor Proof of vaccination"
var nepalCovidRestrictions = "You should have followings:\n+\tPassengers can submit a negative COVID-19 PCR test taken before arrival or Proof of vaccination"
var maldivesCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tor a Digital COVID Certificate (DCC) based on proof of recovery \n+\tor a negative test result at 96 hours before your entry and a health declearation form."
var egyptCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tor a Digital COVID Certificate (DCC) based on proof of recovery \n+\tor a negative test result at 96 hours before  your entry and a health declearation form."
var indonesiaCovidRestrictions = "You should have followings:\n+\tYou will need to show proof of vaccination \n+\tor a Digital COVID Certificate (DCC) based on proof of recovery \n+\tor a negative test of your entry and a health declearation form."
var turkeyCovidRestrictions = "You should have followings:+\tPCR test taken in the last 72 hours\n+\tRapid antigen test taken in the last 48 hours\n+\tVaccination certificate showing the last dose was given at least 14 days before arrivaln+\tMedical certificate showing recovery in the last 6 months"
var newZealandCovidRestrictions = "You should have followings:+\tPCR test taken in the last 72 hours\n+\tRapid antigen test taken in the last 48 hours\n+\tVaccination certificate showing the last dose was given at least 14 days before arrivaln+\tMedical certificate showing recovery in the last 6 months\n+\tNeed to quarantine"
var canadaCovidRestrictions = "You should have followings:\n+\tPCR test taken in the last 72 hours\n+\tRapid antigen test taken in the last 48 hours\n+\tVaccination certificate showing the last dose was given at least 14 days before arrivaln+\tMedical certificate showing recovery in the last 6 months\n+\tNeed to quarantine"
enum CountryMatch: String{
    case iceland = "iceland", Netherlands = "Netherlands", India = "India", Mexico = "Mexico", Brazil = "Brazil", Uruguay = "Uruguay", Iran = "Iran", Finland = "Finland", Oman = "Oman", Nepal = "Nepal", Maldives  = "Maldives", Egypt = "Egypt", Indonesia = "Indonesia", Turkey = "Turkey", NewZealend = "New Zealend", Canada = "Canada"
    var description: String {
                return String(describing: self)
            }
}
var covidEntryRequirements: String = ""
func covidStatement(){
    
    switch countryName{
    case CountryMatch.Turkey.description:
        covidEntryRequirements = turkeyCovidRestrictions
        answerMap = "Turkey.jpeg"
    case CountryMatch.Iran.description:
        covidEntryRequirements = iranCovidRestrictions
        answerMap = "Iran.jpeg"
    case CountryMatch.Netherlands.description:
     covidEntryRequirements = netherlandsCovidRestrictions
        answerMap = "Netherlands.jpeg"
    case CountryMatch.India.description:
        covidEntryRequirements = indiaCovidRestrictions
        answerMap = "India.jpeg"
    case CountryMatch.Mexico.description:
        covidEntryRequirements = mexicoCovidRestrictions
        answerMap = "Mexico.jpeg"
    case CountryMatch.Oman.description:
        covidEntryRequirements = omanCovidRestrictions
        answerMap = "Oman.jpeg"
    case CountryMatch.Canada.description:
     covidEntryRequirements = canadaCovidRestrictions
        answerMap = "Canada.jpeg"
    case CountryMatch.Maldives.description:
        covidEntryRequirements = maldivesCovidRestrictions
        answerMap = "Maldives.jpeg"
    case CountryMatch.Uruguay.description:
        covidEntryRequirements = uruguayCovidRestrictions
        answerMap = "Uruguay.jpeg"
    case CountryMatch.Finland.description:
        covidEntryRequirements = finlandCovidRestrictions
        answerMap = "Finland.jpeg"
    case CountryMatch.Nepal.description:
     covidEntryRequirements = nepalCovidRestrictions
        answerMap = "Nepal.jpeg"
    case CountryMatch.Egypt.description:
        covidEntryRequirements = egyptCovidRestrictions
        answerMap = "Egypt.jpeg"
    case CountryMatch.Indonesia.description:
        covidEntryRequirements = indonesiaCovidRestrictions
        answerMap = "Indonesia.jpeg"
    case CountryMatch.NewZealend.description:
        covidEntryRequirements = newZealandCovidRestrictions
        answerMap = "NewZealend.jpeg"
    case CountryMatch.Brazil.description:
     covidEntryRequirements = brazilCovidRestrictions
        answerMap = "Brazil.jpeg"
    default:
        break
    }
}

