//
//  ViewController.swift
//  ViewController
//
//  Created by Cihan on 22.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    var receivedPassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view Did Load")

        /*
         *ilk Çalışmada*
         view Did Load-> kullanıcı görmden Çağırılan ilk Fonksiyon,İlk Oluşturulduğunda Çağırılır
         view Will Appear-> Ortaya Çıkacak - Daha Çıkmadı
         view Did Appear->Ortaya Çıktı - Gözüktü
         
         *Sayfa Geçisi
         view Will Disappear->Ortadan Kaybolacak
         view Did Disappear->Görünüm Ortadan Kayboldu
         
         *Geri Gelme*
         view Will Appear-> Ortaya Çıkacak - Daha Çıkmadı
         view Did Appear->Ortaya Çıktı - Gözüktü
         */
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view Will Appear")
        //Ortaya Çıkacak - Daha Çıkmadı
        textFieldPassword.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view Did Appear")
        //Ortaya Çıktı - Gözüktü
    }
    
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view Will Disappear")
        //Ortadan Kaybolacak
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view Did Disappear")
        //Görünüm Ortadan Kayboldu
    }
    
    @IBAction func CheckClickedButton(_ sender: Any) {
        receivedPassword = textFieldPassword.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.givenpassword = receivedPassword
        }
    }
}

