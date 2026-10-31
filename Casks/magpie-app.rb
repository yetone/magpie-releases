cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2381"
  sha256 arm:   "5f255e050c8d03d9bab9c1ea5a6414bb7dffedef196078e41032bbcfcdc74c8c",
         intel: "3ba88802f5f99afcf32b705768f13cddb04f15d1a56a26ed1f0142fc0fd78e05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
