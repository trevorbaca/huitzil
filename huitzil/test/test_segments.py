## -*- coding: utf-8 -*-
#import os
#import pytest
#import shutil
#import huitzil
#import ide
#from abjad.tools import systemtools
#pytest.skip('possibly deprecated in favor of test/illustrate_segments.py')
#
#
#configuration = ide.tools.idetools.AbjadIDEConfiguration()
#boilerplate_path = configuration.abjad_ide_boilerplate_directory
#boilerplate_path = os.path.join(boilerplate_path, '__illustrate_segment__.py')
#
#segments_path = os.path.join(huitzil.__path__[0], 'segments')
#
#directory_names = os.listdir(segments_path)
#directory_names = [_ for _ in directory_names if not _.startswith(('.', '_'))]
#
#segment_paths = [os.path.join(segments_path, _) for _ in directory_names]
#segment_paths = [_ for _ in segment_paths if os.path.isdir(_)]
#
#@pytest.mark.parametrize('segment_path', segment_paths)
#def test_segments_01(segment_path):
#    r'''Illustrates segments.
#    '''
#    
#    local_boilerplate_path = os.path.join(
#        segment_path,
#        '__illustrate_segment__.py',
#        )
#    illustration_ly_path = os.path.join(
#        segment_path,
#        'illustration.ly',
#        )
#    illustration_pdf_path = os.path.join(
#        segment_path,
#        'illustration.pdf',
#        )
#    illustration_candidate_ly_path = os.path.join(
#        segment_path,
#        'illustration.candidate.ly',
#        )
#    illustration_candidate_pdf_path = os.path.join(
#        segment_path,
#        'illustration.candidate.pdf',
#        )
#
#    if os.path.exists(local_boilerplate_path):
#        os.remove(local_boilerplate_path)
#
#    with systemtools.FilesystemState(
#        keep=[illustration_ly_path, illustration_pdf_path],
#        remove=[local_boilerplate_path],
#        ):
#        shutil.copyfile(boilerplate_path, local_boilerplate_path)
#        ide.tools.idetools.AbjadIDE._replace_in_file(
#            local_boilerplate_path,
#            'PREVIOUS_SEGMENT_METADATA_IMPORT_STATEMENT',
#            'previous_segment_metadata = None',
#            )
#        assert os.path.exists(local_boilerplate_path)
#        assert not os.path.exists(illustration_candidate_ly_path)
#        assert not os.path.exists(illustration_candidate_pdf_path)
#        command = 'python {}'.format(local_boilerplate_path)
#        exit_status = systemtools.IOManager.spawn_subprocess(command)
#        assert exit_status == 0
#        assert os.path.exists(illustration_candidate_ly_path)
#        assert os.path.exists(illustration_candidate_pdf_path)
#        shutil.move(illustration_candidate_ly_path, illustration_ly_path)
#        shutil.move(illustration_candidate_pdf_path, illustration_pdf_path)



# -*- coding: utf-8 -*-
from __future__ import print_function
import os
import pytest
import sys
import traceback
import ide
abjad_ide = ide.tools.idetools.AbjadIDE()


if __name__ == '__main__':
    this_file = os.path.abspath(__file__)
    test_directory = os.path.dirname(this_file)
    inner_score_directory = os.path.dirname(test_directory)
    outer_score_directory = os.path.dirname(inner_score_directory)
    composer_scores_directory = os.path.dirname(outer_score_directory)
    # Travis monkey patch
    abjad_ide._configuration._composer_scores_directory_override = \
        composer_scores_directory
    segments_directory = abjad_ide._to_score_directory(this_file, 'segments')
    segment_directories = abjad_ide._list_visible_paths(segments_directory)

    # not parameterized to print keep-alive message to Travis log
    for segment_directory in segment_directories:
        message = 'Checking {} definition file ...'
        message = message.format(abjad_ide._trim_path(segment_directory))
        print(message)
        try:
            abjad_ide.check_definition_file(segment_directory)
        except:
            traceback.print_exc()
            sys.exit(1)

    # not parameterized to print keep-alive message to Travis log
    for segment_directory in segment_directories:
        message = 'Making {} PDF ...'
        message = message.format(abjad_ide._trim_path(segment_directory))
        print(message)
        try:
            abjad_ide.make_pdf(segment_directory)
        except:
            traceback.print_exc()
            sys.exit(1)