//
//  ServiceFactory.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation


struct ServiceFactory{
    
    static func getServiceInstance()->ServerRequest{
        return ServerHttpRequest()
    }
}
