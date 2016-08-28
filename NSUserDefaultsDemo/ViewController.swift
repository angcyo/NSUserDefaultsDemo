//
//  ViewController.swift
//  NSUserDefaultsDemo
//
//  Created by angcyo on 16/08/28.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		setData()
		getData()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

extension ViewController {
	func setData() {
		Defaults.setBool(true, forKey: boolKey)
		Defaults.setFloat(3.14159265358979323846, forKey: floatKey)
		Defaults.setDouble(1.41414249812398467213441255598776, forKey: doubleKey)
		Defaults.setObject("Json String ...", forKey: objectKey)
		Defaults.setInteger(19991111, forKey: intKey)
	}

	func getData() {
		print("\(Defaults.boolForKey(boolKey))")
		print("\(Defaults.floatForKey(floatKey))")
		print("\(Defaults.doubleForKey(doubleKey))")
		print("\(Defaults.objectForKey(objectKey))")
		print("\(Defaults.integerForKey(intKey))")
	}
}

let Defaults = NSUserDefaults.standardUserDefaults()
let boolKey = "boolKey"
let floatKey = "floatKey"
let doubleKey = "doubleKey"
let objectKey = "objectKey"
let intKey = "intKey"

