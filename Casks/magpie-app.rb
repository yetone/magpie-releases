cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2487"
  sha256 arm:   "c4412824f49abaebc7c2b858018d0fd71bad18f3c242fc64e689c84914832300",
         intel: "452767f26cc4a8344dfdb05ae1d3ed3b96eb8dc3b0e1042eaacf00028754700d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
