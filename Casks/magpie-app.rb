cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3783"
  sha256 arm:   "d5a7f1d8796939bf2e15e9cf9642a176c2276b8c766b70dde09bb26e2e118354",
         intel: "20a25301782dbf9126befea059fa8ad5acc0f39bf6d673ddfc4d3642bb003fe8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
