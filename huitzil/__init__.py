import distutils.version
import platform

from .tools import (
    DreamsMusicMaker,
    ScoreTemplate,
    instruments,
    metronome_marks,
    pitch_classes,
    registrations,
)

__all__ = [
    "ScoreTemplate",
    "DreamsMusicMaker",
    "instruments",
    "metronome_marks",
    "pitch_classes",
    "registrations",
]

if not (
    distutils.version.LooseVersion("3.7")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.7.")
del distutils
del platform
