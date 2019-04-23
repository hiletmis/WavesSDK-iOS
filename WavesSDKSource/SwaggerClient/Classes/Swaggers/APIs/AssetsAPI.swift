//
// AssetsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AssetsAPI {
    /**
     Asset's balance
     - parameter address: (path) Address      - parameter assetId: (path) Asset ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func balance2(address: String, assetId: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        balance2WithRequestBuilder(address: address, assetId: assetId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Asset's balance
     - GET /assets/balance/{address}/{assetId}
     - Account's balance by given asset
     - parameter address: (path) Address      - parameter assetId: (path) Asset ID 

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func balance2WithRequestBuilder(address: String, assetId: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/assets/balance/{address}/{assetId}"
        let addressPreEscape = "\(address)"
        let addressPostEscape = addressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{address}", with: addressPostEscape, options: .literal, range: nil)
        let assetIdPreEscape = "\(assetId)"
        let assetIdPostEscape = assetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{assetId}", with: assetIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Asset balance distribution
     - parameter assetId: (path) Asset ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func balanceDistribution1(assetId: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        balanceDistribution1WithRequestBuilder(assetId: assetId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Asset balance distribution
     - GET /assets/{assetId}/distribution
     - Asset balance distribution by account
     - parameter assetId: (path) Asset ID 

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func balanceDistribution1WithRequestBuilder(assetId: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/assets/{assetId}/distribution"
        let assetIdPreEscape = "\(assetId)"
        let assetIdPostEscape = assetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{assetId}", with: assetIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Asset balance distribution at height
     - parameter assetId: (path) Asset ID      - parameter height: (path) Height      - parameter limit: (path) Number of addresses to be returned      - parameter after: (query) address to paginate after (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func balanceDistributionAtHeight1(assetId: String, height: Int, limit: Int, after: String? = nil, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        balanceDistributionAtHeight1WithRequestBuilder(assetId: assetId, height: height, limit: limit, after: after).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Asset balance distribution at height
     - GET /assets/{assetId}/distribution/{height}/limit/{limit}
     - Asset balance distribution by account at specified height
     - parameter assetId: (path) Asset ID      - parameter height: (path) Height      - parameter limit: (path) Number of addresses to be returned      - parameter after: (query) address to paginate after (optional)

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func balanceDistributionAtHeight1WithRequestBuilder(assetId: String, height: Int, limit: Int, after: String? = nil) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/assets/{assetId}/distribution/{height}/limit/{limit}"
        let assetIdPreEscape = "\(assetId)"
        let assetIdPostEscape = assetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{assetId}", with: assetIdPostEscape, options: .literal, range: nil)
        let heightPreEscape = "\(height)"
        let heightPostEscape = heightPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{height}", with: heightPostEscape, options: .literal, range: nil)
        let limitPreEscape = "\(limit)"
        let limitPostEscape = limitPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{limit}", with: limitPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "after": after
        ])

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Account's balance
     - parameter address: (path) Address 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func balances1(address: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        balances1WithRequestBuilder(address: address).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Account's balance
     - GET /assets/balance/{address}
     - Account's balances for all assets
     - parameter address: (path) Address 

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func balances1WithRequestBuilder(address: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/assets/balance/{address}"
        let addressPreEscape = "\(address)"
        let addressPostEscape = addressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{address}", with: addressPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Information about an asset
     - parameter assetId: (path) ID of the asset      - parameter full: (query) false (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func details1(assetId: String, full: Bool? = nil, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        details1WithRequestBuilder(assetId: assetId, full: full).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Information about an asset
     - GET /assets/details/{assetId}
     - Provides detailed information about given asset
     - parameter assetId: (path) ID of the asset      - parameter full: (query) false (optional)

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func details1WithRequestBuilder(assetId: String, full: Bool? = nil) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/assets/details/{assetId}"
        let assetIdPreEscape = "\(assetId)"
        let assetIdPostEscape = assetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{assetId}", with: assetIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "full": full
        ])

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
