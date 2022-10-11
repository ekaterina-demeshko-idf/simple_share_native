import Flutter
import UIKit

public class SwiftSimpleShareNativePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_share_native", binaryMessenger: registrar.messenger())
    let instance = SwiftSimpleShareNativePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     if call.method == "shareMessage" {
           let arguments = call.arguments as! [String: Any]
           let message = arguments["message"] as! String
           shareMessage(message)
           result(nil)
         } else {
           result(FlutterMethodNotImplemented)
         }
  }

    private func shareMessage(_ message: String) {
       let controller = UIActivityViewController(activityItems:[message], applicationActivities: nil)
       let viewController = UIApplication.shared.keyWindow!.rootViewController
       viewController?.present(controller,animated: true)
     }
}
