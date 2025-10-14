import Foundation

/// Loads the contents of a JSON resource bundled with the app or test target.
///
/// This function searches all loaded bundles (`Bundle.allBundles`) for the first bundle
/// that contains a resource with the given file name and a `.json` extension. If found,
/// it loads the file contents into a `Data` object and returns it.
///
/// - Parameter fileName: The name of the JSON resource file without the `.json` extension.
/// - Returns: A `Data` instance containing the raw bytes of the JSON file.
/// - Throws: A ``JSONError``.
public func jsonDataFromFile(_ fileName: String) throws(JSONError) -> Data {
    let fileExtension = "json"

    guard let bundle = Bundle.allBundles.first(
        where: {
            $0.url(forResource: fileName, withExtension: fileExtension) != nil
        }
    ) else {
        throw .noBundleForResource(fileName)
    }

    guard let url = bundle.url(forResource: fileName, withExtension: fileExtension) else {
        throw .noURLForResource(fileName)
    }

    do {
        return try Data(contentsOf: url)
    } catch {
        throw .failedToInitializeDataForResource(fileName)
    }
}

public enum JSONError: Error {
    /// No bundle was found that contains the resource.
    case noBundleForResource(_ fileName: String)

    /// The bundle was found but the resource URL could not be resolved.
    case noURLForResource(_ fileName: String)

    /// The resource URL was found but reading its contents failed.
    case failedToInitializeDataForResource(_ fileName: String)
}
