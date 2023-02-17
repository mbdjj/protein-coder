//
//  ContentView.swift
//  protein-generator
//
//  Created by Marcin Bartminski on 17/02/2023.
//

import SwiftUI

struct ProteinView: View {
    
    @ObservedObject var model = ProteinViewModel()
    
    var body: some View {
        VStack {
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), alignment: .leading), count: 5)) {
                ForEach(model.protein) { aminoAcid in
                    Text(aminoAcid.code)
                        .foregroundColor(.white)
                        .frame(width: 65, height: 30)
                        .background {
                            aminoAcid.color
                                .opacity(0.5)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                }
            }
            .padding(.bottom)
            
            HStack(alignment: .top) {
                Text(model.names)
                Spacer()
            }
            
            Spacer()
            HStack {
                ForEach(Array("UCAG"), id: \.self) { character in
                    let letter = "\(character)"
                    
                    Button {
                        model.proteinCodeText += letter
                    } label: {
                        Text("\(letter)")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(width: 60, height: 60)
                            .background {
                                Color.cyan
                                    .clipShape(Circle())
                            }
                    }
                }
                
                Button {
                    model.proteinCodeText = "AUG"
                } label: {
                    Image(systemName: "delete.backward")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                        .frame(width: 60, height: 60)
                        .background {
                            Color.gray
                                .clipShape(Circle())
                        }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProteinView()
    }
}
