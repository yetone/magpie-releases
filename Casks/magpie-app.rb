cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2266"
  sha256 arm:   "45eae939237c78f35e19110df23eaa6853027e1e1e6db7420839999f311e6b9d",
         intel: "54f626077a28ea07e30393ced368b5f3493093f586c743eb1598c88fb24e5656"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
