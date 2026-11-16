cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4322"
  sha256 arm:   "869844c2b9b13186327d3fff1a14ea7416b7f7d6784196c0275c027883f2a4de",
         intel: "de4db4f0352a0e22d06c658f807ee4b343c92fb08980647e5ce3e99dfe7cbde6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
