
import SwiftUI

enum HttpStatusCodes {
  case 200, 201, 204, 400, 401, 404, 500
}

struct StatusCodes: View {
  @State private var status: HTTPStatusCodes = .200
    var body: some View {
        Text("HTTP Status Codes")
      Picker("HTTP Status", selection: $status) {
        
      }
    }
}

struct StatusCodes_Previews: PreviewProvider {
    static var previews: some View {
        StatusCodes()
    }
}
