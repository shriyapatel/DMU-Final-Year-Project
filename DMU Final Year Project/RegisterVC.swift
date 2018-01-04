//
//  RegisterVC.swift
//  DMU Final Year Project
//
//  Created by Shriya Patel on 18/11/2017.
//  Copyright © 2017 Shriya Patel. All rights reserved.
//

import UIKit
//UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate
class RegisterVC: UIViewController{

    //User Interface Objects
    @IBOutlet var firstnameTxt: UITextField!
    @IBOutlet var secondnameTxt: UITextField!
    @IBOutlet var courseTxt: UITextField!
    @IBOutlet var emailTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var password2Txt: UITextField!
    
    @IBOutlet var studentStaffPicker: UIPickerView!
    @IBOutlet var typeOfPersonTxt: UITextField!
    
    var studentOrStaff = ["Student", "Staff"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return studentOrStaff.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        self.view.endEditing(true)
        return studentOrStaff[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        self.typeOfPersonTxt.text = self.studentOrStaff[row]
        self.studentStaffPicker.isHidden = true
    }
    
    func textFieldDidBeginEditing(textField: UITextField)
    {
        if textField == self.typeOfPersonTxt{
            self.studentStaffPicker.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    //Register Button
    @IBAction func registerButton(sender: AnyObject) {
        if firstnameTxt.text!.isEmpty || secondnameTxt.text!.isEmpty || courseTxt.text!.isEmpty || emailTxt.text!.isEmpty || passwordTxt.text!.isEmpty || password2Txt.text!.isEmpty {
            
            //red place holder
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

