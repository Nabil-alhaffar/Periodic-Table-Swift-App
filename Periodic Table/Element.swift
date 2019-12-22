//
//  Elements.swift
//  Periodic Table
//
//  Created by Nabil Haffar on 9/26/19.
//  Copyright © 2019 Nabil Haffar. All rights reserved.
//
class Elements : Codable{
    
    let elements: [Element]
    init(elements : [Element]) {
        self.elements = elements
    }
}
class Element: Codable {

    var name: String
    var appearance: String?
    var atomic_mass : Double
    var boil : Double?
    var category: String?
    var color: String?
    var density :Double?
    var discovered_by: String?
    var melt: Double?
    var molar_heat: Double?
    var named_by: String?
    var number: Int?
    var period: Int?
    var phase: String?
    var source: String?
    var spectral_img: String?
    var summary : String?
    var symbol: String?
    var xpos: Int?
    var ypos: Int?
    var shells: [Int]?
    var electron_configuration: String?
    var electron_affinity: Double?
    var electronegativity_pauling: Double?
    var ionization_energies:[Double]?
    
    internal init(name: String, appearance: String?, atomic_mass: Double, boil: Double?, category: String?, color: String?, density: Double?, discovered_by: String?, melt: Double?, molar_heat: Double?, named_by: String?, number: Int?, period: Int?, phase: String?, source: String, spectral_image: String?, summary: String, symbol: String, xpos: Int?, ypos: Int?, shells: [Int]?, electron_configuration: String?, electron_affinity: Double?, electronegativity_pauling: Double?, ionization_energies: [Double]?) {
        self.name = name
        self.appearance = appearance
        self.atomic_mass = atomic_mass
        self.boil = boil
        self.category = category
        self.color = color
        self.density = density
        self.discovered_by = discovered_by
        self.melt = melt
        self.molar_heat = molar_heat
        self.named_by = named_by
        self.number = number
        self.period = period
        self.phase = phase
        self.source = source
        self.spectral_img = spectral_image
        self.summary = summary
        self.symbol = symbol
        self.xpos = xpos
        self.ypos = ypos
        self.shells = shells
        self.electron_configuration = electron_configuration
        self.electron_affinity = electron_affinity
        self.electronegativity_pauling = electronegativity_pauling
        self.ionization_energies = ionization_energies
    }  
}
