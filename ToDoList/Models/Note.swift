//
//  Note.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 28.11.2024.
//

struct Note {
    static func creatingAnArrayOfNotes() -> [String]{
        var notes: [String] = []
        
        for note in DataManager.shared.notes {
            notes.append(note)
        }
        
        return notes
    }
}
