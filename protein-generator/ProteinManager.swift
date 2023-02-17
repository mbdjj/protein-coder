//
//  ProteinManager.swift
//  protein-generator
//
//  Created by Marcin Bartminski on 17/02/2023.
//

import SwiftUI

struct ProteinManager {
    
    static let shared = ProteinManager()
    
    let aminoAcids: [String: (String, Color)] = [
        "UUU": ("fenyloalanina", Color.yellow),
        "UUC": ("fenyloalanina", Color.yellow),
        "UUA": ("leucyna", Color.yellow),
        "UUG": ("leucyna", Color.yellow),
        
        "UCU": ("seryna", Color.green),
        "UCC": ("seryna", Color.green),
        "UCA": ("seryna", Color.green),
        "UCG": ("seryna", Color.green),
        
        "UAU": ("tyrozyna", Color.green),
        "UAC": ("tyrozyna", Color.green),
        "UAA": ("STOP", Color.gray),
        "UAG": ("STOP", Color.gray),
        
        "UGU": ("cysteina", Color.green),
        "UGC": ("cysteina", Color.green),
        "UGA": ("STOP", Color.gray),
        "UGG": ("tryptofan", Color.yellow),
        
        
        
        "CUU": ("leucyna", Color.yellow),
        "CUC": ("leucyna", Color.yellow),
        "CUA": ("leucyna", Color.yellow),
        "CUG": ("leucyna", Color.yellow),
        
        "CCU": ("prolina", Color.yellow),
        "CCC": ("prolina", Color.yellow),
        "CCA": ("prolina", Color.yellow),
        "CCG": ("prolina", Color.yellow),
        
        "CAU": ("histydyna", Color.blue),
        "CAC": ("histydyna", Color.blue),
        "CAA": ("glutamina", Color.green),
        "CAG": ("glutamina", Color.green),
        
        "CGU": ("arginina", Color.blue),
        "CGC": ("arginina", Color.blue),
        "CGA": ("arginina", Color.blue),
        "CGG": ("arginina", Color.blue),
        
        
        
        "AUU": ("izoleucyna", Color.yellow),
        "AUC": ("izoleucyna", Color.yellow),
        "AUA": ("izoleucyna", Color.yellow),
        "AUG": ("metionina (START)", Color.cyan),
        
        "ACU": ("treonina", Color.green),
        "ACC": ("treonina", Color.green),
        "ACA": ("treonina", Color.green),
        "ACG": ("treonina", Color.green),
        
        "AAU": ("asparagina", Color.green),
        "AAC": ("asparagina", Color.green),
        "AAA": ("lizyna", Color.blue),
        "AAG": ("lizyna", Color.blue),
        
        "AGU": ("seryna", Color.green),
        "AGC": ("seryna", Color.green),
        "AGA": ("arginina", Color.blue),
        "AGG": ("arginina", Color.blue),
        
        
        
        "GUU": ("walina", Color.yellow),
        "GUC": ("walina", Color.yellow),
        "GUA": ("walina", Color.yellow),
        "GUG": ("walina", Color.yellow),
        
        "GCU": ("alanina", Color.yellow),
        "GCC": ("alanina", Color.yellow),
        "GCA": ("alanina", Color.yellow),
        "GCG": ("alanina", Color.yellow),
        
        "GAU": ("kwas asparaginowy", Color.pink),
        "GAC": ("kwas asparaginowy", Color.pink),
        "GAA": ("kwas glutaminowy", Color.pink),
        "GAG": ("kwas glutaminowy", Color.pink),
        
        "GGU": ("glicyna", Color.yellow),
        "GGC": ("glicyna", Color.yellow),
        "GGA": ("glicyna", Color.yellow),
        "GGG": ("glicyna", Color.yellow),
    ]
    
}

struct AminoAcid: Identifiable {
    let id = UUID()
    
    let code: String
    var name: String { ProteinManager.shared.aminoAcids[code]?.0 ?? "" }
    
    var color: Color { ProteinManager.shared.aminoAcids[code]?.1 ?? .black }
}
