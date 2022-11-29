//
//  TaskListView.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//

import SwiftUI

struct TaskListView: View {
    
    @EnvironmentObject var viewModelList: ViewModelList
    //Moved to viewModal
    //    @State var itemList: [Itemdata] = [
    //        Itemdata(title: "item1", isDone: false),
    //        Itemdata(title: "item2", isDone: true),
    //        Itemdata(title: "item3", isDone: false),
    //
    //    ]
    
    var body: some View {
        
        List {
            
            ForEach(viewModelList.items) {
                item in taskRow(item: item)
            }
            .onDelete(perform: viewModelList.deleteItems)
        } // List Closed
        .navigationTitle("ToDo")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing){
                NavigationLink("ADD ITEM", destination: AddItemView())
            }
        } // toolbar closed
        
    }//var closed
    
    
    struct TaskListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                TaskListView()
            }
            .environmentObject(ViewModelList())
        }
    }
    
}
    
