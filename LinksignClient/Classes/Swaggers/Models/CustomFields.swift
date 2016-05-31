//
// CustomFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Custom Fields PDF form */
public class CustomFields: JSONEncodable {

    /** Custom picture field */
    public var imageCustomFields: [ImageCustomField]?
    /** \u5B57\u6BB5\u4E32\u5B57\u6BB5 */
    public var textCustomFields: [TextCustomField]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["imageCustomFields"] = self.imageCustomFields?.encodeToJSON()
        nillableDictionary["textCustomFields"] = self.textCustomFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}