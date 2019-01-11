//
//  EndPoint.swift
//  DefaultNManager
//
//  Created by user on 11.01.2019.
//  Copyright © 2019 DenisBaturitskiy. All rights reserved.
//

import Alamofire
import Foundation

protocol EndpointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var parameters: Parameters? { get }
    var httpHeaders: HTTPHeaders? { get }
}
