cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4649"
  sha256 arm:   "84afd5d9db5f859ff483b9896f2ec608fb553a43aec38a0c2ae0241e81b4283c",
         intel: "91a33c86f2c07d0c7b67df979c20f1285c5ff89dcdd7d243d943e1b3b76d3dee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
