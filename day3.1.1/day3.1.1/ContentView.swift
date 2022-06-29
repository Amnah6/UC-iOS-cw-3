//
//  ContentView.swift
//  day3.1.1
//
//  Created by Amnah Ali on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var mark = ""
    @State var result = ""
    var body: some View {
        
   VStack{
    
    Text(" حاسبة الدرجات ")
        Spacer()
      // .padding()
       
       Image("calculator")
       //Spacer()
       TextField("ادخل درجتك", text: $mark)
      // Spacer()
       
       Text("احسب درجتك")
           .onTapGesture {
               if Int(mark)! >= 90 {
                   result = "ممتاز"
                                }
               else if Int(mark)! >= 80 {
                   result = "جيد جيداً"
               }
               else if Int(mark)! >= 70 {
                   result = "جيد"
               }
               else if Int(mark)! >= 60 {
                   result = "مقبول"
               }
               else {
                   result = "راسب"
               }
                
           }
       Text( result )
       Spacer()

            
        }.background(.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
