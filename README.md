#alfred-apple-reminders

An [Alfred][alfred] extension for creating reminders in Apple Reminders on OS X Mountain Lion

[https://github.com/gjvis/alfred-apple-reminders](https://github.com/gjvis/alfred-apple-reminders)

##Usage

From the [Alfred][alfred] prompt:

    r <reminder text>

Will create a reminder with text `<reminder text>`.

If Reminders is open then it will be focussed, otherwise the extension operates completely in the background.

##Build and installation

The default Rake task (build) will build a `.alfredextension` file, that can then be opened in Alfred.

[alfred]: http://alfredapp.com/

##Licence

Released under the [MIT licence](http://opensource.org/licenses/MIT)
