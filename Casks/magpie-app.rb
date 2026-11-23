cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4690"
  sha256 arm:   "47ec8ee4dbd305fb77ac5212e5e4bf759824051318812160d8b07c101187d102",
         intel: "44aa26263729388fbbe196d183995ba34368649ec0e148c4fa0d01d098e5a233"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
