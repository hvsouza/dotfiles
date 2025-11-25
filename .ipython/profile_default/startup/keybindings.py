from IPython.core.getipython import get_ipython
from prompt_toolkit.keys import Keys
from prompt_toolkit.filters import HasSelection

def setup_vi_jk_keybindings():
    """Set up j,k keybindings to exit Vi insert mode"""
    from prompt_toolkit.filters import ViInsertMode, HasFocus
    from prompt_toolkit.enums import DEFAULT_BUFFER

    def switch_to_navigation_mode(event):
        """Switch from Vi insert mode to navigation mode when j,k is pressed"""
        from prompt_toolkit.key_binding.vi_state import InputMode

        event.app.vi_state.input_mode = InputMode.NAVIGATION

    ipython = get_ipython()
    if getattr(ipython, "pt_app", None):
        registry = ipython.pt_app.key_bindings
        registry.add_binding("j", "k", filter=(HasFocus(DEFAULT_BUFFER) & ViInsertMode()))(switch_to_navigation_mode)


# Set up the keybindings
setup_vi_jk_keybindings()
