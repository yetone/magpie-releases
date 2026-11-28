cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4987"
  sha256 arm:   "5744409b8e33a9edb54fdbe8352cf676a556a7a3b2dec120ef4a251fe53eb84d",
         intel: "ae620b9551f06de532b0e480f96b3ccc61b6c72f6819f4b6a9da60aaec08a7f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
