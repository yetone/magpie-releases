cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2058"
  sha256 arm:   "889ab40caa25bd745e4da0c98332306d9118c73aac38cbcbf42a42f31c2083f1",
         intel: "f4c565366055a613297114f2ded6638dac8a842c209b30ebb6c7649b2b85dec6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
