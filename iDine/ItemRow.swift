//
//  ItemRow.swift
//  iDine
//
//  Created by Stephen on 10/17/21.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    var body: some View {
        Text(item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
