cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2001"
  sha256 arm:   "66b9127fc37d912650644a5b238b1c44423c2e4daa9e32e7e95a9b485422eb32",
         intel: "00f044cd890325bd27f9de991f719cde95d759037455de9644bd564fe2a996ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
