cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1891"
  sha256 arm:   "729cd290fbd9325696122f2e7be47a571564a009a784b928d70c3f09a4b891ee",
         intel: "dc8bb1575d9b0e7411d223fadd9cf77641bc0d62ecbb89b197958acd6520cabf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
