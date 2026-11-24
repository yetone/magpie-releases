cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4752"
  sha256 arm:   "fd9ef484f38c65c120d2ea20e4a06508527dccb6283445d4fbcb0b49169e87c9",
         intel: "317bdc80a4ebfe916e670ca873d5db47aa5fd9562cbc81b0fcfbcb91c16d40ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
