cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4976"
  sha256 arm:   "87dfe401b090d0178992028274454d0ed7b4dfe5f416ed416ea8c053156e696f",
         intel: "68e744962afd24e4806cf8053d3c60b2d0f48dbd2697d686cd57084078ace667"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
