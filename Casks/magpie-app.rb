cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2723"
  sha256 arm:   "53394b82c838ec1293ed412589c4f06124734374f11abdded3915155c86cb05d",
         intel: "ef5750cd7ac44504d8f0e716f274d747275ea1c0160213dbc59c522328194029"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
