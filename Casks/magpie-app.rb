cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1010"
  sha256 arm:   "658ae0621a1932a1b673d3e0d968f03e5eab2753e23fb837ab54849c446016e6",
         intel: "0537b1b92378df80f8fb2cadf4f52f8599e6c70b9b8ea0155aff9785ead7c83e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
