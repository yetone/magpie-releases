cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4476"
  sha256 arm:   "8fbe68ce6988426b3cf7c2d71365f854ed5967dc842241db68293f845871dcf5",
         intel: "30988ac8e2caf71ff8424cbf18cc117405f5e631868d02bfdc2112df49f3695d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
