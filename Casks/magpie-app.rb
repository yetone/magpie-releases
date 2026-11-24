cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4739"
  sha256 arm:   "15035efa562a5aa748b7040f01f691620a03a6cebccc7ff64022f0cfb4112583",
         intel: "c8e40525cf4bf15802d23f64f6fe370c40c55ae9821b4b89e19b58a31532a8e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
