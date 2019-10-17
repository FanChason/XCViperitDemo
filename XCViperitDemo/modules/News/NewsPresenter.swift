//
//  NewsPresenter.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import Foundation
import Viperit
import Alamofire

// MARK: - NewsPresenter Class
final class NewsPresenter: Presenter {
    var displayData: NewsDisplayData?
}

// MARK: - NewsPresenter API
extension NewsPresenter: NewsPresenterApi {
    func requestData() {
        print("请求数据 == 开始")
        Alamofire.request("https://www.apiopen.top/journalismApi").responseJSON { (DataResponse) in
                print("请求的数据 == \(DataResponse.data!)")
            if let Json = DataResponse.result.value
            {
                print("Json:\(Json) ")
//                NSData->NSDictonary
                let dic = try? JSONSerialization.jsonObject(with: DataResponse.data!, options: JSONSerialization.ReadingOptions.allowFragments) as? [String: Any]
                let data = (dic? ["data"] as! [String: Any]) ["tech"]
                let jsonArrStr = JsonUtil.getJSONStringFromArray(array: data as! NSArray)
                let resultData = JsonUtil.jsonArrayToModel(jsonArrStr, newModel.self) as? [newModel]
//                print(Thread.current)
                self.view.updateUI(data: resultData ?? [])
               }
           }
    }
    
    func openWebView(urlStr: String) {
        router.openWebView(urlStr: urlStr)
    }
}

// MARK: - News Viper Components
private extension NewsPresenter {
    var view: NewsViewApi {
        return _view as! NewsViewApi
    }
    var interactor: NewsInteractorApi {
        return _interactor as! NewsInteractorApi
    }
    var router: NewsRouterApi {
        return _router as! NewsRouterApi
    }
}
