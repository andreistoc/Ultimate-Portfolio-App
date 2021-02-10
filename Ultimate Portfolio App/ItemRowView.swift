//
//  ItemRowView.swift
//  Ultimate Portfolio App
//
//  Created by Andrei Istoc on 10.02.2021.
//

import SwiftUI

struct ItemRowView: View {
    
    @ObservedObject var item: Item
    
    var body: some View {
        NavigationLink(destination: EditItemView(item: item)) {
            Text(item.itemTitle)
        }
    }
}

