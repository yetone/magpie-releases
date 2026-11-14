cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4177"
  sha256 arm:   "5a2eb5ca8285b245c33ea2407b8cd8a9ddc5bd7f1555ebf47a165def60724f00",
         intel: "9cc0ca79e11bd0ff99756b7f15cbae2db54ef8b473db0be4f87ee86166f57c01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
