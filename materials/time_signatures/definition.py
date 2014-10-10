# -*- encoding: utf-8 -*-
from abjad import *
import baca


def make_numerators(numerators, addenda):
    numerators = baca.utilities.helianthate(numerators, -1, 1)
    numerators = sequencetools.flatten_sequence(numerators)
    length = len(numerators)
    addenda = sequencetools.repeat_sequence_to_length(addenda, length)
    pairs = zip(numerators, addenda)
    numerators = [sum(_) for _ in pairs]
    return numerators

numerators = [[3, 3, 4], [3, 5, 6], [3, 7]]
addenda = [0, 0, 0.5, 0.5, 1, 1, 0, 0, -0.5, -0.5, -1, -1]
numerators = make_numerators(numerators, addenda)
assert len(numerators) == 48
assert sum(numerators) == 204

def numerator_to_time_signature(numerator):
    if mathtools.is_integer_equivalent_number(numerator):
        time_signature = TimeSignature((numerator, 8))
    else:
        time_signature = TimeSignature((int(2 * numerator), 16))
    return time_signature

time_signatures = []
for numerator in numerators:
    time_signature = numerator_to_time_signature(numerator)
    time_signatures.append(time_signature)