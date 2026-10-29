cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2088"
  sha256 arm:   "61baf6380623201833520f6d0f21c553f1b4dc328f93fd417fbe1ca566723657",
         intel: "f95e636c69f35d58a787d4999a44baa9386c294a8220ea6ccfe315b47ce12e8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
