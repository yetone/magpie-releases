cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1140"
  sha256 arm:   "66e5a2faed91fbd61cd624222220ef74a3da11e27a0c9e1692daf570686e4480",
         intel: "91e5d073828e7e8aece73ac4d5299937e7d8b1bfe401b94059afa95c21072d12"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
