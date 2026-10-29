cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2019"
  sha256 arm:   "46ee1b4daf6ab912cc5216183ca098aae66b64d261ae872e472419b642e5185f",
         intel: "eda92ecb010ad63f83408441e96830a19cb3defb7822b0a97d7a1f883aa1b8e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
