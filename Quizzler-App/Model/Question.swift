//
//  Question.swift
//  Quizzler-App
//
//  Created by Srijan Kumar Khan on 18/07/23.
//

import Foundation

struct Question{
    let text:String
    let answer:String
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
