import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSService.provideAPiKey("AIzaSyB2cJwOg6aFjz_nXuU-j_eDVJuYlZw0OLs")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
