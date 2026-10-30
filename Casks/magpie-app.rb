cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2120"
  sha256 arm:   "e11948157392faf914114d72bf6fe8d7d90b87bb914847f699d1e1c3664d6340",
         intel: "7da626e6a0698966aa0ced003907ec11c3a17394797573f69991e48f94e71029"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
