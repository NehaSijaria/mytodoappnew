//
//  Itemdata.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//
//new comment
import Foundation

struct Itemdata: Identifiable {
    
   let id: String = UUID().uuidString
    let title: String
    let isDone: Bool
    
}
