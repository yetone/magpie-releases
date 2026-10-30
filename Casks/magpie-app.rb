cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2158"
  sha256 arm:   "69caa0766ebd16a12a5541096fad53cfbce2d52acd3ecfba8b204ad030cf44db",
         intel: "fac846717d6b65e9934685aae5c083a291f2e6de96bdb95bb1ba4e384a8a3acb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
