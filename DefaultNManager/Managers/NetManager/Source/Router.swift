//
//  Router.swift
//  DefaultNManager
//
//  Created by user on 11.01.2019.
//  Copyright © 2019 DenisBaturitskiy. All rights reserved.
//

import Foundation
import Alamofire

class Rounter<Endpoint: EndpointType>: NetworkRouter {
    
    // MARK: - Properties
    var request: DataRequest?
    
    // MARK: - Methods
    func request(_ route: Endpoint, completionHandler: @escaping NetworkRouterCompletion) {
        request = AF.request(route.baseURL.appendingPathComponent(route.path),
                             method: route.httpMethod,
                             parameters: route.parameters,
                             encoding: JSONEncoding.default,
                             headers: route.httpHeaders).responseData(completionHandler: { (response) in
                                completionHandler(response)
                             })
    }
    
    func cancel() {
        request?.cancel()
    }
    
}
