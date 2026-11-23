cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4707"
  sha256 arm:   "58d25bc46e1985a04c231439faaa70061ae411d347a02189952732dc342d8c74",
         intel: "07d668bb3064dfadd7021929b5c29034c441bc28d492e8e63696fe9365065603"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
