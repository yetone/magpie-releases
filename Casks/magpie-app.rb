cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4037"
  sha256 arm:   "aa2c743913afd8d27b2c73208809887cdd7f5709a2a347d2d032c73e8ba07b16",
         intel: "4386e83700deeb61968fa533e298d4c225d3ac9faab26c7e3afe93786ab67a4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
