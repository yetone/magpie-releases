cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3977"
  sha256 arm:   "27a8c074bff4dfe8915098d3de506ab5b06972c9a2dec5eb3c3fa83b60cfb360",
         intel: "ed162d54c29f911eec5325b752cb6d7118602893f3e9c964f59bbd9a997c046f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
