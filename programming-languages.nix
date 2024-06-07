{ pkgs, ... }:

{

  programs = {
  	java = {
  		enable = true;
  		package = pkgs.jdk17;
  	}; 
  };

  environment.systemPackages = with pkgs; [
    nodePackages_latest.nodejs
    android-tools
    android-studio
    flutter
  ];

 #  nixpkgs.config.permittedInsecurePackages = [
	# "openjdk"
	# "jdk17"
	# "openjdk-19-ga"
 #  ];

 # environment.sessionVariables = {
 # 	JAVA_HOME: 
 # };
}
