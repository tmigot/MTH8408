# 1st lab

Welcome in our first lab session \:smiley: . The aim of this first session is to:
- Exercise 1: check that we have everything installed to code in Julia, i.e. VS Code, Julia, and Github.
- Exercise 2: Use a Jupyter notebook.
- Exercise 3: Run over the basics in Julia
- Exercise 4: manage Julia package manager
- Exercise 5: use JuMP to model an optimization problem, and use a solver.
- Exercise 6: use ADNLPModels to model an optimization problem, and use a solver.

## Exercise 1-a: VS Code & Julia

-[ ] start VS Code
-[ ] In the left menu, "Extensions" install the *Julia* app. Note that VS Code works with different applications you can install for various use.
-[ ] Start a terminal, menu *Terminal -> New Terminal*, and run the following command `julia`. This will start Julia and we can make our first command:
```
print("Hello World")
```
Bonus question:
-[ ] Try this code in Julia: `😃`

## Exercise 1-b: Github

-[ ] Create a Github account.
-[ ] Go to [https://github.com/tmigot/MTH8408](https://github.com/tmigot/MTH8408)
-[ ] Start the repository :), and make a *Fork*. A *Fork* will create a copy of this repository on your personal space that you can safely modify.

In VS Code:
-[ ] Follow this procedure to connect github and VS Code: [https://code.visualstudio.com/docs/editor/github](https://code.visualstudio.com/docs/editor/github) (install the app and log in)
-[ ] We will now *clone* this repository on your computer. In VS Code:
    * Open the command palette with the key combination of Ctrl + Shift + P .
    * At the command palette prompt, enter gitcl , select the Git: Clone command, and press Enter.
    * When prompted for the Repository URL, select clone from GitHub, i.e. https://github.com/your_username/MTH8408, then press Enter.

At the end of the day, you should have a copy of this repository on your machine.

## Exercise 2: Make a Jupyter Notebook

In Julia, there are three ways to run/show codes.
-[ ] You can code directly in the terminal (partical to test small things)
-[ ] right your code in a file ending with .jl and include in the terminal: `julia> include("name_of_your_file.jl")`
-[ ] run a Jupyter notebook.
```
] add IJulia
using IJulia
notebook()
```
The last command will start a new window of your favorite browser where you can do everything. Notebooks are a user-friendly of communicating codes with explanations.
-[ ] Create a code with a nice title and the usual hello world. Note that the text formatting is in markdown here, see [https://www.markdownguide.org/cheat-sheet/](https://www.markdownguide.org/cheat-sheet/)

## Exercise 3: Make a Jupyter Notebook

The following references will help us navigating in Julia:
- 
- 
- 

In Julia, the documentation is either accessible online, ALL the packages are on Github, or you can use `?` in the Julia REPL (terminal).

**List of small exercises in Julia**

## Exercise 4: Julia package manager

To use a package and the functions in this package, in Julia, we use `using Name_of_the_package`.
Some of these packages are accessible natively, for instance `LinearAlgebra`.
However, some other packages, needs to be installed.

Julia has a package environment accessible with `]` (everything becomes blue instead of green). You can go back with `RETURN`.

-[ ] Install the package `Plots`
```
using Pkg; Pkg.add("Plots")
```
or
```
] add Plots
```
This will add the package `Plots` in your environment, and you can then do `using Plots`.
-[ ] It is possible to know the packages in your current environment with `status`:
```
] status
```
This is especially important to check the versions of the different packages you are using.
-[ ] You can remove a package using `rm`, or ask Julia to update the packages with `update`.
-[ ] To install a specific version of a package use `pin`.
```
] pin ADNLPModels@v0.3.1
```
If this is impossible, because of version constraints between the different packages in your environment, Julia will let you know.
-[ ] Environements cloisonnes

## Exercise 5: JuMP

## Exercise 6: ADNLPModels
