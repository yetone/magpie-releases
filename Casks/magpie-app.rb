cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3019"
  sha256 arm:   "60ad0e8fefce5dd71f3195460c73784072678588bcb5726907eb662c975ecbda",
         intel: "29e786b91a35a3902d7d0a9c0b41cbf51b6323d3f6bddcc91be20bfb21297e47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
