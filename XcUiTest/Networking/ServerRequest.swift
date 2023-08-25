//
//  DataRetrivingt.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation


protocol ServerRequest{
    var url : URL { get }
    func getCustomerAccount() async throws ->[Customer]?
}

private  struct Constants  {
    static let url : StaticString = ""
}

class  ServerHttpRequest: ServerRequest{
    var url : URL {
        get {
            return URL(staticString: Constants.url)
        }
    }
    
    func getCustomerAccount() async throws -> [Customer]? {
        var data = try await sendRequest(url: self.url)
        guard let jsonData = data else { return nil }
        let decoder = JSONDecoder()
        let customerModel = try? decoder.decode([Customer].self, from: jsonData)
        return customerModel
    }
}


extension ServerRequest{

    func sendRequest(url : URL)async throws -> Data?{
        let (data, _) = try await URLSession.shared.data(from: url)
        return data
    }
}

