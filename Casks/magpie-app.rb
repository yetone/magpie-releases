cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1929"
  sha256 arm:   "797a616467d938f9947905f302dc9bf7624d52a131c7ee932dc725b8fad054de",
         intel: "1a24b4b6eeef81075692ab449fa35e597498230e2878a8ffd01bfae5ed6ee43b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
