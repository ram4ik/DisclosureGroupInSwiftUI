//
//  ContentView.swift
//  DisclosureGroupInSwiftUI
//
//  Created by ramil on 02.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animalsExpanded: Bool = true
    let animals = ["🐛", "🐍", "🦖", "🦑", "🦐"]
    
    @State private var fruitsExpanded: Bool = false
    let fruits = ["🍓", "🍑", "🍐", "🍌", "🍊"]
    
    var body: some View {
        Form {
            DisclosureGroup(
                isExpanded: $animalsExpanded,
                content: {
                    VStack {
                        ForEach(animals, id: \.self) { animal in
                            Text(animal)
                                .font(.system(size: 50))
                        }
                    }
                },
                label: { Text("Animals") }
            )
            
            DisclosureGroup(
                isExpanded: $fruitsExpanded,
                content: {
                    VStack {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                                .font(.system(size: 50))
                        }
                    }
                },
                label: { Text("Fruits") }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
