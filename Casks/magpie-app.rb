cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4089"
  sha256 arm:   "71d6c00d726112c9e1bf4741fb2768ca31889f755ab3c9ff7a0d1be5ca302d6f",
         intel: "aacff38b8e343c187aad15e44127d1af9c0d20ced8ea274e4712a1e3c8b9bfe3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
