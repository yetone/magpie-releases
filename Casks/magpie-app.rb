cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4377"
  sha256 arm:   "be376720d7f988016d468cf29c4ed6e4104b7dd48a61b2699ce369a874a5ba4e",
         intel: "bc673f314bea699451e241ab76a637a4daa1cff4dac658bc544aa574bb092803"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
