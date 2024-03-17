{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.python310
    pkgs.python310Packages.pip
  ];

  # Sets environment variables in the workspace
  env = { };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [ ];

  # Enable previews and customize configuration
  idx.previews = { 
    enable = true;
    previews = [
        {
            command = [];
            cwd = "/home/user/De-Utility-BOT-Rewrite";
            manager = "web";
            id = "web";
            env = { };
        }
    ];
  };
}
