
========================================================================
                PLEASE

        --->  DO NOT TOUCH  <---

            YOU *WILL* BREAK SOMETHING


        --->  I'M LEAVING IT OPEN ON PURPOSE  <---

            THANK YOU


========================================================================



PROBLEM:
the visuals of the imGui break anytime i make a new imgui window thing. the buttons still work even though i cant 
see what im clicking. the only time it worked visually is when i made a demo window and even then it would break if 
i clicked an option on the top bar of the imgui window.

MAYBE SOLUTIONS IDK:
the problem has to be with OpenGl, not imgui, its gonna take awhile to try to fix but try your best T-T

it might also be something being called multiple times idk













========================================================================

NOTES:

========================================================================
FOR MAKING SQUARES I THINK
========================================================================
VAO: Vertex Array Object
VBO: Vertex Buffer Object
EBO: Element Buffer Object
========================================================================

private float[] vertexArray = {
        //position (x,y,z)      //color (r,g,b,a)
        0.5f, -0.5f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f, // bottom right  0
       -0.5f,  0.5f, 0.0f,     0.0f, 1.0f, 0.0f, 1.0f, // top left      1
        0.5f,  0.5f, 0.0f,     0.0f, 0.0f, 1.0f, 1.0f, // top right     2
       -0.5f, -0.5f, 0.0f,     1.0f, 1.0f, 0.0f, 1.0f, //bottom left    3
    };

    // IMPORTANT: must be in counter-clockwise order
    /*
     *              *1           *2
     * 
     * 
     * 
     *              *3           *0
     */

    private int[] elementArray = {
        2, 1, 0, // top right triangle
        0, 1, 3 // bottom left triangle
    };

========================================================================