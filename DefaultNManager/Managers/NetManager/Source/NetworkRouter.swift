//
//  NetworkRouter.swift
//  DefaultNManager
//
//  Created by user on 11.01.2019.
//  Copyright © 2019 DenisBaturitskiy. All rights reserved.
//

import Foundation
import Alamofire

typealias NetworkRouterCompletion = (_ response: DataResponse<Data>) -> ()

protocol NetworkRouter: AnyObject {
    associatedtype Endpoint: EndpointType
    func request(_ route: Endpoint, completionHandler: @escaping NetworkRouterCompletion)
    func cancel()
}
