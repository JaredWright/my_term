# name: Jared Wright's fish

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o 80ddfd)
  set -l yellow (set_color -o fda739)
  set -l red (set_color -o fc114a)
  set -l blue (set_color -o 1371fb)
  set -l green (set_color -o 7df72f)
  set -l normal (set_color normal)

  if test $last_status = 0
      set arrow $fish
  else
      set arrow $skull
  end

  echo -n -s $apple " " $normal $arrow " " $normal ' '
end

function fish_right_prompt
  set -l last_status $status
  set -l cyan (set_color -o 80ddfd)
  set -l yellow (set_color -o fda739)
  set -l red (set_color -o fc114a)
  set -l blue (set_color -o 1371fb)
  set -l green (set_color -o 7df72f)
  set -l normal (set_color normal)

  set -l cwd $cyan(prompt_pwd)

  if [ (_git_branch_name) ]
    set git_branch (_git_branch_name)

    if [ (_is_git_dirty) ]
      set git_info "$blue ($yellow$git_branch±$blue)"
    else
      if test (_git_branch_name) = 'master'
        set git_info "$blue ($red$git_branch$blue)"
      else
        set git_info "$blue ($normal$git_branch$blue)"
      end
    end
  end

  # echo -n -s $apple " " $cwd $git_info
  echo -n -s $cwd $git_info
end
