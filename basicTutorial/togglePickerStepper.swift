



import SwiftUI

struct togglePickerStepper: View {
    
    @State var isToggled: Bool = false
    @State var dtYear: String = "2023"
    @State var dtMonth: Int = 1
    @State var dtDay: Int = 1
    @State var bgColor: Color = Color.gray

    var body: some View {
        
        VStack(spacing: 10){
            Text("Today is \n\(dtDay)/\(dtMonth)/\(dtYear)")
            Image(systemName: isToggled ? "cloud.rain" : "sun.max")
                .foregroundColor(bgColor)
                .font(.title)
            
            Spacer()
            datePicker(dtDay: $dtDay)
            colorPicker(bgColor: $bgColor)
            Toggle(
                isOn: $isToggled,
                label: {
                    Text("rainning")
                }
            )
            .padding(.horizontal, 10)
            .padding(.vertical, 7)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(10)
            .toggleStyle(SwitchToggleStyle(tint: Color.mint))
            Spacer()

        }
       
    }
}

struct datePicker: View {
    
    @Binding var dtDay: Int
    var  body : some View{
        Picker(selection: $dtDay
           ,content: {
            //If ForEach contains closeRange, make them identifiable
            ForEach(1...30, id: \.self){ date in
                Text("\(date)")
                    .tag(date)
                    .foregroundColor(Color.gray)
                }
            }, label: {
                Text("Pick date!")
            }
        ).pickerStyle(.wheel)
    }
    
}

struct colorPicker: View {
    
    @Binding var bgColor: Color
    var body : some View{
        ColorPicker("Choose a Color!", selection: $bgColor)
            //RoundedRectangle(cornerRadius: 10)
        .padding(.horizontal, 10)
        .padding(.vertical, 7)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(10)
        
    }
}

struct togglePickerStepper_Previews: PreviewProvider {
    static var previews: some View {
        togglePickerStepper()
    }
}
