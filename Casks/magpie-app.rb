cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.154"
  sha256 arm:   "4d808d96878a00fd372500fb09b80e14d0c676251426d4e68b5598e9ec653376",
         intel: "3e4f121bfdf4f91fa9f30866296f894ff93dc92bb287c42b5038d6a0a8b3f4ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
