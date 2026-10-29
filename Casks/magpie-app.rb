cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2053"
  sha256 arm:   "0ac1377ed1ef958bfcca8513cff8b0548cbf79897664482b5ef72dda2fec7807",
         intel: "64cff1ad257ddc594fc9dee8f4bdf8d7815f553aef46e6ab48e7c0c50cbe70cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
