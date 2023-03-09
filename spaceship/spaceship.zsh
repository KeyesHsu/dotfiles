# ----------------------------------------------------------------
# Custom section
# ----------------------------------------------------------------

# Load proxy custom section
source "$HOME/.config/spaceship/spaceship-section.proxy.zsh"


# ----------------------------------------------------------------
# Configuration
# ----------------------------------------------------------------

# Prompt order
SPACESHIP_PROMPT_ORDER=(
    user
    dir
    git
    conda
    python
    proxy
    line_sep
    char
)


# ---------------------------------------------------------------
# Conda
# ---------------------------------------------------------------

# Show current Python conda virtualenv or not
SPACESHIP_CONDA_SHOW=true

# ---------------------------------------------------------------
# Python
# ---------------------------------------------------------------

# Always show python version even if there is no virtual environment
SPACESHIP_PYTHON_SHOW=always

