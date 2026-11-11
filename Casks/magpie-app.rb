cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3713"
  sha256 arm:   "3b517e2627de8a63e469c71c05f399ee659d9c373614021751b6b788e042b011",
         intel: "6edf9a205b99872a7dc1e3bcd9a523a8578dd48de915edd7962542d7f0eb1628"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
