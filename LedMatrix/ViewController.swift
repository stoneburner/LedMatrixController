//
//  ViewController.swift
//  LedMatrix
//
//  Created by Alexander Kasimir on 13/04/15.
//  Copyright (c) 2015 Alexander Kasimir. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UICollectionViewController, UITextFieldDelegate, UICollectionViewDelegateFlowLayout {
    
    let cellbackground = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
    
    var images = [
        "clear",
        "accept",
        "cancel",
        "fire",
        "error",
        "stop",
        "color_swatch",
        "color_wheel",
        "help",
        "rainbow",
        "lightbulb",
        "lightning",
        "refresh",
        "stop",
        "thumb_down",
        "thumb_up",
        "tick",
        "weather_clouds",
        "weather_cloudy",
        "weather_lightning",
        "weather_rain",
        "weather_snow",
        "weather_sun",
        "heart",
        "emoticon_grin",
        "emoticon_happy",
        "emoticon_smile",
        "emoticon_surprised",
        "emoticon_unhappy",
        "emoticon_waii",
        "emoticon_wink",
        "user",
        "user_female"
    ];
    
    private let reuseIdentifier = "pixelcell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PixelButtonViewCell
        cell.backgroundColor = cellbackground
        let imageName = images[indexPath.item]
        cell.name = imageName
        cell.imageView.image = UIImage(named: imageName)
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        Alamofire.request(.GET, "http://192.168.178.84:3000/pic/\(images[indexPath.item])/10");
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.Default
    }

}

