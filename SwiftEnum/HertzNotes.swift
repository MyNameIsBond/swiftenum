
import SwiftUI

enum  Notes{
  case a, b, c, d, e, f, g
}

func hrz(note: Notes) -> String{
  
  switch note {
    
  case .a:
    return "That many hertz from a"
  case .b:
    return "That many hertz from b"
  case .c:
    return "That many hertz from c"
  case .d:
    return "That many hertz from d"
  case .e:
    return "That many hertz from e"
  case .f:
    return "That many hertz from f"
  case .g:
    return "That many hertz from g"
  }
  
}

struct HertzNotes: View {
  @State private var notes: Notes = .e
  var body: some View {
    Text("Give me a note to tell you how my many hrz is.")
    Text(hrz(note: notes))
    List {
      Picker("Pick a Note", selection: $notes, content: {
        Text("Note a").tag(Notes.a)
        Text("Note b").tag(Notes.b)
        Text("Note c").tag(Notes.c)
        Text("Note d").tag(Notes.d)
        Text("Note e").tag(Notes.e)
        Text("Note f").tag(Notes.f)
        Text("Note g").tag(Notes.g)
      })
    }
  }
}

struct HertzNotes_Previews: PreviewProvider {
  static var previews: some View {
    HertzNotes()
  }
}
