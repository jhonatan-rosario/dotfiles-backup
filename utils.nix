{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    micro
	neovim
    # kitty
    # mold
    # gcc13
    # jdk11
    # dioxus-cli
    # surrealdb
    # surrealdb-migrations
    # surrealist
  ];
}
