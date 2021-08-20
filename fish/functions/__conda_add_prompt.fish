function __conda_add_prompt
    if set -q CONDA_PROMPT_MODIFIER
        set_color -o ffff87
        echo -n $CONDA_PROMPT_MODIFIER
        set_color normal
    end
end
