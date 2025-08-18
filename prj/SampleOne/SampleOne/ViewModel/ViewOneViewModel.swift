//
//  ViewOneViewModel.swift
//  SampleOne
//
//  Created by Ace on 18/8/2025.
//

import Foundation

@Observable
class ViewOneViewModel {
    
    var breadcrumbs: [String] = [
        "Home", "View One", "Page One"
    ]
    
    var sections: [String] = [
        "Week 1", "Beginner", "Start"
    ]
    
    var programs: [Program] = [
        Program(
            imageName: "marvel1",
            title: "Avenger End Game",
            subtitle: "2 Seasons·15 Episodes·90-120 Mins"
        ),
        Program(
            imageName: "marvel2",
            title: "Ironman and comrades",
            subtitle: "3 Seasons·30 Episodes·290-320 Mins"
        )
    ]
    
    static let shared = ViewOneViewModel()
    
}
