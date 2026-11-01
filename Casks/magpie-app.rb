cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2568"
  sha256 arm:   "a8f5aae544534d2d21eb6c8a6f5ae798de520adff122eeaba363fdbf5bde30a7",
         intel: "129e0617667645df72612e463d279b09c5a02f91a778a99a66889932aa89249c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
