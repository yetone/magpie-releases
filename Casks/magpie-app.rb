cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3056"
  sha256 arm:   "a9ff6c2d94576e5c8555f5bac9e57c4cee5d6ff3ae217a0fbd1bd7b500e2edbc",
         intel: "4ace3c39180f329d12bc8f9b3b62ea66484511ebef8c8b450369edb7b9c8dd69"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
