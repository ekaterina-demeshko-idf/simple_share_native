import Cocoa
import FlutterMacOS

public class SimpleShareNativePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_share_native", binaryMessenger: registrar.messenger)
    let instance = SimpleShareNativePlugin()
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
        let picker = NSSharingServicePicker(items: [message])
        if let view = NSApplication.shared.keyWindow?.contentViewController?.view {
            let rect = NSRect(x: view.bounds.maxX - 120, y: view.bounds.maxY - 20, width: 0, height: 0)
            picker.show(relativeTo: rect, of: view, preferredEdge: .maxX)
        }
    }
}
