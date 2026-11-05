cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3043"
  sha256 arm:   "f6ca6b7ad966c5fc783cbff13cd412de1c3c535f44641b0cde56ec954bf9ca17",
         intel: "b0360b3bac0f210512c6a2cf87a0f9676d3848126d9eb531f8fa83947a4487b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
