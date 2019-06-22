//
//  Note.swift
//  stepic Note task
//
//  Created by Мак on 6/22/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import Foundation
import UIKit

struct Note {
    let uid: String
    let title: String
    let content: String
    let color: UIColor
    let importance: Importance
    let destructDate: Date?
    
    init(uid: String = UUID().uuidString, title: String, content: String, importance: Importance, color: UIColor = .white, destructDate: Date?) {
        self.uid = uid
        self.title = title
        self.content = content
        self.importance = importance
        self.color = color
        self.destructDate = destructDate ?? Date()
        
    }
    
    init() {
        self.uid = UUID().uuidString
        self.title = ""
        self.content = ""
        self.importance = .unimportant
        self.color = .white
        self.destructDate = Date()
    }
}
    


enum Importance:String {
    case important = "important"
    case usual = "usual"
    case unimportant = "unimportant"
}
