// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal enum StoryboardScene {
  internal enum LaunchScreen: StoryboardType {
    internal static let storyboardName = "LaunchScreen"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: LaunchScreen.self)
  }
  internal enum Lines: StoryboardType {
    internal static let storyboardName = "Lines"

    internal static let linesVC = SceneType<weapp_ios.LinesVC>(storyboard: Lines.self, identifier: "LinesVC")
  }
  internal enum Saved: StoryboardType {
    internal static let storyboardName = "Saved"

    internal static let initialScene = InitialSceneType<weapp_ios.SavedVC>(storyboard: Saved.self)

    internal static let savedVC = SceneType<weapp_ios.SavedVC>(storyboard: Saved.self, identifier: "SavedVC")
  }
  internal enum Stops: StoryboardType {
    internal static let storyboardName = "Stops"

    internal static let initialScene = InitialSceneType<weapp_ios.StopsVC>(storyboard: Stops.self)

    internal static let stopsVC = SceneType<weapp_ios.StopsVC>(storyboard: Stops.self, identifier: "StopsVC")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol StoryboardType {
  static var storyboardName: String { get }
}

internal extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

internal struct SceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type
  internal let identifier: String

  internal func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

internal struct InitialSceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type

  internal func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

private final class BundleToken {}
