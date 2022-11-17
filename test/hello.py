import ctypes
import sys

print(f"{sys.version=}")
print(f"{__file__=}")
print(f"{ctypes.__file__=}")

from pathlib import Path
print(Path.cwd().resolve())
