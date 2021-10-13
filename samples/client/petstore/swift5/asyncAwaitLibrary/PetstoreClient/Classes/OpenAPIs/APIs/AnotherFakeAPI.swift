//
// AnotherFakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AnotherFakeAPI {

    /**
     To test special tags
     
     - parameter body: (body) client model 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Client
     */
    @available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
    open class func call123testSpecialTags(body: Client, apiResponseQueue: DispatchQueue = PetstoreClientAPI.apiResponseQueue) async throws -> Client {
        return try await withCheckedThrowingContinuation { continuation in
            call123testSpecialTagsWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body!)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     To test special tags
     - PATCH /another-fake/dummy
     - To test special tags and operation ID starting with number
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func call123testSpecialTagsWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let localVariablePath = "/another-fake/dummy"
        let localVariableURLString = PetstoreClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}