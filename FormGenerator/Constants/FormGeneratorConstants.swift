//
//  FormGeneratorConstants.swift
//  FormGenerator
//
//  Created by Akshay on 19/08/22.
//

import Foundation


struct FormSectionOne {
    static let title1 = "Geben Sie die Tankstellennummer ein"
    static let subtitle1 = "nachfolgende Felder werden automatisch eingelesen"
    static let title2 = "Strasse"
    static let subtitle2 = "Bitte prüfen Sie ob die Strasse korrekt ist"
    static let title3 = "Ort"
    static let subtitle3 = "Bitte prüfen Sie ob der Ort korrekt ist"
    
    static let title4 = "ARAL ADVERTISING ELEMENT TYPE "
    static let subtitle4 = "Auswahl des zu inspizierenden Werbeelementes"
    
    static let title5 = "Werbeelement Anzahl"
    static let subtitle5 = "angeben wenn mehrere Elemente gleichen Typs vorhanden"
    
    static let title6 = "Datum"
    static let subtitle6 = "Datum der Inspektion"
    
}


enum FontName : String {
    case regular = "Poppins-Regular"
    case light = "Poppins-Light"
    case bold = "Poppins-Bold"
    case medium = "Poppins-Medium"
    case SemiBold = "Poppins-SemiBold"
}
