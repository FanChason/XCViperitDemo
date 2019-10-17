//
//  WebViewModuleApi.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Viperit

//MARK: - WebViewRouter API
protocol WebViewRouterApi: RouterProtocol {
}

//MARK: - WebViewView API
protocol WebViewViewApi: UserInterfaceProtocol {
    func showUrlStr(urlStr: String)
}

//MARK: - WebViewPresenter API
protocol WebViewPresenterApi: PresenterProtocol {
}

//MARK: - WebViewInteractor API
protocol WebViewInteractorApi: InteractorProtocol {
}
