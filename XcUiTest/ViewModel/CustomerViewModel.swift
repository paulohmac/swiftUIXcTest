//
//  CustomerViewModel.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation


class CustomerViewModel : ObservableObject{

    private lazy var request : ServerRequest = ServiceFactory.getServiceInstance()
    @Published var customerList : [Customer]?
    
    init(){
    }
    
    @MainActor
    func getCustomerList()async {
        do{
            customerList = try await request.getCustomerAccount()
        }catch{
            
        }
    }
    
    
}
