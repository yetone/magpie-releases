cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1998"
  sha256 arm:   "9be33832b68ee39e53141aa277847c847512e0f370d959ff11512f793564b228",
         intel: "50cf26c0da340ba642a31cab7a8707c1cb307aa61145b84c1cc3b2b4167cb426"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
