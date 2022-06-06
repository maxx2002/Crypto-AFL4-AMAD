import SwiftUI

struct AddWishlist: View {
    
    @State private var textInput: String = ""
    
    var body: some View {
        
        VStack {
            Text("Add to Wishlist").font(.title)
            Image("bitcoin")
            Text("Bitcoin").font(.largeTitle).bold().padding()
            Divider()
            HStack{
                Text("Target Price: ")
                TextField("Ex: 29567", text: $textInput)
                    .keyboardType(.decimalPad)
            }
            Divider()
            HStack{
                Text("Amount: ")
                TextField("Ex: 1.9", text: $textInput)
                    .keyboardType(.decimalPad)
            }
            Divider()
            Spacer()
            Text("Save").foregroundColor(.blue).padding()
        }.padding(.horizontal)
    }
}

struct AddWishlist_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddWishlist()
                .environmentObject(dev.marketVM)
        }
        
    }
}
