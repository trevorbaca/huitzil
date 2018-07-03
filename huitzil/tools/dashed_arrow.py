import baca


def dashed_arrow():
    return baca.ArrowLineSegment(
        dash_fraction=0.25,
        dash_period=1.5,
        left_broken_text=False,
        left_hspace=0.5,
        right_broken_arrow=False,
        right_broken_padding=0,
        right_padding=1.75,
        )
