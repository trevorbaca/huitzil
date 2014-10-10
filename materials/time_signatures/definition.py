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

counts = [5, 5, 5, 5, 5, 5, 5, 5, 8]
partition = sequencetools.partition_sequence_by_counts
numerator_lists = sequencetools.partition_sequence_by_counts(
    numerators,
    counts,
    )
assert len(numerator_lists) == 9

def numerator_to_time_signature(numerator):
    if mathtools.is_integer_equivalent_number(numerator):
        time_signature = TimeSignature((numerator, 8))
    else:
        time_signature = TimeSignature((int(2 * numerator), 16))
    return time_signature

time_signatures = []
for numerator_list in numerator_lists:
    time_signature_list = [
        numerator_to_time_signature(_) for _ in numerator_list]
    time_signatures.append(time_signature_list)

assert len(time_signatures) == 9
pairs = []
for time_signature_list in time_signatures:
    length = len(time_signature_list)
    duration = sum([_.duration for _ in time_signature_list])
    pair = (length, duration)
    pairs.append(pair)

assert pairs[0] == (5, Duration(20, 8))
assert pairs[1] == (5, Duration(25, 8))
assert pairs[2] == (5, Duration(41, 16)) # 20.5 / 8
assert pairs[3] == (5, Duration(45, 16)) # 22.5 / 8
assert pairs[4] == (5, Duration(17, 8))
assert pairs[5] == (5, Duration(24, 8))
assert pairs[6] == (5, Duration(22, 8))
assert pairs[7] == (5, Duration(20, 8))
assert pairs[8] == (8, Duration(33, 8))