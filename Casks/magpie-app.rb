cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2091"
  sha256 arm:   "43c87d1f585101737dac4371faf71b58f4ab5e2ee74428895cf39806ddd8c2b0",
         intel: "574677c0f0cacc8b9da1117668bcc7fd7fa2b1d4fef81dc4e52b48334443ece6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
