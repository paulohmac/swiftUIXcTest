
import Foundation
import SwiftUI


struct CustomerView: View {
    @State private var showMessageBox = false

    let customer: Customer?

    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text(customer?.profileImage ?? "")
                .font(.title)
            Text(customer?.name ?? "")
                .font(.title2)
            Button("Confirm Button") {
                showMessageBox = !showMessageBox
            }
            .alert("Alert box", isPresented: $showMessageBox) {
                        Button("Yes", role: .cancel) { }
            }

        }
    }
}
