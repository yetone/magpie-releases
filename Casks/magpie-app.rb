cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2378"
  sha256 arm:   "f03c974e0b21f36784422aedf9e732d5579ab62f979cd8c8462c90fa90922b2e",
         intel: "799c2750af9723d6f1015bc3026b7b9fabc070fa6ffb9043a39213665fe4763f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
