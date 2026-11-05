cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3012"
  sha256 arm:   "aedb53ce40b99dcf43628cee483de8b59dfc4010b9f8e7d4e58c7554427097af",
         intel: "468d6937ba4f004fb9ae18cbb59714f5fe660e844f052d84e9a920d130349e2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
