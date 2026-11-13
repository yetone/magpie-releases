cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3994"
  sha256 arm:   "e9940770ea11297ac184c40f4e03b8c2bd93155060540cfbff32cf476165a59a",
         intel: "028b1632b9f6001cc8b9a6082a029f721a1c75d66b857e70e777e261629b640b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
