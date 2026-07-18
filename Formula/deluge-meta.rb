class DelugeMeta < Formula
  include Language::Python::Virtualenv

  desc "Meta package for Deluge 2.0 dependencies"
  homepage "https://deluge-torrent.org/"
  url "https://files.pythonhosted.org/packages/d5/d7/b655ee66d208002564c35179b49b0cc9f22916a309785dec2676c85d7c05/deluge-2.2.0.tar.gz"
  sha256 "f0fc64e052334ef294ca3951975dd926f129d62813f6c909bb523d914abe6537"
  license "GPL-3.0-only"
  revision 3

  # bottle do
  #   root_url "https://github.com/vinayakkulkarni/homebrew-deluge-meta/releases/download/deluge-meta-2.2.0_3"
  # end

  depends_on "rust" => :build
  depends_on "adwaita-icon-theme"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "gettext"
  depends_on "gtk+3"
  depends_on "gtk-mac-integration"
  depends_on "libtorrent-rasterbar"
  depends_on "libxcb"
  depends_on "little-cms2"
  depends_on "openjpeg"
  depends_on "pycparser"
  depends_on "pygobject3"
  depends_on "python-setuptools"
  depends_on "python@3.14"

  uses_from_macos "libffi"
  uses_from_macos "zlib"

  # Pinned to <78: setuptools 78+ removed pkg_resources (pypa/setuptools#5174).
  # Deluge imports it at runtime via deluge/pluginmanagerbase.py.
  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/d1/53/43d99d7687e8cdef5ab5f9ec5eaf2c0423c2b35133a2b7e7bc276fc32b21/setuptools-75.8.2.tar.gz"
    sha256 "4880473a969e5f23f2a2be3646b2dfd84af9028716d398e46192f84bc36900d2"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/39/62/75f18a0f03b4219c456652c7780e4d749b929eb605c098ce3a5b6b6bc081/wheel-0.47.0.tar.gz"
    sha256 "cc72bd1009ba0cf63922e28f94d9d83b920aa2bb28f798a31d0691b02fa3c9b3"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "Automat" do
    url "https://files.pythonhosted.org/packages/e3/0f/d40bbe294bbf004d436a8bcbcfaadca8b5140d39ad0ad3d73d1a8ba15f14/automat-25.4.16.tar.gz"
    sha256 "0017591a5477066e90d26b0e696ddc143baafd87b588cfac8100bc6be9634de0"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "constantly" do
    url "https://files.pythonhosted.org/packages/4d/6f/cb2a94494ff74aa9528a36c5b1422756330a75a8367bf20bd63171fc324d/constantly-23.10.4.tar.gz"
    sha256 "aa92b70a33e2ac0bb33cd745eb61776594dc48764b06c35e0efd050b7f1c7cbd"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/1f/99/d1c90d6041656cc6ee229dc99cd67fd0cd5aec3c5f7d72fffc27cc750054/cryptography-49.0.0.tar.gz"
    sha256 "f89660a348f4f78a92366240a61404e337586ef7f5909a2fef59ca88ef505493"
  end

  resource "deluge" do
    url "https://files.pythonhosted.org/packages/d5/d7/b655ee66d208002564c35179b49b0cc9f22916a309785dec2676c85d7c05/deluge-2.2.0.tar.gz"
    sha256 "f0fc64e052334ef294ca3951975dd926f129d62813f6c909bb523d914abe6537"
  end

  resource "hyperlink" do
    url "https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz"
    sha256 "427af957daa58bc909471c6c40f74c5450fa123dd093fc53efd2e91d2705a56b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "Incremental" do
    url "https://files.pythonhosted.org/packages/ef/3c/82e84109e02c492f382c711c58a3dd91badda6d746def81a1465f74dc9f5/incremental-24.11.0.tar.gz"
    sha256 "87d3480dbb083c1d736222511a8cf380012a8176c2456d01ef483242abbbcf8c"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/00/62/791b31e69ae182791ec67f04850f2f062716bbd205483d63a215f3e062d3/mako-1.3.12.tar.gz"
    sha256 "9f778e93289bd410bb35daadeb4fc66d95a746f0b75777b942088b7fd7af550a"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/5c/5f/6583902b6f79b399c9c40674ac384fd9cd77805f9e6205075f828ef11fb2/pyasn1-0.6.3.tar.gz"
    sha256 "697a8ecd6d98891189184ca1fa05d1bb00e2f84b5977c481452050549c8a72cf"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/e9/e6/78ebbb10a8c8e4b61a59249394a4a594c1a7af95593dc933a349c8d00964/pyasn1_modules-0.4.2.tar.gz"
    sha256 "677091de870a80aae844b1ca6134f54652fa2c8c5a52aa396440ac3106e941e6"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/74/b7/da07bae88f5a9506b4def6f2f4903cf4c3b8831e560dba8fa18ca08f758f/pyopenssl-26.3.0.tar.gz"
    sha256 "589de7fae1c9ea670d18422ed00fc04da787bbde8e1454aea872aa57b49ad341"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz"
    sha256 "3267bb3074e934df202af2ee0868575484108581e6f3cb006af1da35395e88b4"
  end

  # Pinned to 1.0.6: rencode 1.0.8 hardcodes x86 SIMD flags (-msse/-msse2/-mfma)
  # that clang rejects on arm64 (Apple Silicon). Upstream has no arm64 guard.
  resource "rencode" do
    url "https://files.pythonhosted.org/packages/3a/fb/3c03dbe4438dd596e1378b5299990b81041739658a76e0f4a301eded67f4/rencode-1.0.6.tar.gz"
    sha256 "2586435c4ea7d45f74e26765ad33d75309de7cf47c4d762e8efabd39905c0718"
  end

  resource "service-identity" do
    url "https://files.pythonhosted.org/packages/61/87/ad52e2c582c0f0e7f0a1b86950494c38d67422dc0f5ed9044a5fb9569a49/service_identity-26.1.0.tar.gz"
    sha256 "6358c52882c96e66ac4a55eb3a72c7dd4a70763f8cc6fa4e70abde2656f4bf3b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "Twisted" do
    url "https://files.pythonhosted.org/packages/db/97/6e9beb1e78247ae6dc34114f27d538cf2cb183c4afcd3609dfdf2b0439c8/twisted-26.4.0.tar.gz"
    sha256 "dbfd0fe1ee409d0243fdd7a6a6ff14f4948cec1fd78e0376291f805e1501fae9"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "zope-interface" do
    url "https://files.pythonhosted.org/packages/08/dc/50550cfcbb2ea3cbca5f1d7ed05c8aa840f831a0f2d63aec0a953f7c590e/zope_interface-8.5.tar.gz"
    sha256 "7a3ba1c5877f0f3e3906b02ddf793abed2becc2948116414ce0e1dd820b68d6d"
  end

  # Patches applied from __END__:
  #   1. Use native macOS file dialogs (Gtk.FileChooserNative).
  #   2. Drop 'ignore_resume_timestamps' from the libtorrent settings_pack.
  #      libtorrent >= 2.0.6 marks it DEPRECATED_SET, removing its external
  #      name, so Deluge 2.2.0 crashes at session construction with
  #      "KeyError: unknown name in settings_pack: ignore_resume_timestamps".
  #      Not yet fixed upstream. Ref: https://github.com/arvidn/libtorrent/pull/6668
  patch :DATA

  def install
    virtualenv_install_with_resources using: "python@3.14"

    %w[deluge deluge-console deluge-gtk deluge-web deluged].each do |cmd|
      (bin/cmd).write_env_script(libexec/"bin/#{cmd}", PYTHONPATH: ENV["PYTHONPATH"])
    end

    man1.install Dir["docs/man/*.1"]

    (var/"log/deluge-meta").mkpath
  end

  service do
    run [opt_bin/"deluged", "--do-not-daemonize", "--loglevel", "info", "--logfile",
         var/"log/deluge-meta/deluged.log"]
    keep_alive true
  end

  test do
    assert_match "deluged #{version}", shell_output("#{bin}/deluged --version")

    # ensure proper libraries are installed for deluge's python
    system "#{libexec}/bin/python", "-c", "import deluge"
    system "#{libexec}/bin/python", "-c", "import libtorrent"

    # still not really a functional test, but check that the daemon/console at least can run.
    pid = fork do
      system bin/"deluged", "-d"
    end
    sleep 1
    begin
      # 2.2.0: this will output "Could not connect to daemon:" and err traceback if can't connect.
      assert_match("", shell_output("#{bin}/deluge-console info"))
      assert_match("Daemon was shutdown", shell_output("#{bin}/deluge-console halt"))
    rescue
      # if halting doesn't work, make sure to kill daemon before failing.
      Process.kill "TERM", pid
      system "false"
    end
  end
