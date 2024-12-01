//
//  ContentCard.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 11/25/24.
//


// STILL IN CONSTRUCTION

import SwiftUI

struct MainView: View {
    @Namespace private var animation
    @State private var showDetail = false
    
    var body: some View {
        ZStack {
            // Background to dismiss the detail view
            if showDetail {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                            showDetail.toggle()
                        }
                    }
            }
            
            if !showDetail {
                // The Card View
                ContentCardView(showDetail: $showDetail)
                    .matchedGeometryEffect(id: "contentCard", in: animation)
                    .padding()
                    .zIndex(1)
            } else {
                // Detail View expanded
                ContentDetailView()
                    .matchedGeometryEffect(id: "contentCard", in: animation)
                    .transition(.opacity)
                    .zIndex(2)
            }
        }
    }
}

struct ContentCardView: View {
    @Binding var showDetail: Bool
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                Image("contentCardHeader") // Replace with your image asset name
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                
                Text("Inside the World of High School Mascots")
                    .font(.headline)
                    .padding(.top, 8)
                
                Text("12 hr ago")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Image(systemName: "newspaper") // Placeholder icon
                    Text("New York Times")
                        .font(.subheadline)
                }
                .padding(.top, 4)
                .foregroundColor(.secondary)
            }
            .padding()
            .onTapGesture {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    showDetail.toggle()
                }
            }
        }
        .background(RoundedRectangle(cornerRadius: 16).fill(Color.white))
        .shadow(radius: 5)
    }
}

struct ContentDetailView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("contentCardHeader")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 24))
            
            Text("Inside the World of High School Mascots")
                .font(.largeTitle)
                .padding(.top, 8)
                .padding(.bottom, 12)
            
            Text("12 hr ago")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.bottom, 12)
            
            Text("""
                 Mackenzie Barnes has been a cheerleader since she was 10, so she’s used to being in front of crowds and getting fans excited for games. But last year, when Mackenzie, who is 15, became the mascot for her high school in Lancaster, Ohio, the job of making people cheer took on a new twist. Now, people are yelling hername.
                 Well … sort of. “Everyone is like, ‘Go see Gusto!’” Mackenzie says.
                 From high school sports to college programs to professional teams, mascots play a key role, bringing spectators into the fold of games. “A mascot gives the opportunity for connection,” says Jerome Bartlett, a mascot trainer and consultant who is based in Texas. “The purpose is to serve as a bridge between the fans in the stands and the players on the field, court,or ice.”
                 It’s hard work. But for the students who play school mascots, it’s also just … fun. “Being a mascot is like being a celebrity,” Bartlett says. “Everyone wants to see you. They are happy to see you. They want to take a photo with you and engage with you.”
                 To get a view from inside the foam heads, The New York Times for Kids tagged along with three high school mascots from around the United States on game day. Here’s what they had to say about the job.
                 """)
                .font(.body)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(32)
        .shadow(radius: 5)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
