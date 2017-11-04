#!/usr/bin/env bash

function install_oh_my_zsh() {
    local script_dir="/tmp/oh-my-zsh.sh"
    curl -L "https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh" \
        -o "${script_dir}" &> /dev/null && \
    sed -i -e 's/env zsh/#env zsh/g' "${script_dir}" && \
    chmod a+x "${script_dir}" && \
    "${script_dir}" &> /dev/null && \
    rm "${script_dir}"
}

echo "installing oh-my-zsh"
install_oh_my_zsh
