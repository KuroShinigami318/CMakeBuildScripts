from pathlib import Path
import subprocess

def execute():
    f = open('credentials', 'r')
    api_key = f.read().strip()
    f.close()
    owner = 'KuroShinigami318'
    script_path = Path(__file__).resolve()
    root_path = script_path.parent.parent
    libs_dep_relative_path = 'libs_dep.json'
    dependencies_folder_name = 'libs'
    subprocess.run(['python', f'scripts/getDeps.py', api_key, owner, libs_dep_relative_path, dependencies_folder_name], cwd=root_path, check=True)

def main():
    execute()

if __name__ == "__main__":
    main()