cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2254"
  sha256 arm:   "5d9c414113749d84055a90b7ab3fb44992abeeb234349731e40986b228cb2358",
         intel: "6b369c5e0524710884343d65a4fdeac43efde96458176e9659a5af3c8d1e0564"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
