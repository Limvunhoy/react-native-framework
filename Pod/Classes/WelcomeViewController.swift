import UIKit
import React
import ReactNativeNavigation

public class WelcomeViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let bridge = RCTBridge(delegate: self, launchOptions: [:])
//        self.view = RCTRootView(bridge: bridge!, moduleName: "MyReactNativePod", initialProperties: [:])
//        ReactNativeNavigation.bootstrap(with: bridge!)
        ReactNativeNavigation.bootstrap(with: self, launchOptions: [:])
    }
    
}

extension WelcomeViewController: RCTBridgeDelegate {
    
    public func sourceURL(for bridge: RCTBridge!) -> URL! {
//        let bundle = Bundle(for: WelcomeViewController.self)
//        return bundle.url(forResource: "MyReactNativePod", withExtension: "js")
    #if DEBUG
        RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: "js")
    #else
        Bundle.main.url(forResource: "MyReactNativePod", withExtension: "jsbundle")
    #endif
    }
    
    public func extraModules(for bridge: RCTBridge!) -> [RCTBridgeModule]! {
        ReactNativeNavigation.extraModules(for: bridge)
    }
    
}
