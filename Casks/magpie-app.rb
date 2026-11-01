cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2572"
  sha256 arm:   "85be69a8701b9aa71c05ea24e82d7737610e7490995369d9e5a4fee3c6112490",
         intel: "9d30ed8d3206c3a4d9603a8e6cc42f4798e31877b3714bfd7205d19de8b31c24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
