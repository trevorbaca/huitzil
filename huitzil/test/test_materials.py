# -*- coding: utf-8 -*-
import os
import pytest
import shutil
import huitzil
import ide
from abjad.tools import systemtools


configuration = ide.tools.idetools.AbjadIDEConfiguration()
boilerplate_path = configuration.abjad_ide_boilerplate_directory
boilerplate_path = os.path.join(
    boilerplate_path, 
    '__illustrate_material_1__.py',
    )

materials_path = os.path.join(huitzil.__path__[0], 'materials')

directory_names = os.listdir(materials_path)
directory_names = [_ for _ in directory_names if not _.startswith(('.', '_'))]

material_paths = [os.path.join(materials_path, _) for _ in directory_names]
material_paths = [_ for _ in material_paths if os.path.isdir(_)]

@pytest.mark.parametrize('material_path', material_paths)
def test_materials_01(material_path):
    local_boilerplate_path = os.path.join(
        material_path,
        '__illustrate_material_1__.py',
        )
    if os.path.exists(local_boilerplate_path):
        os.remove(local_boilerplate_path)
    with systemtools.FilesystemState(remove=[local_boilerplate_path]):
        shutil.copyfile(boilerplate_path, local_boilerplate_path)
        material_name = os.path.basename(material_path)
        ide.tools.idetools.AbjadIDE._replace_in_file(
            local_boilerplate_path,
            'OUTPUT_OBJECT',
            material_name,
            )
        assert os.path.exists(local_boilerplate_path)
        command = 'python {}'.format(local_boilerplate_path)
        exit_status = systemtools.IOManager.spawn_subprocess(command)
        assert exit_status == 0