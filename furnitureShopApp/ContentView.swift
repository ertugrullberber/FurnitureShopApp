//
//  ContentView.swift
//  furnitureShopApp
//
//  Created by Ertugrul Berber on 6.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var search: String = ""
    
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
    var body: some View {
        ZStack{
            Color("ab")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Button(action: {}){
                        Image("menuicon")
                            .resizable()
                            .frame(width: 42, height: 42)
                            .cornerRadius(10.0)
                            .padding()
                    }
                    Spacer()
                    Button(action: {}) {
                        Image("pppp")
                            .resizable()
                            .frame(width: 42, height: 42)
                            .cornerRadius(10.0)
                            .padding()
                    }
                }.padding(.horizontal)
                HStack{
                    VStack{
                        Text("Find the best")
                            .font(.system(size: 28).italic())
                            .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                        Text(" Furniture!    ")
                            .font(.system(size: 28).bold().italic())
                            .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                    }
                    .rotation3DEffect(.degrees(40), axis: (x: 1, y: 0, z: 0))
                        .shadow(color: .brown ,radius: 2, x: 0 , y: 10)
                }
                HStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing, 8)
                        TextField("Search Furniture",text: $search)
                    }
                    .padding(.all , 20)
                    .background(Color.white)
                        .cornerRadius(10)
                        .padding(.trailing)
                    
                    Button(action: {}) {
                        Image(systemName: "barcode.viewfinder")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.33, green: 0.26, blue: 0.10))
                            .cornerRadius(10.0)
                    }
                }.padding(.horizontal)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(categories, id: \.self){
                            Text($0)
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .padding()
                                .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                .clipShape(Capsule())
                                .frame(width: 80, height: 50)
                        }
                    }
                }
                ScrollView(.vertical){
                    HStack{Text("Populer")
                            .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                            .bold()
                            .italic()
                            .font(.title)
                            .padding(.horizontal)
                            .frame(width: 380, alignment: .leading)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal){
                        HStack{
                            VStack{
                                Image("chair")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Swedian Chair")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$1299")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("table")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Swedian Table")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$4998")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("sofaa")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Swedian Sofa")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$5999")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("lamp")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Swedish Lamp")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$499")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                        }.padding()
                    }
                    HStack{Text("Best")
                            .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                            .bold()
                            .italic()
                            .font(.title)
                            .padding(.horizontal)
                            .frame(width: 380, alignment: .leading)
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            VStack{
                                Image("kitchen")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Kitchen")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$19999")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("chair")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Swedian Chair")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$1299")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("sofa")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Chair")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$6999")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            VStack{
                                Image("chair")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20.0)
                                Text("Luxury Swedian Chair")
                                    .foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                                    .frame(width: 200, height: 20)
                                    .font(.title3)
                                HStack(spacing: 2){
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.yellow)
                                    }
                                    Spacer()
                                    Text("$1299")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                            .frame(width: 210)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                        }.padding()
                    }
                }
                HStack{
                    Button(action: {}, label:{
                        Image(systemName:"house")
                            .frame(maxWidth: .infinity)
                    }).foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                    Button(action: {}, label:{
                        Image(systemName:"heart")
                            .frame(maxWidth: .infinity)
                    }).foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                    Button(action: {}, label:{
                        Image(systemName:"cart")
                            .frame(maxWidth: .infinity)
                    }).foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                    Button(action: {}, label:{
                        Image(systemName:"person")
                            .frame(maxWidth: .infinity)
                    }).foregroundColor(Color(red: 0.33, green: 0.26, blue: 0.10))
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                
        }.background(Color(red: 0.96, green: 0.96, blue: 0.96))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
