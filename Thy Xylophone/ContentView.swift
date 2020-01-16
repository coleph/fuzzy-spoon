import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    var body: some View {
        // you have some sound file errors!!!
        VStack {
           
            ExtractedView()
                .padding(.horizontal, 8)
            Spacer()

            ExtractedView1()
                .padding(.horizontal, 15)
             Spacer()

            
            ExtractedView2()
                .padding(.horizontal, 22)
         Spacer()

            ExtractedView3()
                .padding(.horizontal, 29)
            
            ExtractedView4()
                .padding(.horizontal, 36)
            
            ExtractedView5()
                .padding(.horizontal, 42)
          
            ExtractedView6()
                .padding(.horizontal, 49)
     
           
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct ExtractedView: View {
    var body: some View {
        Button(action: {playSound(soundName: "C" )}) {
            ZStack {
                Rectangle()
                    .foregroundColor(.red)
                Text("C")
                
            }
            
            
        }
            
        .background(Color.red)
        .foregroundColor(Color.white)
    }
}

struct ExtractedView1: View {
    var body: some View {
        Button(action: {playSound(soundName: "D" )}) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color.orange)
                Text("D")
            }
        }
        .background(Color.orange)
        .foregroundColor(Color.white)
    }
}

struct ExtractedView2: View {
    var body: some View {
        Button(action: {
            
            playSound(soundName: "E" )}) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color.yellow)
                Text("E")
            }
        }
        .background(Color.yellow)
        .foregroundColor(Color.white)
    }
}

struct ExtractedView3: View {
    var body: some View {
        Button(action: {playSound(soundName: "F" )}) {
            ZStack{
                
                  Rectangle()
                    .foregroundColor(Color.green)
                Text("F")
            }
        }
        .background(Color.green)
        .foregroundColor(Color.white)
    }
}

struct ExtractedView4: View {
    var body: some View {
        Button(action: {playSound(soundName: "G" )}) {
            ZStack{
                Rectangle()
                    .foregroundColor(Color.blue)
                Text("G")
                
            }
        }
        .background(Color.blue)
        .foregroundColor(Color.white)
    }
}

struct ExtractedView5: View {
    var body: some View {
        Button(action: {playSound(soundName: "A" )}) {
            ZStack{
                Rectangle()
                    .foregroundColor(Color.init(red: 0.0, green: 0.1, blue: 1.0))
                Text("A")
            }
        }
        .background(Color(red: 0.3, green: 0.0, blue: 1.0, opacity: 1.0))
        .foregroundColor(Color.white)
    }
}

struct ExtractedView6: View {
    var body: some View {
        Button(action: {playSound(soundName: "B" )}){
        ZStack{
            
            Rectangle()
                .foregroundColor(Color.purple)
            Text("B")
        }
        }
        .background(Color.purple)
        .foregroundColor(Color.white)
    }
    
}
func playSound(soundName: String) {
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
}
