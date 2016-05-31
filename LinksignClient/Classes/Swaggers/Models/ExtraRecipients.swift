//
// ExtraRecipients.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** \u5176\u5B83\u63A5\u6536\u4EBA */
public class ExtraRecipients: JSONEncodable {

    /** \u6240\u6709\u90AE\u4EF6\u63A5\u6536\u8005 */
    public var emaiRecipients: [EmailRecipient]?
    /** \u6240\u6709\u77ED\u4FE1\u63A5\u6536\u8005 */
    public var smsRecipients: [SmsRecipient]?
    /** \u6240\u6709\u5FAE\u4FE1\u63A5\u6536\u8005 */
    public var wechatRecipients: [WechatRecipient]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["emaiRecipients"] = self.emaiRecipients?.encodeToJSON()
        nillableDictionary["smsRecipients"] = self.smsRecipients?.encodeToJSON()
        nillableDictionary["wechatRecipients"] = self.wechatRecipients?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
