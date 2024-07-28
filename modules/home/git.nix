{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    delta = {
      enable = true;
    };

    lfs.enable = true;
    userName = "roarfpv";
    userEmail = "roarfpv@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "cache";
      core.sshCommand = "ssh -i /home/john/.ssh/roar_id";
      commit.gpgsign = true;
      gpg.format = "ssh";
      gpg.ssh.allowedSignersFile = "~/.ssh/allowed_signers";
      # status.showUntrackedFiles = "no";
      user.signingkey = "~/.ssh/roar_id.pub";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
