cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1865"
  sha256 arm:   "fa093659df26717f1f25b1aa5f43806a50d0a21a98c05111cfe7e4a229c69c87",
         intel: "508e3228e6edcc4bce2f6d64ad938515c7a315238b2d2075059a20d8b155b6ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
