cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4422"
  sha256 arm:   "8bf6f48eb028408f204b1db97e91e40ede2976814eed754d4944156d599b763c",
         intel: "d2d6b7e99941738fb22ad8573a7e18fbeceea7fb385c5e1f72f38deb6ca81088"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
