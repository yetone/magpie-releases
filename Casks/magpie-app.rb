cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3405"
  sha256 arm:   "734f6ac613fa816e37b219fc2db57e6471c3861572cd832d2404d971e80883b1",
         intel: "1f8986a98a475bae3a3135038923de1aac7c2139ea2ddb8e82eba5fe972df6fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
