cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2011"
  sha256 arm:   "937705638749105357c1a36b66ef659fc9b6ee985630bdf0c741ccf447cc88be",
         intel: "01f7cac479378c1f7df12c711c9cb856fa98e6720f3201776f73ecd1ac73f57e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
