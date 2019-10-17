//
//  NewsView.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import UIKit
import Viperit
import XLPagerTabStrip
import Alamofire
import AlamofireImage

//MARK: NewsView Class
class NewsView: TableUserInterface {
    
    var datasources: [newModel]?
    let rowHeight: CGFloat = 141
    let cellID = "cellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "新闻"
        
        tableView.rowHeight = rowHeight
        let nibName = UINib(nibName: "NewsCell", bundle:nil)
        tableView.register(nibName, forCellReuseIdentifier: cellID)
        
        presenter.requestData()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = datasources![indexPath.row]
        presenter.openWebView(urlStr: model.link)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasources?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! NewsCell
        let model = datasources![indexPath.row]
        
        cell.title.text = model.title
        cell.subTitle.text = model.digest
        
        if model.picInfo!.count > 0 {
            Alamofire.request(model.picInfo!.first!.url).responseImage { response in

                if let image = response.result.value {
                    print("image downloaded: \(image)")
                    cell.icon.image = image
                }
            }
        }

        return cell
    }
}

extension NewsView: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "科技")
    }
}

//MARK: - NewsView API
extension NewsView: NewsViewApi {
    func updateUI(data: [newModel]) {
        datasources = data
        tableView.reloadData()
    }
}

// MARK: - NewsView Viper Components API
private extension NewsView {
    var presenter: NewsPresenterApi {
        return _presenter as! NewsPresenterApi
    }
    var displayData: NewsDisplayData {
        return _displayData as! NewsDisplayData
    }
}
