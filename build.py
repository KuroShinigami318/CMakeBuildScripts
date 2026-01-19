import argparse
import os
from pathlib import Path
import subprocess
import genPrj
import repoInit

def execute(config):
    script_path = Path(__file__).resolve()
    folder_path = script_path.parent.parent
    build_path = folder_path / 'build'
    lib_path = folder_path / 'libs'
    if not os.path.exists(lib_path):
        repoInit.execute()
    if not os.path.exists(build_path):
        genPrj.execute()
    if config == None:
        print("No config specified, using Release")
        config = 'Release'
    subprocess.run(['cmake', '--build', str(build_path), '--config', config], check=True)

def main():
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('config', nargs='?', default='Release', help='Build configuration (Release/Debug)')
    args = parser.parse_args()
    execute(args.config)

if __name__ == "__main__":
    main()
