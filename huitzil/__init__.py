import sys

from .library import (
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

if sys.version_info[:2] < (3, 9):
    raise ImportError("Requires Python 3.9 or later")
del sys
