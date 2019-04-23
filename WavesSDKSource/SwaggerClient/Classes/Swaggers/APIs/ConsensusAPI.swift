//
// ConsensusAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ConsensusAPI {
    /**
     Consensus algo

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func algo1(completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        algo1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Consensus algo
     - GET /consensus/algo
     - Shows which consensus algo being using

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func algo1WithRequestBuilder() -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        let path = "/consensus/algo"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Base target
     - parameter blockId: (path) Block id  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func baseTargetId1(blockId: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        baseTargetId1WithRequestBuilder(blockId: blockId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Base target
     - GET /consensus/basetarget/{blockId}
     - base target of a block with specified id
     - parameter blockId: (path) Block id  

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func baseTargetId1WithRequestBuilder(blockId: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/consensus/basetarget/{blockId}"
        let blockIdPreEscape = "\(blockId)"
        let blockIdPostEscape = blockIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{blockId}", with: blockIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Base target last

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func basetarget1(completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        basetarget1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Base target last
     - GET /consensus/basetarget
     - Base target of a last block

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func basetarget1WithRequestBuilder() -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        let path = "/consensus/basetarget"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Generating balance
     - parameter address: (path) Address 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generatingBalance1(address: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        generatingBalance1WithRequestBuilder(address: address).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Generating balance
     - GET /consensus/generatingbalance/{address}
     - Account's generating balance(the same as balance atm)
     - parameter address: (path) Address 

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func generatingBalance1WithRequestBuilder(address: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/consensus/generatingbalance/{address}"
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
     Generation signature last

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generationSignature1(completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        generationSignature1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Generation signature last
     - GET /consensus/generationsignature
     - Generation signature of a last block

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func generationSignature1WithRequestBuilder() -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        let path = "/consensus/generationsignature"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Generation signature
     - parameter blockId: (path) Block id  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generationSignatureId1(blockId: String, completion: @escaping ((_ data: Function1RequestContextFutureRouteResult?,_ error: Error?) -> Void)) {
        generationSignatureId1WithRequestBuilder(blockId: blockId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Generation signature
     - GET /consensus/generationsignature/{blockId}
     - Generation signature of a block with specified id
     - parameter blockId: (path) Block id  

     - returns: RequestBuilder<Function1RequestContextFutureRouteResult> 
     */
    open class func generationSignatureId1WithRequestBuilder(blockId: String) -> RequestBuilder<Function1RequestContextFutureRouteResult> {
        var path = "/consensus/generationsignature/{blockId}"
        let blockIdPreEscape = "\(blockId)"
        let blockIdPostEscape = blockIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{blockId}", with: blockIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Function1RequestContextFutureRouteResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
