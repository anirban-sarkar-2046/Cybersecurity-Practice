import os

def current_directory():
    cwd = os.getcwd()
    print(cwd)

def file_path(filename):
    path = os.path.abspath((filename))
    print(path)

current_directory()
filename= "os_library.py"
file_path(filename)



