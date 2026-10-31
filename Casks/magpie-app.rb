cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2333"
  sha256 arm:   "569b2de6aca201be8e18a7439c7368c695fdb4cc792ac6ea68439e6fffbc05b5",
         intel: "a276f289bab956b0765d9a49e2d1a1a44b2b8fb8ab79328c5088d4d724fa6cf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
