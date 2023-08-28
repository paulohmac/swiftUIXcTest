//
//  MainView.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 26/08/23.
//

import SwiftUI


struct MainView: View {

    @StateObject var customers = CustomerViewModel()

    var body: some View {
        VStack {
            HStack{
                List (customers.customerList ?? []) { customer in
                    CustomerView(customer: customer)
                }
            }
            Button("Reload Data") {
                Task {
                    await loadData()
                }
            }
            .buttonStyle(.borderedProminent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
        .task {
          await loadData()
        }
    }
    
    func loadData() async{
        await customers.getCustomerList()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
