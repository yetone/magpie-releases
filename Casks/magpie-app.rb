cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2856"
  sha256 arm:   "fd02556eb7f792f029953637ed5caf674e2a05847897a76cefc4f8c19e5bc767",
         intel: "7b81247198c3fd8ec91f45ff70f449ac9e92e3340321a743a2e5b116d565ef14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
