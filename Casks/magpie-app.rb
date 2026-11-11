cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3742"
  sha256 arm:   "d8eb9bf54f8981653cd6efe778876a9fa8bcaaaadf7eb641d76e98908fb16919",
         intel: "4daf576ae64a60f3d810fc02d8bd7b783594b4a43949b9c3866512d9b17282fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
