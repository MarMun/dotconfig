spawn_with_rules() {
    (
        # doe we have 'clientinfo' to use as identification
        if [[ -z "$CIENTINFO" ]]; then
            # no: we bet _NET_WM_PID property is set
            herbstclient rule once pid=$BASHPID maxage="${MAXAGE}" "${RULES[@]}"
        else
            # yes: we use client info
            herbstclient rule once "${CIENTINFO}" maxage="${MAXAGE}" "${RULES[@]}"
        fi
        exec "$@"
    ) &
}