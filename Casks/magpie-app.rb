cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2808"
  sha256 arm:   "8da587471ceac8b35b86f81347ba4a736fad13b0c0f610ca5d12dbbb414f783f",
         intel: "a28598c1c5e2236d7420a6a8afc83ee0b006b3cc1e72d21c346b688479362cab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
