//
//  MapWrapperView.swift
//  MapWrapperFrameworkSwift
//
//  Created by Source on 2019/1/30.
//


import UIKit
import MapFramework


public class MapWrapperView: UIView {
    
    
    weak var mapView: SCMapView!

    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commonInit()
    }
    
    
    private func commonInit() {
        let mapView = SCMapView(frame: bounds)
        addSubview(mapView)
    }
    

}

