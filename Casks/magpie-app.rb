cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3017"
  sha256 arm:   "4526b7107cfe25c7c272781ac7854f2542215c6ff60f6ca7861d950848adda58",
         intel: "aee602940a352e46c0b4a0d0f51baa8c6f019849769cb4831272b35a4c36d3f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
