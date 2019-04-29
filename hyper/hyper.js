module.exports = {
  config: {
    // use stable channel
    updateChannel: 'stable',

    // fonts
    fontSize: 12,
    fontFamily: 'Menlo, Consolas, Osaka-Mono, monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    // cursor
    cursorShape: 'BLOCK',
    cursorBlink: true,

    // OS-native menu appearance for Windows / Linux
    showHamburgerMenu: false,

    // shell options
    shellArgs: ['--login'],

    // bell
    bell: 'SOUND',
   // bellSoundURL: "file:////System/Library/Sounds/Funk.aiff" // TODO: make the bell sound work

    // hyperTab options
    hyperTabs: {
      trafficButtons: true, // preserve Mac traffic buttons
      border: true,
      tabIconsColored: true,
      activityColor: 'salmon',
      closeAlign: 'left',
    },

    // materialTheme options
    MaterialTheme: {
      theme: 'Ocean',
      accentColor: '#64FFDA',
    }
  },

  plugins: [
    "hypercwd",
    "hyperterm-safepaste",
    "hyper-tabs-enhanced",
    "hyper-statusline",
    "hyper-material-theme",
  ],
};
