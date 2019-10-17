//
//  NewsRouter.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - NewsRouter class
final class NewsRouter: Router {
    func openWebView(urlStr: String) {
        let module = AppModules.webView.build()
        let router = module.router as! WebViewRouter
        router.show(from: viewController, embedInNavController: true, setupData: urlStr)
    }
}

// MARK: - NewsRouter API
extension NewsRouter: NewsRouterApi {
}

// MARK: - News Viper Components
private extension NewsRouter {
    var presenter: NewsPresenterApi {
        return _presenter as! NewsPresenterApi
    }
}
