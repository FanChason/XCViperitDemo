//
//  WebViewInteractor.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - WebViewInteractor Class
final class WebViewInteractor: Interactor {
}

// MARK: - WebViewInteractor API
extension WebViewInteractor: WebViewInteractorApi {
}

// MARK: - Interactor Viper Components Api
private extension WebViewInteractor {
    var presenter: WebViewPresenterApi {
        return _presenter as! WebViewPresenterApi
    }
}
