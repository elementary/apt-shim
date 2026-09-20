public static int main (string[] args) {
    Intl.setlocale (LocaleCategory.ALL, "");
    Intl.bindtextdomain (Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
    Intl.bind_textdomain_codeset (Config.GETTEXT_PACKAGE, "UTF-8");
    Intl.textdomain (Config.GETTEXT_PACKAGE);

    stdout.printf ("\n" +
                   _("APT can't be used to manage packages on this device") + "\n" +
                   _("• Applications can be managed with Flatpak. See `flatpak --help` or use the AppCenter app") + "\n" +
                   _("• System updates can be managed with Sysupdate. See `updatectl --help` or open the System Settings app and select System") + "\n" +
                   "\n" +
                   /*
                    * No need to make the URL translatable since accessing this redirects to localized page
                    * depending on the browser language. Also gettext warns if this is translatable when updating
                    * translation files.
                    */
                   "https://elementary.io/docs/learning-the-basics#installing-apps" + "\n");

    return 1;
}
