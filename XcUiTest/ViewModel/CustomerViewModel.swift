//
//  CustomerViewModel.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation

class CustomerViewModel{
    lazy var request : ServerRequest = ServiceFactory.getServiceInstance()

    var customerList : [Customer]?
    
    func getCustomerList()async throws{
        customerList = try await request.getCustomerAccount()
    }
    
    
}
