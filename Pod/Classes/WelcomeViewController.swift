import UIKit
import React

public class WelcomeViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let bridge = RCTBridge(delegate: self, launchOptions: [:])
        self.view = RCTRootView(bridge: bridge!, moduleName: "MyReactNativePod", initialProperties: [:])
    }
    
}

extension WelcomeViewController: RCTBridgeDelegate {
    
    public func sourceURL(for bridge: RCTBridge!) -> URL! {
        let bundle = Bundle(for: WelcomeViewController.self)
        return bundle.url(forResource: "MyReactNativePod", withExtension: "js")
    }
    
}
