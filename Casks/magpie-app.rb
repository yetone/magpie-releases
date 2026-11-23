cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4696"
  sha256 arm:   "2294f921cfca89f8ee61e291379c8a12b587ee70a0f6f9b9881ed1913e7eb357",
         intel: "e9b18e32d4861773681a559827b42388149fff4b01634504740612b171cdd899"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
