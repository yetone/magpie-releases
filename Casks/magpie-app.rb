cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2336"
  sha256 arm:   "949ae477e42fed8a02e7fcd646ee37911a21837999b7c3957a49ad9fe6209e21",
         intel: "1a12834f0bfa7c03ac990320e0e6ca8bdbc5db6ccb9652a55b6ef2bece4db492"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
