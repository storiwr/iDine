//
//  ContentView.swift
//  iDine
//
//  Created by Stephen on 10/17/21.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json") //Uses helper to unpack json data I think
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) {item in
                            NavigationLink(destination: ItemDetail(item: item)) {
                            ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle()) //Redundant but learning
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
