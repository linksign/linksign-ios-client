//
// SealSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** \u5370\u7AE0\u7ED3\u679C */
public class SealSummary: JSONEncodable {

    /** \u5370\u7AE0\u56FE\u7247\u4E0B\u8F7D\u5730\u5740 */
    public var sealFileUri: String?
    /** \u5370\u7AE0\u7F16\u53F7 */
    public var sealId: String?
    /** \u5370\u7AE0\u6536\u96C6\u91CD\u5B9A\u5411\u94FE\u63A5 */
    public var sealerRedirectUri: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["sealFileUri"] = self.sealFileUri
        nillableDictionary["sealId"] = self.sealId
        nillableDictionary["sealerRedirectUri"] = self.sealerRedirectUri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
