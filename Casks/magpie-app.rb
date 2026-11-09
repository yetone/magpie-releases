cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3392"
  sha256 arm:   "2c65eea075012d1a8de7be9efcb1db3ec61c09cfc41e64480d86f831563313b0",
         intel: "4a61f9098f1754b2920dfad21b46e887313a1e53b7e863ba9634eabe05582c07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
