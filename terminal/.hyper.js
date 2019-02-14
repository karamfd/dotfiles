// See https://hyper.is#cfg for all currently supported options.

module.exports = {

  config: {
    bell: "false",
    copyOnSelect: false,
    cursorBlink: true,
    cursorShape: "UNDERLINE",
    defaultSSHApp: true,
    fontFamily: "Menlo, monospace",
    fontSize: 18,
    fontWeight: "normal",
    fontWeightBold: "bold",
    letterSpacing: 0,
    lineHeight: 1.5,
    padding: "13px",
    shell: "/usr/local/bin/fish",
    shellArgs: ["--login"],
    updateChannel: "stable",
    windowSize: [675, 415]
  },

  plugins: ["hyper-statusline", "hyperterm-panda"],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },

};