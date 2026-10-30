cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2131"
  sha256 arm:   "8b39392667bdd913ed6ff44a90fcf40ca9538cd766e3f134a0e1a5b13d521ea8",
         intel: "d9e965de8e9d37299d0cfaa3ac94cd328b660735679f55a3d3fb65fa16249a2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
