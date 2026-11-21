cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4639"
  sha256 arm:   "e5302876da5238b526ab12018bdb46b25dd333bd114a84fb8e140bf41aba41d1",
         intel: "c712e2467319034f05dc078e8b08a1530ad302f463357bac717b45da29645a2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
