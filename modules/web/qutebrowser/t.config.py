# QUTEBROWSER
c.confirm_quit = ['downloads']  ##   always multiple-tabs downloads never
c.input.insert_mode.auto_load = True

## bindings
config.bind('H', 'tab-prev')
config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('L', 'tab-next')

## scrolling
c.scrolling.bar = 'never'
c.scrolling.smooth = True

## url
c.url.start_pages = ['about:blank']
c.url.default_page = 'about:blank'
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?q={}'}
c.url.open_base_url = True

## colors
_colors = {
        'bg': {
            '1': '#{{ colors.bg.1 }}',
            '2': '#{{ colors.bg.2 }}',
            '3': '#{{ colors.bg.3 }}',
            '4': '#{{ colors.bg.4 }}'
            },
        'fg': {
            '1': '#{{ colors.fg.1 }}',
            '2': '#{{ colors.fg.2 }}',
            '3': '#{{ colors.fg.3 }}',
            '4': '#{{ colors.fg.4 }}'
            },
        'black':   '#{{ colors.black }}',
        'red':     '#{{ colors.red }}',
        'green':   '#{{ colors.green }}',
        'yellow':  '#{{ colors.yellow }}',
        'blue':    '#{{ colors.blue }}',
        'magenta': '#{{ colors.magenta }}',
        'cyan':    '#{{ colors.cyan }}',
        'white':   '#{{ colors.white }}',

        'accent':  '#{{ colors.accent }}'
        }

C = c.colors

## fonts
c.fonts.monospace = 'Meslo LG S for Powerline'
_font_size_normal = 12
_font_size_small = 10


# CONTENT
c.content.default_encoding = 'utf-8'
c.content.geolocation = False  ##   true false ask
c.content.windowed_fullscreen = True

## theming
C.webpage.bg = _colors['white']


# COMPLETIONS
c.completion.height = '20%'
c.completion.shrink = True
c.completion.use_best_match = True
c.completion.scrollbar.width = 0

## theming
### headers
C.completion.category.bg = _colors['bg']['1']
C.completion.category.border.top = C.completion.category.bg
C.completion.category.border.bottom = C.completion.category.bg
C.completion.category.fg = _colors['white']
c.fonts.completion.category = f'bold {_font_size_normal}pt monospace'

### body
c.fonts.completion.entry = f'{_font_size_normal}pt monospace'

#### normal
C.completion.even.bg = _colors['bg']['2']
C.completion.odd.bg = _colors['bg']['3']
C.completion.fg = _colors['fg']['3']
C.completion.match.fg = _colors['fg']['1']

#### selected
C.completion.item.selected.bg = _colors['accent']
C.completion.item.selected.border.bottom = C.completion.item.selected.bg
C.completion.item.selected.border.top = C.completion.item.selected.bg
C.completion.item.selected.fg = _colors['black']


# DOWNLOADS
c.downloads.location.prompt = False
c.downloads.remove_finished = 0  ## -1: never remove downloads

## theming
C.downloads.bar.bg = _colors['black']
C.downloads.system.bg = 'none'  ##   rgb hsv hsl none
C.downloads.system.fg = 'none'  ##   rgb hsv hsl none
c.fonts.downloads = f'{_font_size_normal}pt monospace'

### normal
C.downloads.start.bg = _colors['bg']['4']
C.downloads.start.fg = _colors['black']
C.downloads.stop.bg = _colors['accent']
C.downloads.stop.fg = _colors['black']

### errors
C.downloads.error.bg = _colors['red']
C.downloads.error.fg = _colors['black']


# HINTS
c.hints.chars = 'asdjkl'

## theming
C.hints.bg = _colors['accent']
C.hints.fg = _colors['black']
C.hints.match.fg = _colors['white']
c.fonts.hints = f'bold {_font_size_small}pt monospace'
c.hints.border = f"1px solid {_colors['black']}"

