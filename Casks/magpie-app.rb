cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2891"
  sha256 arm:   "113be87b40b5045a837b981b8058795a1501a56faff056770d87389737b3b8cc",
         intel: "8733d2ef647ec411a78ed291ac72b55f5e7ed61eb220fa9bdcc903af648d8658"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
