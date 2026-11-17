cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4352"
  sha256 arm:   "7e7d5668e86a6a21f5955c0f4a311bd14e57d61601dbd305802263f9b8306e71",
         intel: "1935c6c2d7cbcaa2cfe0f7999ed90e70c54b456ee6fc0413ff86149f50144b57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
