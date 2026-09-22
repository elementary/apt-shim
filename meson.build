project(
    'io.elementary.apt-shim',
    'vala', 'c',
    version: '9.0.0'
)

i18n = import('i18n')

add_project_arguments(
    '-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()),
    language: 'c'
)

subdir('po')
subdir('src')
