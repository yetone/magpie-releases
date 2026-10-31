cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2410"
  sha256 arm:   "74337234e94e69b68fc5c3bd9cd8badee5ca8f87d08ee78f905febedcff08c2c",
         intel: "bddaa8a687ef630e725e34a9c252c3e6fb7fbc2d67d39a437253336e7c665356"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
