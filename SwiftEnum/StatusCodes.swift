
import SwiftUI

enum HttpStatusCodes: String {
  case ok
  case created
  case noContent
  case badRequest
  case unauthorized
  case internalServerError
  case notFound
}

func network(status: Int) -> String {
  switch status {
  case 200:
    return HttpStatusCodes.ok.rawValue
  case 201:
    return HttpStatusCodes.created.rawValue
  case 204:
    return HttpStatusCodes.noContent.rawValue
  case 400:
    return HttpStatusCodes.badRequest.rawValue
  case 401:
    return HttpStatusCodes.unauthorized.rawValue
  case 404:
    return HttpStatusCodes.notFound.rawValue
  case 500:
    return HttpStatusCodes.internalServerError.rawValue
  default:
    return HttpStatusCodes.unauthorized.rawValue
    
    
  }
}

struct StatusCodes: View {
  @State private var status: Int = 200
  var body: some View {
    Text("HTTP Status Codes")
    Text(network(status:status))
    Picker("HTTP Status", selection: $status) {
      Text("200").tag(200)
      Text("201").tag(201)
      Text("204").tag(204)
      Text("400").tag(400)
      Text("401").tag(401)
      Text("404").tag(404)
      Text("500").tag(500)
    }
  }
}

struct StatusCodes_Previews: PreviewProvider {
  static var previews: some View {
    StatusCodes()
  }
}
