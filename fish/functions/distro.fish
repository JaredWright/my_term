# Display information about the current os distrobution 
function distro
    switch (uname)
    case Linux
        lsb_release -irdc
    case Darwin
        sw_vers
    case '*'
        echo "Unknown distro"
    end
end
