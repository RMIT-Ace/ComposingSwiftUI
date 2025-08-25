//
//  ViewOneViewModel.swift
//  SampleOne
//
//  Created by Ace on 18/8/2025.
//

import Foundation

/// Manage and provide information to View One.
///
@Observable
class ViewOneViewModel {
    
    let options = ["First", "Second", "Third"]

    var breadcrumbs: [String] = [
        "Home", "View One", "Page One"
    ]
    
    var sections: [String] = [
        "Week 1", "Beginner", "Start"
    ]
    
    let sectionInfos: [(header: String, note: String, trophyCount: Int)] = [
        (
            "Weekly Watching",
            "Watch together with friends and family for this week.\n\nYes? No! Maybe?!",
            3
        ),
        (
            "Watch togeter",
            "This is Watch Together View - Here!",
            0
        ),
        (
            "Thriller",
            "This are thriller movies.",
            1
        )
    ]
    
    var programs: [Program] = [
        Program(
            imageName: "marvel1",
            title: "Avenger End Game",
            subtitle: "2 Seasons·15 Episodes·90-120 Mins",
            leftBadge: "Today",
            rightBadge: "♡"
        ),
        Program(
            imageName: "marvel2",
            title: "Ironman and comrades",
            subtitle: "3 Seasons·30 Episodes·290-320 Mins"
        )
    ]
    
    static let shared = ViewOneViewModel()
    
}
