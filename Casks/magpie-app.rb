cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1107"
  sha256 arm:   "32677248b9259ba9f246f109b5292148d7c12a30d4068e16438a3408d1f61c64",
         intel: "4c491c67c52d92f84b785922038244cc406383b364a1454f0fd58cbf716e99cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
