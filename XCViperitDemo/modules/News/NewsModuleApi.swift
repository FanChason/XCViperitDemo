//
//  NewsModuleApi.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Viperit

//MARK: - NewsRouter API
protocol NewsRouterApi: RouterProtocol {
    func openWebView(urlStr: String)
}

//MARK: - NewsView API
protocol NewsViewApi: UserInterfaceProtocol {
    func updateUI(data:[newModel])
}

//MARK: - NewsPresenter API
protocol NewsPresenterApi: PresenterProtocol {
    func requestData()
    func openWebView(urlStr: String)
}

//MARK: - NewsInteractor API
protocol NewsInteractorApi: InteractorProtocol {
}
