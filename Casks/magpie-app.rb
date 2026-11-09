cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3378"
  sha256 arm:   "6665f4e3d9ef3161d8a6e57987d73cff64ed9aa673d6f29b19064a418e28eec6",
         intel: "a94292d802da0cfe62cf7a5cce81fa6b6889a9b2732b6c1eea0fba9861aec1e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
