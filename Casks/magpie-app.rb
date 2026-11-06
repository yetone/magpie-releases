cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3089"
  sha256 arm:   "0b0316c888c5d5afb51429d2e626028a0a5f96c0e25df35cec5ac33f4d11c415",
         intel: "81c33e7f47c1fa388496039b8ffe40a1c93e426bda3b76c01cb9dd919e6b01a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
