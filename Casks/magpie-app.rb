cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3269"
  sha256 arm:   "9c3c10274bb9410fdb75e23e4f34097ece04d87f4c86efc0296d478cc711d498",
         intel: "606536cbc99a5101fce1d0e4703f96217999d38d308ea1f0ee03f067d64998d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
