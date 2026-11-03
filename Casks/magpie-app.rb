cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2811"
  sha256 arm:   "c208e8befd9147a08d978109e28d17ca76cb2fd49f61181a8a071e522442df33",
         intel: "fc0cde9c862e314561d761bd0c0e9a666210e806b5727775c3f4395a9d04f459"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
