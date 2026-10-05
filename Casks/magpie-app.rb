cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1036"
  sha256 arm:   "5cf007f14aab00cdf29946343aeb1a4858af37f4741093a25cba743637c2a13a",
         intel: "39cb693f1f065cf79d511dbef924b9dc964cf095ef4293509832a528b1541226"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
