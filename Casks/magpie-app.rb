cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2267"
  sha256 arm:   "66e340bdf3622dd2bc3f20afcc12f94a00c7cc78af17d99d61ea33fa40022dba",
         intel: "a2896a0b81670e0131a2e899c535c32f8677bf407cf2cf6e14aea63756e1c11d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
