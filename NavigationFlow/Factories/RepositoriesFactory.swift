//
//  RepositoriesFactory.swift
//  NavigationFlow
//
//  Created by Niels Koole on 13/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import Foundation

protocol TimelineRepository {
    
}

class TimelineRepositoryRealm: TimelineRepository {
    
}

class RepositoriesFactory {
    
    static func createTimelineRepository() -> TimelineRepository {
        return TimelineRepositoryRealm()
    }
}
