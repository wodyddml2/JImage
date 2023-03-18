import Foundation

public struct JImage {
    public static func example(with url: String, completion: @escaping (UIImage) -> Void) {
//        var image: UIImage?
        NetworkManager.shared.setImage(with: url) { value in
//            image = value
            completion(value)
        }
//        return image
    }
}
