cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3428"
  sha256 arm:   "afc40fffe30ea010f8835918873f8e08c150152247d888ac84b6da85d7a39660",
         intel: "d1264558b308e93c9a54ee6cf08b7632454a3db85dd47acb816ea975c35d7340"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
