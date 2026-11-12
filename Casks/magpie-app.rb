cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3861"
  sha256 arm:   "7d8a7f8644af94e21ac84dfa3344b99c874b717f76c188709428eca73652abce",
         intel: "e1dc7f2664e44babdba57dc74d95330cc66785d0fcb06aa744564308814f360e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
