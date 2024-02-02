# 3D Outline Shader for Godot #

Simple 3D outline shader, which is easy to use.

# How to use? #
Add **shad_Outline.gdshader** as the **next_pass** of the **material**, of **object** you want **with outline** effect.
![Inspector Screenshot](https://i.imgur.com/Kzkprpe.png)

# Options #
* **Enable:** turn outline off and on (default: true)
* **Use Vertex:** use vertex or normal data when calculating outline  (default: true)
* **Outline Thickness:** change outline strength (default: 0.01)
* **Outlince Color:** choose the color of your outline (default: black / 0, 0, 0, 1)

# Differnce between using Vertex and Normal data #
### On models with rounded edges (for example low-poly human model): ###
* **UseVertex ON:**
![Human_VertexON](https://imgur.com/NL3VE8f.png)
* **UseVertex OFF:**
![Human_VertexOFF](https://imgur.com/pLWrSLn.png)
### On models with sharp edges (for example cuboid): ###
* **UseVertex ON:**
![Cuboid_VertexON](https://imgur.com/UjC03wh.png)
* **UseVertex OFF:**
![Cuboid_VertexOFF](https://imgur.com/SUA0STE.png)


### In short: ###
Using vertex data is better for models with sharp edges, but normal data is better for models with rounded edges. Choose what suits your needs better.
