cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.934"
  sha256 arm:   "459fcdc6e91454f327b759a3689a64d2d50320e29e4980d94712d857fa7c2d5b",
         intel: "bfae62cafb6cc57896cf0e663b2f424542af0f91bf56a4ae551ba3f783ad6cc9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
