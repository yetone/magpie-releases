cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1840"
  sha256 arm:   "6d62e13e1978690972deaa8e101be6c2215962399cee020649aed822fd411926",
         intel: "0529ac21d46a5fb984b9a42d24ce0134b5b724a208217a8b42551be31483e2c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
