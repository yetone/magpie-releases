cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3193"
  sha256 arm:   "5a07c9713b5231593960d7948048d8aadefcbe724baecae0ecd34774356314b7",
         intel: "62e6a240db7a570a7fb07a4992c715db8658252d0ac1d110ce4edbe5ff22bbf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
