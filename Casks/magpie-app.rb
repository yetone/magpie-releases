cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3890"
  sha256 arm:   "186c725a0b2c998cfe3d535fb5aeb60b1da7acdbe58ec710fb5f77cbade2e628",
         intel: "eae2cd90b85d619fd9dffd1374e1974a918bbeea5acb80becf89260685c73a95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
