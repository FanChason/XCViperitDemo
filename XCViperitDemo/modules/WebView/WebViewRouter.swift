//
//  WebViewRouter.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - WebViewRouter class
final class WebViewRouter: Router {
}

// MARK: - WebViewRouter API
extension WebViewRouter: WebViewRouterApi {
}

// MARK: - WebView Viper Components
private extension WebViewRouter {
    var presenter: WebViewPresenterApi {
        return _presenter as! WebViewPresenterApi
    }
}
