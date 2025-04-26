from manim import *

class GrowingCircle(Scene):
    def construct(self):
        circle = Circle()
        circle.set_fill(BLUE, opacity=0.5)
        
        self.play(Create(circle))
        self.play(circle.animate.scale(2))
        self.wait()
