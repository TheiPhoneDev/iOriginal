//
//  ThemeView.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/19/24.
//

import SwiftUI



enum TintColor: Int, Identifiable, CaseIterable {
    var id: Self {self}
    case normal
    case blue
    case pink
    case red
    case orange
    case purple
    case yellow
    case black
    case green
    case white
    case cyan

}

extension TintColor {
    var title: LocalizedStringKey {
        switch self {
        case .normal:
            return("Default")
        case .blue:
            return("Blue")
        case .pink:
           return("Pink")
        case .red:
            return("Red")
        case .orange:
            return("Orange")
        case .purple:
            return("Purple")
        case .yellow:
            return("Yellow")
        case .black:
            return("Black")
        case .green:
            return("Green")
        case .white:
            return("White")
        case .cyan:
            return("Cyan")
        }
    }
    
    var color: Color {
        switch self {
        case .normal:
            return Color(.blue)
        case .blue:
            return Color(.blue)
        case .pink:
            return Color(.systemPink)
        case .red:
            return Color(.systemRed)
        case .orange:
            return Color(.systemOrange)
        case .purple:
            return Color(.systemPurple)
        case .yellow:
            return Color(.systemYellow)
        case .black:
            return Color(.black)
        case .green:
            return Color(.systemGreen)
        case .white:
            return Color(.white)
        case .cyan:
            return Color(.systemCyan)
        }
    }
}




enum Themes: Int, Identifiable, CaseIterable {
    var id: Self {self}
    case automatic
    case dark
    case light
   
}

extension Themes {
    var title: LocalizedStringKey {
        switch self {
        case .automatic:
            return("Automatic")
        case .dark:
           return("Dark")
        case .light:
            return("Light")
       
            
        }
    }
}


class TintColorSwitcher: ObservableObject {
    @AppStorage("TintColor") var tintColor: Int = TintColor.allCases.first!.rawValue

    var currentTintColor: Color? {
        guard let tintColor = TintColor(rawValue: tintColor) else {return nil}
        switch tintColor {
        case .normal:
            return .none
        case .blue:
            return .blue
        case .pink:
            return .pink
        case .red:
            return .red
        case .orange:
            return .orange
        case .purple:
            return .purple
        case .yellow:
            return .yellow
        case .black:
            return .black
        case .green:
            return .green
        case .white:
            return .white
        case .cyan:
            return .cyan
        default:
            return nil
        }
    }
}


struct ThemeView: View {
    
    @AppStorage("ThemeMode") private var themes: Int = Themes.allCases.first!.rawValue

    private var currentTheme: ColorScheme? {
        guard let theme = Themes(rawValue: themes) else {return nil}
        switch theme {
        
        case .dark:
            return .dark
        case .light:
            return .light
        default:
            return nil
        }
    }
    

    @StateObject var tint = TintColorSwitcher()
   
    
    @Environment(\.colorScheme) var colorScheme
    

    var body: some View {
        ZStack {
            VStack {
                List {
                    Picker("Theme", selection: $themes, content: {
                        ForEach(Themes.allCases) { theme in
                            Text(theme.title)
                                .tag(theme.rawValue)
                        }
                    }).pickerStyle(.inline)

                    
                    Picker("Tint Color", selection: tint.$tintColor, content: {
                        ForEach(TintColor.allCases) { tint in
                                    
                            HStack {
                                if tint.title == "White" {
                                    Circle()
                                     .fill(tint.color)
                                     .shadow(radius: 2)
                                     .frame(width: 30, height: 30)
                                } else {
                                    Circle()
                                     .fill(tint.color)
                                     .frame(width: 30, height: 30)
                                }
                                Text(tint.title)
                                    
                            }.tag(tint.rawValue)
                           
                        }
                    }).pickerStyle(.inline)

                }
            }
        }.navigationTitle("Theme")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ThemeView()
}
