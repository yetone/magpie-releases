cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4818"
  sha256 arm:   "29d4b7f721d35d9859bc7b188ada7a2c417efc6d89a0ee4a1b4dc8d24bd3519e",
         intel: "5e03c0f6fbfd804dc9c68e7636acbd86d06e02df7baf49f2de6ebe408c43a005"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
