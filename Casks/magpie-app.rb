cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2678"
  sha256 arm:   "f930839b6158a76359bda3a1456ddb98a39a000872d309f203174836618d56c1",
         intel: "e9373a111c3742424dc3fb1d091cac9eec035809206fa38f348df89f511503c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
