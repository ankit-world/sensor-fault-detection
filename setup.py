from setuptools import find_packages,setup
from typing import List

# def get_requirements()->List[str]:
#     """
#     This function will return list of requirements
#     """
#     requirement_list:List[str] = []
#     with open('requirements.txt', 'r') as f:
#         lines = f.readlines()
#         for line in lines:
#             requirement_list.append(line.strip())
#     return requirement_list

setup(
    name="sensor",
    version="0.0.1",
    author="Ankit Marwaha",
    author_email="ankitmarwaha8@gmail.com",
    packages = find_packages()
    #install_requires=get_requirements()#["pymongo==4.2.0"],
)