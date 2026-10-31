cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2314"
  sha256 arm:   "00e1390026d351c5b331effd63d96e11eb4f64a57d0939975d40314c2036251b",
         intel: "dd63b9862db5d22acedce3932c259e68f5066445645f291857e685383442ba65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
