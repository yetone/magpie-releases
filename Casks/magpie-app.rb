cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4809"
  sha256 arm:   "24a1f70173306ec5cb5476f0077889760d684f324a9ccfcb029c70b4584a7157",
         intel: "bcd804e0acbd0ae82094f270dead2548c1af20cbd5af586ffc1c4c247d608d39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
