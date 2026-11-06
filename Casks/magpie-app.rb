cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3176"
  sha256 arm:   "a58e299c920435fbaba78bc7241fe091f5877da8e608658903f520c3e5d429e6",
         intel: "209af51e73d2d69520b0bcd8c7ff61243645351cfbcd97672a6acb15d1990615"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
