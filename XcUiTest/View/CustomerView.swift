
import Foundation
import SwiftUI


struct CustomerView: View {
    let customer: Customer?
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text(customer?.profileImage ?? "")
                .font(.title)
            Text(customer?.name ?? "")
                .font(.title2)
        }
    }
}
