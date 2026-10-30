cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2117"
  sha256 arm:   "2df856bf626401984ffd338c1f0a17e2ac65cc7226d08cb6308d72c63c4adc62",
         intel: "5d4dd2d645085d6aafe7b0e197dfbbec32ec4cd7e4babcbcfdaefd8f161795b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
