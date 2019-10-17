//
//  WebViewView.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//Copyright © 2019 ChasonFan. All rights reserved.
//

import UIKit
import Viperit
import WebKit

//MARK: WebViewView Class
final class WebViewView: UserInterface {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "关闭", style: .done, target: self, action: #selector(close))
    }
    
    @objc func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
    deinit {
        print("页面释放了...")
    }
}

extension WebViewView: WKNavigationDelegate, WKUIDelegate {
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error)
    }
    
    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
    {  // 判断服务器采用的验证方法
        if challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust {
            if challenge.previousFailureCount == 0 {
                // 如果没有错误的情况下 创建一个凭证，并使用证书
                let credential = URLCredential(trust: challenge.protectionSpace.serverTrust!)
                completionHandler(.useCredential, credential)
            } else {
                // 验证失败，取消本次验证
                completionHandler(.cancelAuthenticationChallenge, nil)
            }
        } else {
            completionHandler(.cancelAuthenticationChallenge, nil)
        }
    }
    
}

//MARK: - WebViewView API
extension WebViewView: WebViewViewApi {
    func showUrlStr(urlStr: String) {
        print(urlStr)
        navigationItem.title = urlStr
        addWebView(urlStr: urlStr)
    }
    
    func addWebView(urlStr: String) {
        let webView = WKWebView.init(frame: view.bounds)
        webView.navigationDelegate = self
        webView.uiDelegate = self
        webView.load(URLRequest.init(url: URL.init(string: urlStr)!))
        view.addSubview(webView)
    }
}

// MARK: - WebViewView Viper Components API
private extension WebViewView {
    var presenter: WebViewPresenterApi {
        return _presenter as! WebViewPresenterApi
    }
    var displayData: WebViewDisplayData {
        return _displayData as! WebViewDisplayData
    }
}
