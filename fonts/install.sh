#!/usr/bin/env bash

function install_fonts() {
    local FA_ZIP_LOC=/tmp/font-awesome.zip
    local FA_DIR=/tmp/Font-Awesome-4.7.0
    local SF_ZIP_LOC=/tmp/sanfran-fonts.zip
    local SF_DIR=/tmp/YosemiteSanFranciscoFont-master
    mkdir -p "${HOME}"/.fonts

    # FontAwesome for the i3blocks
    echo "   ==> Installing FontAwesome"
    curl -L "https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.zip" \
        -o ${FA_ZIP_LOC} &> /dev/null && \
    unzip -qq ${FA_ZIP_LOC} -d /tmp/ && \
    cp "${FA_DIR}"/fonts/FontAwesome.otf "${HOME}"/.local/share/fonts/FontAwesome.otf && \
    rm -rf ${FA_ZIP_LOC} ${FA_DIR}

    # San Fransisco Font because it looks nice
    echo "   ==> Installing San Fransisco"
    curl -L "https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip" \
        -o ${SF_ZIP_LOC} &> /dev/null && \
    unzip -qq ${SF_ZIP_LOC} -d /tmp/ && \
    cp "${SF_DIR}"/*.ttf "${HOME}"/.local/share/fonts/ && \
    rm -rf ${SF_ZIP_LOC} ${SF_DIR}
}

echo "installing fonts"
install_fonts
