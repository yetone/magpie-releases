cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2486"
  sha256 arm:   "9589619ae23a5414b6270d92c6eb77dac418aa9a3f976f91b4e3b43d221f5cd1",
         intel: "2acd2b57362c37c5f0d19ae21827aa6e28250a52189cb1a8c7e33e6508710d79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
