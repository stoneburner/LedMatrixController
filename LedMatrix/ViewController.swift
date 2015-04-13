//
//  ViewController.swift
//  LedMatrix
//
//  Created by Alexander Kasimir on 13/04/15.
//  Copyright (c) 2015 Alexander Kasimir. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UICollectionViewController, UITextFieldDelegate, UICollectionViewDelegateFlowLayout, SwiftPromptsProtocol {
    
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
    
    var prompt = SwiftPromptsView()
    
    func showError(message:String) {
        //Create an instance of SwiftPromptsView and assign its delegate
        prompt = SwiftPromptsView(frame: self.view.bounds)
        prompt.delegate = self
        
        //Set the properties for the background
        prompt.setBlurringLevel(10.0)
        prompt.setColorWithTransparency(UIColor(red:0.38, green:0.38, blue:0.38, alpha:0.3));
        
        //Set the properties of the promt
        prompt.setPromtHeader("Error")
        prompt.setPromptTopBarVisibility(true)
        prompt.setPromptBottomBarVisibility(false)
        prompt.setPromptTopLineVisibility(false)
        prompt.setPromptBottomLineVisibility(true)
        prompt.setPromptContentText(message)
        prompt.setPromptHeaderBarColor(UIColor(red:0.67, green:0.79, blue:0.27, alpha:1))
        prompt.setPromptHeaderTxtColor(UIColor.blackColor())
        prompt.setPromptContentTxtColor(UIColor.blackColor())
        prompt.setPromptBottomLineColor(UIColor(red:0.38, green:0.38, blue:0.38, alpha:1))
        prompt.setMainButtonText("ok")
        
        self.view.addSubview(prompt)
    }
    
    func clickedOnTheMainButton() {
        println("Clicked on the main button")
        prompt.dismissPrompt()
    }
    
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
        Alamofire.request(.GET, "http://192.168.178.84:3000/pic/\(images[indexPath.item])").response { (request, response, data, error) in
            println(request)
            println(response)
            println(error)
            if (error != nil) {
                self.showError("The LED Matrix is not responding!");
            }
        }
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.Default
    }

}

