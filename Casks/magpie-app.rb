cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2308"
  sha256 arm:   "6873aa5a19b9eb0cb48798b8aade4fd012316e0a7704b78ec17a3c5ca4143576",
         intel: "9045fc45f837b5b7361deb9d527a53eebec006685082400dcc1dd9907a0c4a1c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
