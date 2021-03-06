//
// TestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class TestAPI {
    /**
     Test json
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func test(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TestObject?, _ error: Error?) -> Void)) {
        testWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Test json
     - GET /oas-test
     - returns: RequestBuilder<TestObject> 
     */
    open class func testWithRequestBuilder() -> RequestBuilder<TestObject> {
        let path = "/oas-test"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TestObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
