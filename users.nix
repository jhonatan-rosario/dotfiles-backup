{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jhonatan = {
    isNormalUser = true;
    description = "Jhonatan";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      youtube-music
      discord
      tdesktop
      vscode
      brave
      firefox
      bitwarden-desktop
    ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
