//
//  Story.swift
//  Destini
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import Foundation

struct Story {
    let text: String
    let firstChoice: String
    let secondChoice: String
    let firstChoiceDestination: Int
    let secondChoiceDestination: Int
}

extension Story {
    init(t: String, f: String, fcd: Int, s: String, scd: Int) {
        text = t
        firstChoice = f
        secondChoice = s
        firstChoiceDestination = fcd
        secondChoiceDestination = scd
    }
}
