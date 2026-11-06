cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3124"
  sha256 arm:   "72c3e0cfb8ca14a52b0a349fc022dc006f956cda21c44574f2ba737388b0108b",
         intel: "77b181c71e5c80b827342a0bae078b1fca8da33db396d7989096e0061a29c9fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
