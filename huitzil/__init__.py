import distutils.version
import platform

if not (
    distutils.version.LooseVersion("3.6")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.6.")
del distutils
del platform
from huitzil.tools import *
from huitzil.materials.instruments.definition import instruments
from huitzil.materials.metronome_marks.definition import metronome_marks
from huitzil.materials.pitch_classes.definition import pitch_classes
from huitzil.materials.registrations.definition import registrations
from huitzil.materials.time_signatures.definition import time_signatures
from huitzil import segments
