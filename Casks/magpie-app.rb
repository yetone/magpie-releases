cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4768"
  sha256 arm:   "c435d03347dcc00ed4f3979ce8b24c76555e72c9c8bd2036086ec42b3db1447d",
         intel: "6e791beb1ac14af415c2c1b1ca19c7d709365f258933c0ac47444122648a2124"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
