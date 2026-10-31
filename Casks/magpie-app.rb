cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2289"
  sha256 arm:   "c704be0d96ccaef64d5b6d7cdadd92b6bc0b650b5ca0b0a119b1c5d8900fc6a0",
         intel: "645c07cffd80bd09ce32a2e4748c13c69a4e91c71d24cb206812d3ebfc5e166f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
