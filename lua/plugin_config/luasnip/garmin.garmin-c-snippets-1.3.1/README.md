# Garmin C Snippets

This extension provides snippets for Garmin C code.

Please contact Joel Spadin (joel.spadin@garmin.com) with any questions.

## Snippets

### File Templates

shortcut  | description
----------|------------
newfilec  | C file with Garmin-style header
newfileh  | H file with Garmin-style header
newfilecd | C file with Doxygen header
newfilehd | H file with Doxygen header

### Function Templates

shortcut  | description
----------|------------
funcg     | Function with Garmin-style documentation
funcd     | Function with Doxygen documentation

### Doxygen comments

shortcut  | description
----------|------------
doxy      | Doxygen block comment
paramd    | `//!<`
parami    | `//!< [in]`
paramo    | `//!< [out]`
paramio   | `//!< [in,out]`

### General Snippets

shortcut    | description
------------|------------
dbg_include | Define `DBG_MODULE` and `DBG_TAG`, then include `DBG_pub.h`

## Building and Testing This Extension

Run the "install" task (or `npm install` in the terminal) to install dependencies.

Run the default launch configuration (F5) to test the extension in a new instance of Visual Studio Code.

Run the default build task (Ctrl+Shift+B) to package the extension into a .vsix file.

See vsc-extension-quickstart.md for more details.