cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1166"
  sha256 arm:   "70fe775dc89b98c813d77ddf0632da187e132c3f492f4bac371c18a0f3c89375",
         intel: "f0c21155117a69554983e8fcfc7c744b1c6b5070e5f29f2d87305e39860b8917"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
