#
# Proxy
#
# A simple proxy promter when using http_proxy, HTTPS_PROXY and ALL_PROXY.
#
# At https://curl.haxx.se/docs/manual.html there's description of environment variables related to using HTTP proxy which libcurl/curl understands.
# At https://superuser.com/questions/944958/are-http-proxy-https-proxy-and-no-proxy-environment-variables-standard there's discussion of these environments.

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_PROXY_SHOW="${SPACESHIP_PROXY_SHOW=true}"
SPACESHIP_PROXY_ASYNC="${SPACESHIP_PROXY_ASYNC=$SPACESHIP_PROMPT_ASYNC}"
SPACESHIP_PROXY_PREFIX="${SPACESHIP_PROXY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PROXY_SUFFIX="${SPACESHIP_PROXY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PROXY_SYMBOL="${SPACESHIP_PROXY_SYMBOL="🚀 "}"
SPACESHIP_PROXY_COLOR="${SPACESHIP_PROXY_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show proxy status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_proxy() {
  # If SPACESHIP_PROXY_SHOW is false, don't show proxy section
  [[ $SPACESHIP_PROXY_SHOW == false ]] && return

  # Exit section if variable is empty
if [ -z "$all_proxy" ] && [ -z "$https_proxy" ] && [ -z "$http_proxy" ] && [ -z "$ALL_PROXY" ] && [ -z "$HTTPS_PROXY" ]; then
      return
  fi

  # Display proxy section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_PROXY_COLOR" \
    --prefix "$SPACESHIP_PROXY_PREFIX" \
    --suffix "$SPACESHIP_PROXY_SUFFIX" \
    --symbol "$SPACESHIP_PROXY_SYMBOL" \
    "PROXY"
}
