//
//  HoverEffectIcon.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

struct HoverEffectIcon : View {
    let iconName:String
    var color: Color = .white
    var onTap: (()->Void)? = nil

    @State var hovering:Bool = false
    @GestureState private var isPressing = false
     
    
    
    var body: some View {
        ZStack{
            Image(iconName)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 24,height: 24)
                .padding(.horizontal,6)
                .foregroundColor(hovering || isPressing ? color : .gray)
        }
        .frame(width: 48,height: 48)
        .background(
            isPressing ?
            Circle()
                .foregroundColor(.white.opacity(0.1)) : nil
            )
        .onHover{ hovering in
            withAnimation{
                self.hovering = hovering
            }
        }
        .gesture(
            LongPressGesture(minimumDuration: 1.0)
                .updating($isPressing) { value, state, transaction in
                    state = value
                }
                .simultaneously(with: TapGesture().onEnded{ 
                    onTap?();
                })
        )
    
    }
}

#Preview {
    HoverEffectIcon(iconName: "ic_close")
}
