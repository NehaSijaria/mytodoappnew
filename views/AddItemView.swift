//
//  AddItemView.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var PresentationMode
    @EnvironmentObject var viewModelList: ViewModelList
    @State var ItemName: String = ""
    
    var body: some View {
        
        ScrollView {
            VStack{
                TextField("Type your name", text: $ItemName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .font(.headline)
                    .foregroundColor(.red)
                    .background(.yellow)
                
                Button(action: itemBtn , label: {
                    Text("Add Item")
                        .font(.headline)
                        .fontWeight(.bold)
                })
            }
                .padding(16)
            }
            .navigationTitle("Add Item")
        }
        func itemBtn() {
            viewModelList.addItems(title: ItemName)
            PresentationMode.wrappedValue.dismiss()
        }
       
    }
    
    struct AddItemView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                AddItemView()
            }
            .environmentObject(ViewModelList())
        }
    }

