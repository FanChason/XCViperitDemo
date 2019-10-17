//
//  WebViewPresenter.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit

// MARK: - WebViewPresenter Class
final class WebViewPresenter: Presenter {
    override func setupView(data: Any) {
       view.showUrlStr(urlStr: data as! String)
    }
}

// MARK: - WebViewPresenter API
extension WebViewPresenter: WebViewPresenterApi {
    func setUrlStr(urlStr: String) {
        view.showUrlStr(urlStr: urlStr)
    }
}

// MARK: - WebView Viper Components
private extension WebViewPresenter {
    var view: WebViewViewApi {
        return _view as! WebViewViewApi
    }
    var interactor: WebViewInteractorApi {
        return _interactor as! WebViewInteractorApi
    }
    var router: WebViewRouterApi {
        return _router as! WebViewRouterApi
    }
}
