//
//	BannerResult.swift
//
//	Create by xijinfa on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

public class BannerResult: NSObject, NSCoding, Mappable {

	public var data: [BannerData]?

	class func newInstance(map: Map) -> Mappable? {
		return BannerResult()
	}
	required public init?(map: Map) {}
	private override init() {}

	public func mapping(map: Map) {
		data <- map["data"]

	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required public init(coder aDecoder: NSCoder) {
         data = aDecoder.decodeObject(forKey: "data") as? [BannerData]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc public func encode(with aCoder: NSCoder) {
		if data != nil {
			aCoder.encode(data, forKey: "data")
		}

	}

}
