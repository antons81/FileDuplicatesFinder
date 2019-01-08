//
//  HomeDirService.swift
//  DublicateFinderTestAssigment
//
//  Created by Anton Stremovskiy on 1/9/19.
//  Copyright © 2019 áSoft. All rights reserved.
//

import Foundation

class HomeDirService {
    static var userHomeDirPath: String {
        let pw = getpwuid(getuid())
        guard let home = pw?.pointee.pw_dir else { return "Cannot get \(NSUserName())'s home directory" }
        let homePath = FileManager.default.string(withFileSystemRepresentation: home, length: Int(strlen(home)))
        return homePath
    }
}
