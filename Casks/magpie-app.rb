cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4381"
  sha256 arm:   "a29349f37fbf8f28deba181322f6bf3b8015b19dd2a9784755332c453cb03644",
         intel: "c58799dc7b06fc22cfb90fd0cde7366fcf12f806377346a4f5244727525c07d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
