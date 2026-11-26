cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4888"
  sha256 arm:   "d93e753b98ab75f6143ba6510cb8a19d6a7dc5cf76233793d69df49738085080",
         intel: "de98094177c4622b80a108b1720e626ad81995630882a503de8f23eaea46aa35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
