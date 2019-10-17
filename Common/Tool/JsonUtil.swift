
//
//  JsonUtil.swift
//  XCViperitDemo
//
//  Created by ChasonFan on 2019/10/16.
//  Copyright © 2019 ChasonFan. All rights reserved.
//

import UIKit
import HandyJSON
class JsonUtil: NSObject {
    /**
     *  Json转对象
     */
    static func jsonToModel(_ jsonStr:String,_ modelType:HandyJSON.Type) ->BaseModel {
        if jsonStr == "" || jsonStr.count == 0 {
            #if DEBUG
                print("jsonoModel:字符串为空")
            #endif
            return BaseModel()
        }
        return modelType.deserialize(from: jsonStr)  as! BaseModel
        
    }
    
    /**
     *  Json转数组对象
     */
    static func jsonArrayToModel(_ jsonArrayStr:String, _ modelType:HandyJSON.Type) ->[BaseModel] {
        if jsonArrayStr == "" || jsonArrayStr.count == 0 {
            #if DEBUG
                print("jsonToModelArray:字符串为空")
            #endif
            return []
        }
        var modelArray:[BaseModel] = []
        let data = jsonArrayStr.data(using: String.Encoding.utf8)
        let peoplesArray = try! JSONSerialization.jsonObject(with:data!, options: JSONSerialization.ReadingOptions()) as? [AnyObject]
        for people in peoplesArray! {
            modelArray.append(dictionaryToModel(people as! [String : Any], modelType))
        }
        return modelArray
        
    }
    
    /**
     *  字典转对象
     */
    static func dictionaryToModel(_ dictionStr:[String:Any],_ modelType:HandyJSON.Type) -> BaseModel {
        if dictionStr.count == 0 {
            #if DEBUG
                print("dictionaryToModel:字符串为空")
            #endif
            return BaseModel()
        }
        return modelType.deserialize(from: dictionStr) as! BaseModel
    }
    
    /**
     *  对象转JSON
     */
    static func modelToJson(_ model:BaseModel?) -> String {
        if model == nil {
            #if DEBUG
                print("modelToJson:model为空")
            #endif
             return ""
        }
        return (model?.toJSONString())!
    }
    
    /**
     *  对象转字典
     */
    static func modelToDictionary(_ model:BaseModel?) -> [String:Any] {
        if model == nil {
            #if DEBUG
                print("modelToJson:model为空")
            #endif
            return [:]
        }
        return (model?.toJSON())!
    }
    
    /**
        字典转换为JSONString
         
        - parameter dictionary: 字典参数
         
        - returns: JSONString
        */
       static func getJSONStringFromDictionary(dictionary:NSDictionary) -> String {
           if (!JSONSerialization.isValidJSONObject(dictionary)) {
               print("无法解析出JSONString")
               return ""
           }
        let data : NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
           let JSONString = NSString(data:data as Data,encoding: String.Encoding.utf8.rawValue)
           return JSONString! as String
    
       }
    
    
    /**
     数组转换为JSONString
     
     */
    static func getJSONStringFromArray(array:NSArray) -> String {
         
        if (!JSONSerialization.isValidJSONObject(array)) {
            print("无法解析出JSONString")
            return ""
        }
         
        let data : NSData! = try? JSONSerialization.data(withJSONObject: array, options: []) as NSData?
        let JSONString = NSString(data:data as Data,encoding: String.Encoding.utf8.rawValue)
        return JSONString! as String
         
    }
    
}
