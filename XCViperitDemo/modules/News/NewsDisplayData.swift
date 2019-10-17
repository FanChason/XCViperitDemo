//
//  NewsDisplayData.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - NewsDisplayData class
final class NewsDisplayData: DisplayData {
}

class newModel: BaseModel {
    var title = ""
    var digest = ""
    var picInfo: [pickInfo]?
    var link = ""
}

class pickInfo: BaseModel {
    var url = ""
    
}
