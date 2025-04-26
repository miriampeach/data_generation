from manim import *

class SquareToCircle(Scene):
    def construct(self):
        circle = Circle()
        circle.set_fill(BLUE, opacity=0.5)
        square = Square()
        square.set_fill(RED, opacity=0.5)

        self.play(Create(square))
        self.wait()
        self.play(Transform(square, circle))
        self.wait()