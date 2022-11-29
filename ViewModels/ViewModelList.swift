//
//  ViewModelList.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//

import Foundation

class ViewModelList: ObservableObject {
    
    @Published var items: [Itemdata] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            Itemdata(title: "item1", isDone: false),
            Itemdata(title: "item2", isDone: true),
            Itemdata(title: "item3", isDone: false),
        ]
        items.append(contentsOf: newItems)
    }

func deleteItems(indexSet: IndexSet){
    items.remove(atOffsets: indexSet)
    }
    
func addItems(title: String){
    let newItem = Itemdata(title: title, isDone: false)
    items.append(newItem)
    
}
    
}
    

