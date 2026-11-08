cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3302"
  sha256 arm:   "0add98079b01d908bb4c74d7df204c05b4825376d3712e1c94a60310ccf0dd13",
         intel: "6d6ab644ad69b7c2fcb8e3e98ff127ba185ad04cb6775d8393166c555aa606fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
