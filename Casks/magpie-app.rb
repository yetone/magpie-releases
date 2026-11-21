cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4656"
  sha256 arm:   "95d5593244f4f43000f37c3af2774a52b1388f49cf91d73c21bb1ef0674081a6",
         intel: "f0931934811520eee221aa9cd1f25c5af0de04367d2c6500bd01c0dc373912b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
