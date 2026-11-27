cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4944"
  sha256 arm:   "ea5f895ed784cccaf67c2347eae20428d3e4d2a03db0351e2509a6c5b115a2c8",
         intel: "2c573cade8fa051e1784abe9172b357266548fdd45a58d8d0254c16f0e6edf01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
