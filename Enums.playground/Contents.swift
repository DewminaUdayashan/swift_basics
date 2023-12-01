import Foundation

enum Vehicle{
    case car, van, bike, bus
}

enum Animals{
    case cat
    case dog
    case fish
}

let animal = Animals.cat;

if animal == Animals.cat {
    "Mewwww..."
} else if animal==Animals.dog{
    "Grrrrr...!"
} else if animal==Animals.fish{
    "......"
}else{
    "What the heck is this..?"
}


switch animal{
case .cat:
    "Mewwww..."
    break
case .dog:
    "Grrrrr...!"
    break
case .fish:
    "......"
    break
}



enum Shortcut{
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song
}

let apple = Shortcut.wwwUrl(path: URL(string: "www.apple.com")!)


switch apple {
case .fileOrFolder(
    path: let path,
    name: let name
):
    path
    name
case .wwwUrl(
    path: let path
):
    path
case .song:
    "song.."
}

switch apple {
case .fileOrFolder(
    let path,
    let name
):
    path
    name
case .wwwUrl(
    let path
):
    path
case .song:
    "song.."
}


///much cleaner way
switch apple {
case let .fileOrFolder(
     path,
     name
):
    path
    name
case let .wwwUrl(
     path
):
    path
case .song:
    "song.."
}


if case let .wwwUrl(path) = apple {
    path
    ///other code
}

let file = Shortcut.fileOrFolder(path: URL(filePath: "/file.text"), name: "file")


/// can ignore values using _
if case let .fileOrFolder(_, name) = file {
    /// your code
    name
}
