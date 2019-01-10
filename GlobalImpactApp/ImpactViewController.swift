//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Ellison, Cy on 1/10/19.
//  Copyright © 2019 Ellison, Cy. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    
    @IBAction func buttonClick(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 1.1, longitude: 1.1)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
    
    
   public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options:
            UIView.AnimationOptions.curveEaseIn, animations:
            {self.setRegion(zoomRegion, animated: true)}, completion: nil)
    }
}

