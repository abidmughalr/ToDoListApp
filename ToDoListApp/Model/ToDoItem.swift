//
//  ToDoItem.swift
//  ToDoListApp
//
//  Created by Abid Mughal on 7/4/24.
//

import Foundation

struct ToDoItem: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
}

