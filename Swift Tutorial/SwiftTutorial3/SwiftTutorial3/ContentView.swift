//
//  ContentView.swift
//  SwiftTutorial3
//
//  Created by Sena Kurtak on 10.04.2022.
//

import SwiftUI
import Foundation
struct ContentView: View{
    
    
    // back end kodu
    var name = "Sena"
    var surname = "Kurtak"
    var city = "İstanbul"
    
    init(){
        fullName(name: "Sena", surname: "Kurtak")
        calcKDV(price: 100)
        calcKDVif(priceIf: -390)
        aDetecter(metinInput: "Sena")
        oddOrEven(number: 90)
        //Alıştırmalar
        ucSayiKarsilastir(number1: 27, number2: 81, number3: 101)
        dortSayiOrtalama(number1: 524, number2: 6, number3: 786, number4: 987)
        ilkUcHarfiDondur(metin: "KADİR")
        dorttenBuyukMu(number: 89)
        kacTaneEvar(metin: "Zahide")
//        harfDegisimi(metin: "tamam")
        dereceDegisim(sicaklikCelcius: 856)
        dizileriBirlestir(dizi1: [3,5,6,8], dizi2: [9,10,11,12])
        uceBolunuyorMu(sayi: 34)
    }

        
// HW-1) Dışarıdan üç sayı alan ve bu sayılardan en büyüğünü döndüren fonksiyon.
        func ucSayiKarsilastir (number1: Int, number2: Int, number3: Int) -> String{
            if number1>number2 && number1>number3{
                return "\(number1) en büyük sayıdır"
            }else if number2>number1 && number2>number3{
                return "\(number2) en büyük sayıdır"
            }else{
                return "\(number3) en büyük sayıdır"
            }
        }
//HW-2) Dışarıdan 4 sayı alan ve bu sayıların ortalamasını dönen fonksiyon
    func dortSayiOrtalama(number1: Int, number2: Int, number3: Int, number4: Int) -> Int{
        let ortalama = (number1 + number2 + number3 + number4)/4
        return ortalama
    }
//HW-3) Dışarıdan bir metin alan aldığı metnin sadece ilk üç harfini döndüren fonksiyon.
    func ilkUcHarfiDondur(metin : String){
        for (index, char) in metin.enumerated(){
            print(char)
            if index == 2 {
                break
            }
        }
    }
//HW-4) Dışarıdan bir isim dizisi alan ve isimleri tek tek print edenfonksiyon
//HW-5) Dışarıdan bir isim dizisi alan, ismin uzunluğu 4 den büyükse print eden fonksiyon.
    func dorttenBuyukMu(number: Int){
        if number > 4 {
            print("Bu sayı 4'ten büyüktür.")
        }
    }
// HW-6) Dışarıdan bir metin alan ve aldığı metinde kaç adet "e" harfi olduğunu söyleyen fonksiyon.
    func kacTaneEvar(metin: String){
        var eSayac = 0
        for i in metin{
            if i == "e"{
                eSayac += 1
            }
        }
        print(eSayac)
    }

// HW-7) Dışarıdan bir metin alan aldığı metnin sadece ilk harfini büyük diğer harflerini küçük yazacak şekilde yeni bir metin oluşturarak dönen fonksiyon.
    func harfDegisimi(metin:String) -> String{
        return metin.capitalized
    }
    
//HW-8) Dışarıdan iki tane ayrı isim dizisi alan ve bu dizileri birleştirip tek dizi olarak bana dönen metot
    func dizileriBirlestir(dizi1 : [Int], dizi2: [Int]){
        let dizi3 = dizi1 + dizi2
        print(dizi3)
    }
    
//    9) Dışarıdan bir int sayı alan ve bu sayıya kadar 3 e bölünebilen sayıları ekrana yazan metot. Örneğin dışarıdan 20 aldıysa "3", "6", "9" şeklinde ekrana yazacak
    func uceBolunuyorMu(sayi:Int){
        for i in 1...sayi{
            if i % 3 == 0{
                print(i)
            }
        }
    }
    
//HW-10) Dışarıdan aldığı Celcius( derece ) yi Fahrenayta çevirip bana veren metot
    func dereceDegisim(sicaklikCelcius:Int){
        let sicaklikFahrenayt = sicaklikCelcius*(9/5) + 32
        print(sicaklikFahrenayt)
    }
    
    
    // DERS İÇİ ALIŞTIRMALAR
// Dışarıdan bir int dizisi alan ve bu dizide kaç tane tek sayı olduğunu bana söyleyen fonksiyon
        func calcArray(numberArray: [Int]) -> Int {
            var sayac = 0
            for item in numberArray{
                if item % 2 == 1 {
                    sayac = sayac + 1
                }
            }
            return sayac
        }
// avgThreeNumber(number1: 781, number2: 725, number3: 79)
    
    var body: some View {
        // front end kodu
        Text(name)
            .padding()
    }
// Dışarıdan aldığı 3 sayının ortalamasını bana veren metot
        func avgThreeNumber(number1: Int, number2: Int, number3: Int) -> Double {
            let result : Double = Double(number1 + number2 + number3) / 3.0
            return result
        }
// Dışarıdan bir sayı alan aldığı sayıyı tekse "TEK SAYI" değilse "ÇİFT SAYI" şeklinde metin retun eden metot
    
    func oddOrEven(number:Int) -> String{
        if number % 2 == 0{
            return "ÇİFT SAYI"
        } else {
            return "TEKSAYI"
        }
    }
    
// Dışarıdan aldığı yarıçapla dairenin alanını hesaplayıp bana veren metot
    
    func calCircle(r:Double) -> Double{
        let result = Double.pi * r * r
        return result
    }
    
    // Verilen yarıçapla çemnberin uzunluğunu bulalım

    func lengthCircle(r:Double) -> Double {
        let result = Double.pi*r*2
        return result
    }
    
   
    
    // 1)200 den büyükse 1.18, küçükse 1.08
    func calcKDVif(priceIf: Double) {
        if priceIf > 200.00 {
            let priceIf118 = priceIf * 1.18
            print(priceIf118)
        } else if priceIf < 200 && priceIf > 0{
            let priceIf108 = priceIf * 1.08
            print(priceIf108)
        } else if priceIf < 0 {
            print("Böyle bir fiyat olamaz!")
        }
    }
    
    
    // 2) Alınan iki sayının toplamının karelerini ekrana yazdır
    func calcSquare(number1: Double, number2: Double){
        let square = (number1 * number1) + (number2 * number2)
        print(square)
    }
    // 3) Dışarıdan aldığı metinde kaç adet a harf olduğunu ekrana yazsın.
    func aDetecter(metinInput:String){
        var aSayac = 0
        for harf in metinInput.lowercased(){
            if harf == "a" {
                aSayac += 1
            }
        }
        print(aSayac)
    }
    
    func calcKDV(price:Double){
        let KDVprice = price * 1.18
        print(KDVprice)
    }
    
    func fullName(name:String, surname: String){
        let full = name + " " + surname
        print(full)
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
