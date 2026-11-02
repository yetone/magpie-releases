cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2733"
  sha256 arm:   "e310508887aa840575d9dc1e04d2cac9f2a26d0bf4a92cac7d2c37c0409b1b0e",
         intel: "4a4bb8a53a6d424044c5864b274a82024cef56382d7090120a66d7d1de10484f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
