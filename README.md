# apt-shim
Restrict execution of apt for atomic system

## Building and Installation

You'll need the following dependencies:
* libglib2.0-dev
* meson
* valac

Run `meson setup` to configure the build environment. Change to the build directory and run `ninja` to build

    meson setup build --prefix=/usr
    cd build
    ninja

To install, use `ninja install`

    ninja install