end

__END__
diff --git a/deluge/ui/gtk3/addtorrentdialog.py b/deluge/ui/gtk3/addtorrentdialog.py
index 7e752bc99..33291428a 100644
--- a/deluge/ui/gtk3/addtorrentdialog.py
+++ b/deluge/ui/gtk3/addtorrentdialog.py
@@ -690,21 +690,15 @@ def update_treeview_toggles(self, _iter):
     def on_button_file_clicked(self, widget):
         log.debug('on_button_file_clicked')
         # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a .torrent file'),
-            None,
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a .torrent file'",
+            self.dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(True)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
         chooser.set_local_only(False)
 
         # Add .torrent and * file filters
@@ -728,7 +722,7 @@ def on_button_file_clicked(self, widget):
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = [decode_bytes(f) for f in chooser.get_filenames()]
             self.config['default_load_path'] = decode_bytes(
                 chooser.get_current_folder()
diff --git a/deluge/ui/gtk3/createtorrentdialog.py b/deluge/ui/gtk3/createtorrentdialog.py
index ea578a687..1d3e28940 100644
--- a/deluge/ui/gtk3/createtorrentdialog.py
+++ b/deluge/ui/gtk3/createtorrentdialog.py
@@ -121,26 +121,20 @@ def adjust_piece_size(self):
     def on_button_file_clicked(self, widget):
         log.debug('on_button_file_clicked')
         # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a file'),
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a file'",
             self.dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
 
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = chooser.get_filename()
         else:
             chooser.destroy()
@@ -157,26 +151,19 @@ def on_button_file_clicked(self, widget):
 
     def on_button_folder_clicked(self, widget):
         log.debug('on_button_folder_clicked')
-        # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a folder'),
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a folder",
             self.dialog,
             Gtk.FileChooserAction.SELECT_FOLDER,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = chooser.get_filename()
         else:
             chooser.destroy()
@@ -247,21 +234,15 @@ def on_button_save_clicked(self, widget):
             dialog.hide()
         else:
             # Setup the filechooserdialog
-            chooser = Gtk.FileChooserDialog(
-                _('Save .torrent file'),
+            chooser = Gtk.FileChooserNative.new(
+                "Save .torrent file'",
                 self.dialog,
                 Gtk.FileChooserAction.SAVE,
-                buttons=(
-                    _('_Cancel'),
-                    Gtk.ResponseType.CANCEL,
-                    _('_Save'),
-                    Gtk.ResponseType.OK,
-                ),
             )
 
             chooser.set_transient_for(self.dialog)
             chooser.set_select_multiple(False)
-            chooser.set_property('skip-taskbar-hint', True)
+            # chooser.set_property('skip-taskbar-hint', True)
 
             # Add .torrent and * file filters
             file_filter = Gtk.FileFilter()
@@ -277,7 +258,7 @@ def on_button_save_clicked(self, widget):
             # Run the dialog
             response = chooser.run()
 
-            if response == Gtk.ResponseType.OK:
+            if response == Gtk.ResponseType.ACCEPT:
                 result = chooser.get_filename()
             else:
                 chooser.destroy()
diff --git a/deluge/ui/gtk3/gtkui.py b/deluge/ui/gtk3/gtkui.py
index a0c5d8942..0bfa88f30 100644
--- a/deluge/ui/gtk3/gtkui.py
+++ b/deluge/ui/gtk3/gtkui.py
@@ -157,14 +157,32 @@ def on_die(*args):
             log.debug('Win32 "die" handler registered')
         elif osx_check() and windowing('quartz'):
             try:
-                import gtkosx_application
+                gi.require_version('GtkosxApplication', '1.0')
+                from gi.repository import GtkosxApplication
             except ImportError:
                 pass
             else:
-                self.osxapp = gtkosx_application.gtkosx_application_get()
+                self.osxapp = GtkosxApplication.Application()
                 self.osxapp.connect('NSApplicationWillTerminate', on_die)
                 log.debug('OSX quartz "die" handler registered')
 
+                # Workaround: weird font rendering
+                from gi.repository.Gdk import Screen
+                from gi.repository.Gtk import (
+                    STYLE_PROVIDER_PRIORITY_APPLICATION,
+                    CssProvider,
+                    StyleContext,
+                )
+                fontcss = b""" * { font-family: "" } """
+                fontcssprovider = CssProvider()
+                fontcssprovider.load_from_data(fontcss)
+
+                StyleContext.add_provider_for_screen(
+                    Screen.get_default(),
+                    fontcssprovider,
+                    STYLE_PROVIDER_PRIORITY_APPLICATION,
+                )
+
         # Set process name again to fix gtk issue
         setproctitle(getproctitle())
 
diff --git a/deluge/ui/gtk3/preferences.py b/deluge/ui/gtk3/preferences.py
index 59b22264b..8f1729c3b 100644
--- a/deluge/ui/gtk3/preferences.py
+++ b/deluge/ui/gtk3/preferences.py
@@ -1169,21 +1169,15 @@ def on_plugin_selection_changed(self, treeselection):
 
     def on_button_plugin_install_clicked(self, widget):
         log.debug('on_button_plugin_install_clicked')
-        chooser = Gtk.FileChooserDialog(
-            _('Select the Plugin'),
+        chooser = Gtk.Gtk.FileChooserNative.new(
+            "Select the Plugin",
             self.pref_dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.pref_dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
 
         file_filter = Gtk.FileFilter()
         file_filter.set_name(_('Plugin Eggs'))
@@ -1193,7 +1187,7 @@ def on_button_plugin_install_clicked(self, widget):
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             filepath = deluge.common.decode_bytes(chooser.get_filename())
         else:
             chooser.destroy()
diff --git a/deluge/core/core.py b/deluge/core/core.py
index e621a45..ab321fe 100644
--- a/deluge/core/core.py
+++ b/deluge/core/core.py
@@ -10,6 +10,7 @@
 import glob
 import logging
 import os
+import re
 import shutil
 import tempfile
 from base64 import b64decode, b64encode
@@ -117,7 +118,6 @@ class Core(component.Component):
         settings_pack = {
             'peer_fingerprint': peer_id,
             'user_agent': user_agent,
-            'ignore_resume_timestamps': True,
         }
         self.session = lt.session(settings_pack, flags=0)
 
@@ -241,8 +241,24 @@ class Core(component.Component):
 
         Args:
             settings: A dict of lt session settings to apply.
+
+        Settings removed from newer libtorrent (e.g. cache_size,
+        half_open_limit in >= 2.1) are dropped instead of raising KeyError.
         """
-        self.session.apply_settings(settings)
+        settings = dict(settings)
+        while settings:
+            try:
+                self.session.apply_settings(settings)
+                return
+            except KeyError as ex:
+                match = re.search(
+                    r"unknown name in settings_pack: (\w+)", str(ex)
+                )
+                if not match or match.group(1) not in settings:
+                    raise
+                key = match.group(1)
+                del settings[key]
+                log.warning('Dropped setting unknown to libtorrent: %s', key)
 
     @staticmethod
     def _create_peer_id(version: str) -> str:
diff --git a/deluge/core/preferencesmanager.py b/deluge/core/preferencesmanager.py
index 4dbf4d1..6c84f84 100644
--- a/deluge/core/preferencesmanager.py
+++ b/deluge/core/preferencesmanager.py
@@ -306,9 +306,9 @@ class PreferencesManager(component.Component):
     def _on_set_encryption(self, key, value):
         # Convert Deluge enc_level values to libtorrent enc_level values.
         pe_enc_level = {
-            0: lt.enc_level.plaintext,
-            1: lt.enc_level.rc4,
-            2: lt.enc_level.both,
+            0: lt.enc_level.pe_plaintext,
+            1: lt.enc_level.pe_rc4,
+            2: lt.enc_level.pe_both,
         }
         self.core.apply_session_settings(
             {
diff --git a/deluge/core/torrentmanager.py b/deluge/core/torrentmanager.py
index 1233553..0de34f0 100644
--- a/deluge/core/torrentmanager.py
+++ b/deluge/core/torrentmanager.py
@@ -475,9 +475,6 @@ class TorrentManager(component.Component):
             add_torrent_params['name'] = options['name']
         if options['pre_allocate_storage']:
             add_torrent_params['storage_mode'] = lt.storage_mode_t.storage_mode_allocate
-        if resume_data:
-            add_torrent_params['resume_data'] = resume_data
-
         # Set flags: enable duplicate_is_error & override_resume_data, disable auto_managed.
         add_torrent_params['flags'] = (
             LT_DEFAULT_ADD_TORRENT_FLAGS | lt.torrent_flags.duplicate_is_error
@@ -487,6 +484,38 @@ class TorrentManager(component.Component):
         if options['super_seeding']:
             add_torrent_params['flags'] |= lt.torrent_flags.super_seeding
 
+        if resume_data:
+            # libtorrent >= 2.1 removed the dict 'resume_data' key and its
+            # internal merge. Parse into an add_torrent_params object (this
+            # preserves piece progress) and overlay Deluge's computed fields.
+            try:
+                atp = lt.read_resume_data(resume_data)
+            except RuntimeError as ex:
+                log.warning('Unable to parse torrent resume data: %s', ex)
+            else:
+                atp.ti = add_torrent_params['ti']
+                atp.name = add_torrent_params['name']
+                save_path = add_torrent_params['save_path']
+                if isinstance(save_path, bytes):
+                    save_path = save_path.decode('utf8')
+                atp.save_path = save_path
+                atp.storage_mode = add_torrent_params.get(
+                    'storage_mode', lt.storage_mode_t.storage_mode_sparse
+                )
+                # Resume-file state flags take precedence here; this mask
+                # mirrors libtorrent handle_backwards_compatible_resume_data().
+                resume_state_flags = (
+                    lt.torrent_flags.seed_mode
+                    | lt.torrent_flags.super_seeding
+                    | lt.torrent_flags.auto_managed
+                    | lt.torrent_flags.sequential_download
+                    | lt.torrent_flags.paused
+                )
+                atp.flags = (
+                    add_torrent_params['flags'] & ~resume_state_flags
+                ) | (atp.flags & resume_state_flags)
+                return torrent_id, atp
+
         return torrent_id, add_torrent_params
 
     def add(
diff --git a/deluge/_libtorrent.py b/deluge/_libtorrent.py
--- a/deluge/_libtorrent.py
+++ b/deluge/_libtorrent.py
@@ -34,3 +34,47 @@
     raise LibtorrentImportError(
         f'Deluge {get_version()} requires libtorrent >= {REQUIRED_VERSION}'
     )
+
+# libtorrent 2.1 removed the 1.2-era torrent_status/torrent_handle accessors
+# that Deluge 2.2.0 still relies on. Restore them as compatibility shims so
+# every call site keeps working (status.paused, handle.is_paused(), etc.).
+if not hasattr(lt.torrent_status, 'paused'):
+    import datetime as _dt
+
+    _flags = lt.torrent_flags
+
+    def _flag_prop(flag):
+        return property(lambda s: bool(s.flags & flag))
+
+    def _duration_prop(attr):
+        return property(lambda s: int(getattr(s, attr).total_seconds()))
+
+    def _since_prop(attr):
+        def _get(s):
+            v = getattr(s, attr)
+            if v is None:
+                return -1
+            if isinstance(v, _dt.datetime):
+                now = _dt.datetime.now(v.tzinfo) if v.tzinfo else _dt.datetime.now()
+                return max(0, int((now - v).total_seconds()))
+            return int(v)
+
+        return property(_get)
+
+    lt.torrent_status.paused = _flag_prop(_flags.paused)
+    lt.torrent_status.auto_managed = _flag_prop(_flags.auto_managed)
+    lt.torrent_status.seed_mode = _flag_prop(_flags.seed_mode)
+    lt.torrent_status.super_seeding = _flag_prop(_flags.super_seeding)
+    lt.torrent_status.active_time = _duration_prop('active_duration')
+    lt.torrent_status.seeding_time = _duration_prop('seeding_duration')
+    lt.torrent_status.finished_time = _duration_prop('finished_duration')
+    lt.torrent_status.time_since_download = _since_prop('last_download')
+    lt.torrent_status.time_since_upload = _since_prop('last_upload')
+
+if not hasattr(lt.torrent_handle, 'is_paused'):
+    lt.torrent_handle.is_paused = lambda self: bool(
+        self.status().flags & lt.torrent_flags.paused
+    )
+
+if not hasattr(lt.torrent_handle, 'get_torrent_info'):
+    lt.torrent_handle.get_torrent_info = lambda self: self.torrent_file()
