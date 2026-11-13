cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4084"
  sha256 arm:   "a3bc7b767b688a872f6fd74ac88f9770992b600ebb1036b198fa4bd8a01dc147",
         intel: "c4838703b2a6e5120ea7ebcb9d97849c0e7524e4ea70992059649e412cf9c0c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
