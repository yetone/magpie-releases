cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2863"
  sha256 arm:   "099991bbc889614556e33f1bd732a4ca4820f324c32199a54011b4fe6271f4d9",
         intel: "c98e153559cfc87331b275ae18dee23e108b1ec312ad83520d0612fd7bac18e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
