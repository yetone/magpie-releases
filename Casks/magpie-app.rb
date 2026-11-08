cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3305"
  sha256 arm:   "9e250ee318ea3e00d408a768336b0dc869b5afc47499ed9308d0223ccc2f99d6",
         intel: "f236b48b906d180289a3f32050f313849918f1c0ae72ebb5129b01c981b5982b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
