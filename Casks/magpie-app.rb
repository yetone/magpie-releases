cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4344"
  sha256 arm:   "1eba806dfca35e4ceda2166629002d130c74958e3f655446f5ba6bb39e7ee22c",
         intel: "94913cf536d71bd6ead7f944ab03ae095963996ed34e86db00bc41b1305e4fb9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
