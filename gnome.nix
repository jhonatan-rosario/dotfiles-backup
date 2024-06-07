{ pkgs, ... }:

{
  # Enable Gnome
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Gnome Exclude Packages
  # environment.gnome.excludePackages = (with pkgs; [
  #   gnome-tour
  # ]) ++ (with pkgs.gnome; [
  #       gnome-terminal
  #       gedit # text editor
  #       epiphany # web browser
  #       geary # email reader
  #       tali # poker game
  #       iagno # go game
  #       hitori # sudoku game
  #       atomix # puzzle game
  # ]);

  environment.systemPackages = with pkgs; [
  	gnome.gnome-tweaks
  	gnomeExtensions.user-themes
  	gnomeExtensions.blur-my-shell
  	gnomeExtensions.dash-to-dock
  	gnomeExtensions.quick-settings-tweaker
  	gnomeExtensions.compiz-windows-effect
  	gnomeExtensions.compiz-alike-magic-lamp-effect
  ];
}
