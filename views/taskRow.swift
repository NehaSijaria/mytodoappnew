//
//  taskRow.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//

import SwiftUI

struct taskRow: View {
    
    var item: Itemdata
    
        
        var body: some View {
            
            HStack {
                Image(systemName: "square")
                Text(item.title)
            }
        }
}

struct taskRow_Previews: PreviewProvider {
   
    static var item1 = Itemdata(title: "item1", isDone: false)
    static var item2 = Itemdata(title: "item2", isDone: true)
    
    static var previews: some View {
        Group {
            taskRow(item: item1)
            taskRow(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
