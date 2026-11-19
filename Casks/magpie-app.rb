cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4505"
  sha256 arm:   "6e64b4933b9b6c64e5de5903aa07b1327a5526d1046c226a04a1bad1077846fc",
         intel: "4ba34bf4ccf382064bff10f005c720a9a0fdee5d20c49c88c3e4a0d88da26720"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
