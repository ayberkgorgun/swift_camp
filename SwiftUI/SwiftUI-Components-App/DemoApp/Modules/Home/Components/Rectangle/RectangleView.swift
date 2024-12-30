import SwiftUI

struct RectangleView: View {

    @ObservedObject var presenter: RectanglePresenter

    var body: some View {
        VStack(spacing: 30) {
            // Header Section
            HStack {
                Button(action: presenter.goBack) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }

                Spacer()

                Text("Rectangle Playground")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal)

            Spacer()

            // Rectangle Display Section
            VStack(spacing: 20) {
                Text("Dynamic Rectangle")
                    .font(.headline)
                    .foregroundColor(.blue)

                Rectangle()
                    .fill(presenter.color)
                    .frame(width: presenter.width, height: presenter.height)
                    .cornerRadius(15)
                    .shadow(color: presenter.color.opacity(0.5), radius: 10, x: 0, y: 5)

                Text("Width: \(Int(presenter.width)) • Height: \(Int(presenter.height))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            // Controls Section
            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Adjust Width")
                        .font(.subheadline)
                        .foregroundColor(.blue)

                    Slider(value: $presenter.width, in: 50...300, step: 1)
                        .accentColor(.blue)
                }

                VStack(alignment: .leading) {
                    Text("Adjust Height")
                        .font(.subheadline)
                        .foregroundColor(.blue)

                    Slider(value: $presenter.height, in: 50...300, step: 1)
                        .accentColor(.blue)
                }

                VStack(alignment: .leading) {
                    Text("Select Color")
                        .font(.subheadline)
                        .foregroundColor(.blue)

                    ColorPicker("", selection: $presenter.color)
                        .labelsHidden()
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.white) 
        .edgesIgnoringSafeArea(.bottom)
        .padding()
    }
}
