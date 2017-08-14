import distutils.version
import platform
if not (
    distutils.version.LooseVersion('3.5') <
    distutils.version.LooseVersion(platform.python_version())
    ):
    raise ImportError('Requires Python 3.5.')
del distutils
del platform
from huitzil.tools import *
from huitzil.materials import *
from huitzil import segments
from huitzil import MarkupLibrary as markup
