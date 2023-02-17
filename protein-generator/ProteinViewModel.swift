//
//  ProteinViewModel.swift
//  protein-generator
//
//  Created by Marcin Bartminski on 17/02/2023.
//

import SwiftUI

class ProteinViewModel: ObservableObject {
    
    @Published var proteinCodeText = "AUG"
    
    var proteinCodeArray: [String] {
        let subSequence = proteinCodeText.subSequences(of: 3)
        return subSequence.map {
            "\($0)"
        }
    }
    
    var protein: [AminoAcid] { proteinCodeArray.map { AminoAcid(code: $0) } }
    
    var names: String {
        let acidNames = protein.map { $0.name }
        
        return ListFormatter.localizedString(byJoining: acidNames)
    }
}

extension Collection {
    func unfoldSubSequences(limitedTo maxLength: Int) -> UnfoldSequence<SubSequence,Index> {
        sequence(state: startIndex) { start in
            guard start < self.endIndex else { return nil }
            let end = self.index(start, offsetBy: maxLength, limitedBy: self.endIndex) ?? self.endIndex
            defer { start = end }
            return self[start..<end]
        }
    }
    func subSequences(of n: Int) -> [SubSequence] {
        .init(unfoldSubSequences(limitedTo: n))
    }
}
