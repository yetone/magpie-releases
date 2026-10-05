cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.967"
  sha256 arm:   "1a53935042f4b4cf0ac38dd145601d903bde07a4106549579edb4c8f9e56d260",
         intel: "5f2d54ac122b68cd4bd0281d0aca7ec0251cc0bcfbc2268edf9963bc4e4fbdca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
