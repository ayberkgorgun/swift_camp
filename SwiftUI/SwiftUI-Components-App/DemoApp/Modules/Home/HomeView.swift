import SwiftUI

struct HomeView: View {
    
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header
                    Text("Welcome to SwiftUI Components App")
    
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text("Go to Detail View")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)

                }
                .padding()
            }
        }
    }
}
