{
  programs.zsh = {
    enable = true;
    initExtra = builtins.readFile ../dotfiles/zsh/.zshrc;
  };
};
