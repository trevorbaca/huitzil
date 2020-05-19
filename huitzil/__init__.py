import distutils.version
import platform

from .ScoreTemplate import ScoreTemplate
from .materials import (
    instruments,
    metronome_marks,
    pitch_classes,
    registrations,
    time_signatures,
)
from .tools import DreamsMusicMaker

__all__ = [
    "ScoreTemplate",
    "DreamsMusicMaker",
    "instruments",
    "metronome_marks",
    "pitch_classes",
    "registrations",
    "time_signatures",
]

if not (
    distutils.version.LooseVersion("3.7")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.7.")
del distutils
del platform
