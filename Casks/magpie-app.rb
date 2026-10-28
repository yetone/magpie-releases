cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1900"
  sha256 arm:   "700d3c024ae305eaee10c1cea73d51468a535f526f96cf824d8fc6f040c9d599",
         intel: "1a7349ad4b5f1650d0ac54350960ce20020fd468b567ad121593280209489db1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
