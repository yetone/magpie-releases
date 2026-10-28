cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1855"
  sha256 arm:   "22150d9e0dc90d81c6beaef96f896df2edcf217356ae56d32665ac24472d74a5",
         intel: "c3724a0043ef29a5e7c14cfa9b00571892a82d78bbbe8e1f082e76c656649b46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
