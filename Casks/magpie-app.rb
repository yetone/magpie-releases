cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4890"
  sha256 arm:   "906c240fb2413936656d02bce92e3b7d4bb74c3cf7dde0a2cafff4d01d73ee42",
         intel: "ac990b2505fbc1729e0d5030c0aba45abbd5d512769b2009dfefbbe183c89648"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
