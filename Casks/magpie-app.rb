cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1117"
  sha256 arm:   "6f31823811b1c05a3804000ddb70c0da4e786d847570b58f76bc5e431e27f942",
         intel: "513b6d12416db6e4338f1a1ddf11c9908334f0c14ef381a3544ce4a3ff8fc1f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
