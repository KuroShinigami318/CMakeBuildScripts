import subprocess
from pathlib import Path

def execute():
    script_path = Path(__file__).resolve()
    folder_path = script_path.parent.parent
    build_path = folder_path / 'build'
    subprocess.run(['cmake', f'-S{folder_path}', f'-B{build_path}'], check=True)

if __name__ == "__main__":
    execute()