### widget
C.keyhint.bg = _colors['black']
C.keyhint.fg = _colors['white']
C.keyhint.suffix.fg = _colors['accent']
c.fonts.keyhint = f'{_font_size_normal}pt monospace'
c.keyhint.radius = 0


# MESSAGES
c.messages.timeout = 2000

## theming
### errors
C.messages.error.bg = _colors['red']
C.messages.error.border = C.messages.error.bg
C.messages.error.fg = _colors['black']
c.fonts.messages.error = f'{_font_size_normal}pt monospace'

### info
C.messages.info.bg = _colors['green']
C.messages.info.border = C.messages.info.bg
C.messages.info.fg = _colors['black']
c.fonts.messages.info = f'{_font_size_normal}pt monospace'

### warning
C.messages.warning.bg = _colors['yellow']
C.messages.warning.border = C.messages.warning.bg
C.messages.warning.fg = _colors['black']
c.fonts.messages.warning = f'{_font_size_normal}pt monospace'


# PROMPTS
c.prompt.radius = 0

## theming
C.prompts.bg = _colors['black']
C.prompts.border = '0px'
C.prompts.fg = _colors['white']
C.prompts.selected.bg = _colors['accent']
c.fonts.prompts = f'{_font_size_normal}pt sans-serif'


# STATUSBAR
c.statusbar.position = 'top'
c.statusbar.padding = {'top': 6, 'bottom': 6, 'left': 6, 'right': 6}

## theming
c.fonts.statusbar = f'{_font_size_normal}pt monospace'

### normal
C.statusbar.normal.bg = _colors['black']
C.statusbar.normal.fg = _colors['white']

### insert
C.statusbar.insert.bg = _colors['yellow']
C.statusbar.insert.fg = _colors['black']

### caret
C.statusbar.caret.bg = _colors['green']
C.statusbar.caret.fg = _colors['black']
C.statusbar.caret.selection.bg = C.statusbar.caret.bg
C.statusbar.caret.selection.fg = C.statusbar.caret.fg

### command
C.statusbar.command.bg = _colors['accent']
C.statusbar.command.fg = _colors['black']
C.statusbar.command.private.bg = C.statusbar.command.bg
C.statusbar.command.private.fg = C.statusbar.command.fg

### passthrough
C.statusbar.passthrough.bg = _colors['yellow']
C.statusbar.passthrough.fg = _colors['black']

### private
C.statusbar.private.bg = _colors['white']
C.statusbar.private.fg = _colors['black']

## progress bar
### theming
C.statusbar.progress.bg = _colors['accent']

## url
### theming
C.statusbar.url.fg = _colors['fg']['1']
C.statusbar.url.error.fg = _colors['red']
C.statusbar.url.hover.fg = _colors['blue']
C.statusbar.url.warn.fg = _colors['accent']

#### success
C.statusbar.url.success.http.fg = _colors['yellow']
C.statusbar.url.success.https.fg = _colors['fg']['1']


# TABS
c.tabs.last_close = 'blank'  ##   ignore blank startpage default-page close
c.tabs.mode_on_change = 'restore'  ##   persist restore normal
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 6, 'right': 6}

## theming
c.fonts.tabs = f'{_font_size_normal}pt monospace'

### normal
C.tabs.bar.bg = _colors['black']
C.tabs.even.bg = _colors['black']
C.tabs.even.fg = _colors['white']
C.tabs.odd.bg = C.tabs.even.bg
C.tabs.odd.fg = C.tabs.even.fg

### selected
C.tabs.selected.even.bg = _colors['white']
C.tabs.selected.even.fg = _colors['black']
C.tabs.selected.odd.bg = C.tabs.selected.even.bg
C.tabs.selected.odd.fg = C.tabs.selected.even.fg

## indicator
c.tabs.indicator.width = 0


# DEBUG CONSOLE
## theming
c.fonts.debug_console = f'{_font_size_normal}pt monospace'
