//
//  ViewController.swift
//  AutoPlayInWebView
//
//  Created by Tetsuya Shiraishi on 2015/06/19.
//  Copyright (c) 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    var _prefix:String = "autoplaytest://"
    
    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let _path:String = NSBundle.mainBundle().pathForResource("index", ofType: "html", inDirectory: "sound")!
        wv.loadRequest(NSURLRequest(URL: NSURL(string: _path)!))
//        wv.allowsInlineMediaPlayback = true;
        wv.mediaPlaybackRequiresUserAction = false;
        wv.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
//        if let _urlstr:String = request.URL?.absoluteString{
//            if(_urlstr.hasPrefix(_prefix)){
//                let _param = _urlstr.stringByReplacingOccurrencesOfString(_prefix, withString: "")
//                wv.stringByEvaluatingJavaScriptFromString("playAudioFn('" + _param + "')")
//                
//                return Bool(false)
//            }
//        }
//        return Bool(true)
//    }

}

