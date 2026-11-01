cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2506"
  sha256 arm:   "47054a93b767b4d11d10eb44442d5f844a3db0f27f6a0b8bbc3b220a29699052",
         intel: "3b6382a31a0c424a7747038980709490b0d9ed0f725f03c59ab4b96f0255a3cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
