cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5001"
  sha256 arm:   "537d54920d495272b8cd691679a9afda3ce8e3d40a951d24fc741d43c93129b0",
         intel: "8cf3f554f0dbb1e515ac65c4e9a5894609f627025276d82494ffd24968ebf3d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
