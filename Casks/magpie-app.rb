cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3294"
  sha256 arm:   "b4bb6f6fcdc75e351293980469c58d2165325bdf689da3a9346b3ce8eadcf6c4",
         intel: "de7a74c00cd48ed6f7530964aa1c4a9152bb94bf231f75821c89e83069e11398"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
