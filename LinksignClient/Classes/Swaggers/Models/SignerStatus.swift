//
// SignerStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SignerStatus: JSONEncodable {

    public var recipientIndex: String?
    public var signerUri: String?
    /** signature status(signing,signed) */
    public var status: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["recipientIndex"] = self.recipientIndex
        nillableDictionary["signerUri"] = self.signerUri
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}