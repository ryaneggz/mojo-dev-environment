# Quick Start Guide to Mojo Programming Language

Welcome to the Quick Start Guide for the Mojo Programming Language. This guide is designed to jumpstart your Mojo programming journey, covering the installation process, the basics of using the Mojo development environment, and key features like the Engine and Car structs. Let's dive into creating projects, debugging, and compiling in Mojo.

## Installation

To begin, you'll need to install the Mojo Development Environment on your computer. Follow these steps:

1. Visit the official documentation at https://docs.modular.com/mojo/manual/get-started.
2. Follow the step-by-step installation instructions for your operating system.

## Creating Your First Mojo Program

Mojo allows you to define complex structures and functions with ease. Here's an example that introduces you to the Engine and Car structs:

```mojo
@value
struct Engine:
    var type: String
    var horsepower: Int
    fn __init__(inout self, type: String, horsepower: Int):
        self.type = type
        self.horsepower = horsepower

struct Car:
    var make: String
    var model: String
    var year: Int
    var engine: Engine
    fn __init__(inout self, make: String, model: String, year: Int, engine: Engine):
        self.make = make
        self.model = model
        self.year = year
        self.engine = engine
    fn get_car_info(self) -> String:
        return "Car: " + self.make + " " + self.model + " " + String(self.year) + " Engine: " + self.engine.type + " " + String(self.engine.horsepower)

fn main():
    var my_engine = Engine("V8", 400)
    var my_car = Car("Chevy", "Camaro", 2022, my_engine)
    print(my_car.get_car_info())
```

This program demonstrates defining custom types (structures) and initializing them with specific values. The main function creates an Engine and a Car with that engine, then prints information about the car.

## Debugging with VSCode

Mojo supports debugging via VSCode, making it easier to troubleshoot and refine your programs. Set up your debugging environment by creating a launch.json file in the .vscode folder at the root of your project. This file should specify the Mojo debugger configuration. Detailed instructions on setting up debugging can be found in the Mojo documentation.

## Compiling Your Program

To compile your Mojo program into a binary, use the following command in your terminal:

```bash
mojo build main.mojo
```

Replace main.mojo with the path to your Mojo program file. This command compiles your program, allowing you to run it as a standalone application.

## Further Learning

The example provided is just the beginning. Mojo's capabilities extend far beyond simple structs and functions. Explore the Mojo documentation for comprehensive guides, advanced features, and best practices to enhance your programming skills in Mojo.

With Mojo installed and a basic program under your belt, you're well on your way to developing complex applications. Remember to utilize the mojo build command for compiling your projects and leverage the VSCode debugger for an efficient development process. Happy coding!