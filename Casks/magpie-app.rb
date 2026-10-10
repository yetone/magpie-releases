cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1151"
  sha256 arm:   "3fb3997835332bb93bf309ab75a926d189383050d4c03607b395d26dc476b530",
         intel: "def9a422e0aa11d23a7e2ed439bbd7057f388686b77775aa147608572f353794"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
