cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4445"
  sha256 arm:   "a761e2ddce24ab1f61ae2bf1dfc940d0f74d11085c9b857f1ff109af8027fedf",
         intel: "ac594c6b75fee26958f8bbafbfe1850060029bbc0da325cb4b3a9cb4bd289825"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
