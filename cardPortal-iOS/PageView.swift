
import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 1
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Card Portal")
                Spacer()
                Button("Add", action: buttonPress)
            }
            Divider()
            Spacer()
            Button("Button", action: buttonPress)
            Spacer()
            Text("Bottom")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView([CardCell()])
                    .aspectRatio(3/2, contentMode: .fit)
    }
}

func buttonPress() {
    print("hello")
}
