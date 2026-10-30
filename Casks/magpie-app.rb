cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2274"
  sha256 arm:   "e69966ac44943cbf714eebcfea528855236063a3764118e78f7e3decac8597e1",
         intel: "6b976fd69bbb594f4586e128fecc3672309bf463e76c7fbcf688f9cbe8378734"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
