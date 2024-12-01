struct ContentView: View {
    var body: some View {
        VStack {
            drawInsetShape(shape: Circle(), insets: 10)
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)

            drawInsetShape(shape: Rectangle(), insets: 5)
                .frame(width: 100, height: 50)
                .foregroundColor(.green)
        }
    }
}

extension Circle: InsettableShape {
    func inset(by amount: CGFloat) -> some InsettableShape {
        return Circle().inset(by: amount)
    }
}

extension Rectangle: InsettableShape {
    func inset(by amount: CGFloat) -> some InsettableShape {
        return Rectangle().inset(by: amount)
    }
}
