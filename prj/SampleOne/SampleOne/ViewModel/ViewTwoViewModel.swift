//
//  ViewTwoViewModel.swift
//  SampleOne
//
//  Created by Ace on 26/8/2025.
//

import Foundation

// Manage and provide information for View Two (Cooking).
///
@Observable
class ViewTwoViewModel {
    
    var programs: [Program] = [
        Program(
            imageName: "cooking1",
            title: "Salad from Divine Garden",
            subtitle: "2 persons·15 calories·20-30 Mins",
            leftBadge: "Today",
            rightBadge: "♡"
        ),
        Program(
            imageName: "cooking2",
            title: "Hot wok vegies for your soul",
            subtitle: "2 persons·10 calories·15 Mins"
        ),
        Program(
            imageName: "cooking3",
            title: "Chiken Honey Vegies",
            subtitle: "2-3 persons·100 calories·90 Mins"
        ),
        Program(
            imageName: "cooking4",
            title: "Bare lamb on fire",
            subtitle: "1-2 persons·200 calories·30 Mins"
        )
    ]
    
    static let shared = ViewTwoViewModel()
    
}
