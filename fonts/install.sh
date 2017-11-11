#!/usr/bin/env bash

function install_fonts() {
    local fa_zip_loc=/tmp/font-awesome.zip
    local fa_dir=/tmp/Font-Awesome-4.7.0
    local sf_zip_loc=/tmp/sanfran-fonts.zip
    local sf_dir=/tmp/YosemiteSanFranciscoFont-master
    mkdir -p "${HOME}"/.fonts

    # FontAwesome for the i3blocks
    echo "   ==> Installing FontAwesome"
    curl -L "https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.zip" \
        -o ${fa_zip_loc} &> /dev/null && \
    unzip -qq ${fa_zip_loc} -d /tmp/ && \
    cp "${fa_dir}"/fonts/FontAwesome.otf "${HOME}"/.local/share/fonts/FontAwesome.otf && \
    rm -rf ${fa_zip_loc} ${fa_dir}

    # San Fransisco Font because it looks nice
    echo "   ==> Installing San Fransisco"
    curl -L "https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip" \
        -o ${sf_zip_loc} &> /dev/null && \
    unzip -qq ${sf_zip_loc} -d /tmp/ && \
    cp "${sf_dir}"/*.ttf "${HOME}"/.local/share/fonts/ && \
    rm -rf ${sf_zip_loc} ${sf_dir}
}

echo "installing fonts"
install_fonts

