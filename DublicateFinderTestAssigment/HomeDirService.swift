//
//  HomeDirService.swift
//  DublicateFinderTestAssigment
//
//  Created by Anton Stremovskiy on 1/9/19.
//  Copyright © 2019 áSoft. All rights reserved.
//

import Foundation

class HomeDirService {
    
    private let currentUser: String
    
    init(with user: String) {
        self.currentUser = user
    }
    
    func getUserHomeDir() -> String {
        guard let userDir = NSHomeDirectoryForUser(self.currentUser) else { return "Cannot find \(currentUser)'s directory path" }
        return userDir
    }
}
