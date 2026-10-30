cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2268"
  sha256 arm:   "1d2c21847e79b9b43a6ff78305d77be6a1b2bc1f6e1148cab3d0c54a031eb58d",
         intel: "cac02d3146bdf0df92d66340eac3db8148745bdee0ef14e4f88e201f035170c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
