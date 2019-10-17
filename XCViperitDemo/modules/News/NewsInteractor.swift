//
//  NewsInteractor.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - NewsInteractor Class
final class NewsInteractor: Interactor {
}

// MARK: - NewsInteractor API
extension NewsInteractor: NewsInteractorApi {
}

// MARK: - Interactor Viper Components Api
private extension NewsInteractor {
    var presenter: NewsPresenterApi {
        return _presenter as! NewsPresenterApi
    }
}
