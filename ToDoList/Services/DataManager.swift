//
//  DataManager.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 26.11.2024.
//

public class DataManager {
    var notes: [String] = []
    
    static let shared = DataManager()
    
    private init() {}
}
