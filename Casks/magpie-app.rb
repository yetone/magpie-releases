cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1091"
  sha256 arm:   "f23e27bea799053890d5802491d3a75915b4ae50fb4ec2745ffcf1ab7dafbe93",
         intel: "c7c82646638b86eec47c8aad50c499bbdf158fd79bfae03a828afce2b0e97c7c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
