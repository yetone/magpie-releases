cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2461"
  sha256 arm:   "188460abb87bd6d39eac85c31df5569a7f687e163f79eca3edd333e205f0a9e9",
         intel: "e9ddfef1063689d81e3a20ef72ce294d81cd7d99835a226c77afb87b0203e1c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
