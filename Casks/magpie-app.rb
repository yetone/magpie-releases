cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.966"
  sha256 arm:   "176ff319e98e235fc1e2c5511123c427724f6adde0e54183e094ef15f8673e8c",
         intel: "0903e44b701a6656d1c2d5d6dbb8c7ec43f5041b949cbea5a95079883ecd1bf5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
