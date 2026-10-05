cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1038"
  sha256 arm:   "abdb4c3b87b8d165bfdfd83d059706c2e6a8187033cf77872a3ab9c053530aeb",
         intel: "8789a6d3e704a8def30c878879e510233a0f2d5840df6ae0d09f145f7341366f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
