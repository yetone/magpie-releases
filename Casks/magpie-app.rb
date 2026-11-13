cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4021"
  sha256 arm:   "6c68c71183554d363c0e408d6bd3ecbf9aa5396bfe5794f4c1eb4275ea655080",
         intel: "d7127b9f7c12b28341f31e31bfee310ec128734a480d58f04d29aa4c4efec0e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
