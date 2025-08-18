//
//  Program.swift
//  SampleOne
//
//  Created by Ace on 18/8/2025.
//


struct Program: Hashable {
    let imageName: String
    let title: String
    let subtitle: String
    let leftBadge: String
    let rightBadge: String
    
    init(imageName: String,
         title: String,
         subtitle: String,
         leftBadge: String = "",
         rightBadge: String = "") {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        self.leftBadge = leftBadge
        self.rightBadge = rightBadge
    }
}
