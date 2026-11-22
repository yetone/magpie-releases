cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4682"
  sha256 arm:   "727cdd923262ca32b09f117921d4dc20c534b697d8578041df521b91ff0e95cc",
         intel: "0089538ffefd32d7727b2d7592c6af9085745fdd3a379e7e0745e55794794b3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
