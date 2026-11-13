cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3962"
  sha256 arm:   "3854e1d58eb87254d1bc4f1427354e4bc2ad68363db2b25087b327d0c4661679",
         intel: "74c4d33657dfb44b7da30c6a265fb74b74c6d15a007af636a70c6a1bab66734b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
