from getDeps import ReposManager

def execute():
    f = open('credentials', 'r')
    api_key = f.read().strip()
    f.close()
    owner = 'KuroShinigami318'
    libs_dep_relative_path = 'libs_dep.json'
    dependencies_folder_name = 'libs'
    reposManager = ReposManager(api_key, owner)
    reposManager.traverseAllDep(libs_dep_relative_path, dependencies_folder_name)

def main():
    execute()

if __name__ == "__main__":
    main()