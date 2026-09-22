/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2026 elementary, Inc. (https://elementary.io)
 */

public static int main (string[] args) {
    Intl.setlocale (LocaleCategory.ALL, "");
    Intl.bindtextdomain (Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
    Intl.bind_textdomain_codeset (Config.GETTEXT_PACKAGE, "UTF-8");
    Intl.textdomain (Config.GETTEXT_PACKAGE);

    stdout.printf ("\n" +
                   _("APT can't be used to manage packages on this device because the system files are immutable") + "\n" +
                   "\n" +
                   _("• Applications can be managed with Flatpak. See `flatpak --help` or use AppCenter") + "\n" +
                   _("• System updates can be managed with systemd-sysupdate. See `updatectl --help` or open System Settings and visit System") + "\n" +
                   "\n" +
                   _("You can still use APT by specifying the absolute path like `/usr/bin/apt` or `/usr/bin/apt-get` but sub-commands that need write access to the /usr system files like `install` are not supported") + "\n" +
                   "\n" +
                   _("For more information about how to install applications, visit %s").printf ("https://elementary.io/docs/learning-the-basics#installing-apps") + "\n");

    return 1;
}
