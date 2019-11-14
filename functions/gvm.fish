
function gvm -d "Golang version manager"
    if test -e $GVM_ROOT/scripts/gvm
        if not type -q fenv
            echo "You need to install foreign-env plugin"
            return 1
        end

        fenv source $GVM_ROOT/scripts/gvm --no-use ';' gvm $argv
    else
        echo "You need to install gvm itself (see https://github.com/moovweb/gvm)"
        return 1
    end
end
