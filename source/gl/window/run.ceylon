import org.lwjgl {
	LWJGLException
}
import org.lwjgl.opengl {
	Display,
	DisplayMode
}

"Run the module `gl.window`."

shared class DisplayExample() {
	shared void start() {
		try{
			Display.setDisplayModeAndFullscreen(DisplayMode(800,600));
			Display.create();
		} catch (LWJGLException e) {
			e.printStackTrace();
		}
		//init OpenGL here
		while (!Display.closeRequested){
			//render OpenGL here
			Display.update();			
		}
		
		Display.destroy();
	}
	
}

shared void run() {
	DisplayExample displayExample = DisplayExample();
	displayExample.start();
}
