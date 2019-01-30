//
//  ViewController.swift
//  MapWrapperFrameworkSwift
//
//  Created by SourceChang on 01/30/2019.
//  Copyright (c) 2019 SourceChang. All rights reserved.
//

import UIKit
import MapFramework
import MapWrapperFrameworkSwift

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var mapViewFrame = view.bounds
        mapViewFrame.size.height /= 2.00
        let mapView = SCMapView(frame: mapViewFrame)
        view.addSubview(mapView)
        
        var mapWrapperViewFrame = mapViewFrame
        mapWrapperViewFrame.origin.y = mapViewFrame.maxY
        let mapWrapperView = MapWrapperView(frame: mapWrapperViewFrame)
        view.addSubview(mapWrapperView)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

