cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5005"
  sha256 arm:   "e8d07d2cec964ef52449e56c62d972bdbed603b11ee4b540b9f4058a79d6c86e",
         intel: "ac1e3c0c940d72ac53253b847ed49b888a3d77f0852293b5702f7e983a20d094"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
