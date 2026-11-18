cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4410"
  sha256 arm:   "87d4eb320dbe9dc3533aaa8733eac8ce2482924ea47d91f4d8dc672c5aa0a4dd",
         intel: "a9fffc9b581bf578544c70e66b78e1d3284c95e6ba29cbd6bf88d15e7e2a5df2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
