//
//  CalculationMethod.swift
//  SalatiSalahi
//
//  Created by Naif Alrashed on 14/07/2019.
//  Copyright © 2019 Naif Alrashed. All rights reserved.
//

import Adhan

enum RegionCalculationMethod {
    
    // Muslim World League
    case muslimWorldLeague
    
    // Egyptian General Authority of Survey
    case egyptian
    
    // University of Islamic Sciences, Karachi
    case karachi
    
    // Umm al-Qura University, Makkah
    case ummAlQura
    
    // The Gulf Region
    case dubai
    
    // Moonsighting Committee
    case moonsightingCommittee
    
    // ISNA
    case northAmerica
    
    // Kuwait
    case kuwait
    
    // Qatar
    case qatar
    
    // Singapore
    case singapore
    
    // Institute of Geophysics, University of Tehran
    case tehran
    
    var params: CalculationParameters {
        switch self {
        case .muslimWorldLeague:
            return CalculationMethod.muslimWorldLeague.params
        case .egyptian:
            return CalculationMethod.egyptian.params
        case .karachi:
            return CalculationMethod.karachi.params
        case .ummAlQura:
            return CalculationMethod.ummAlQura.params
        case .dubai:
            return CalculationMethod.dubai.params
        case .moonsightingCommittee:
            return CalculationMethod.moonsightingCommittee.params
        case .northAmerica:
            return CalculationMethod.northAmerica.params
        case .kuwait:
            return CalculationMethod.kuwait.params
        case .qatar:
            return CalculationMethod.qatar.params
        case .singapore:
            return CalculationMethod.singapore.params
        case .tehran:
            return CalculationMethod.tehran.params
        }
    }
}
