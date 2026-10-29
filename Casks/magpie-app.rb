cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2041"
  sha256 arm:   "c43a8c7208d6ee63d8efbf72a30fce86c0b33cb1ff509a67d98b19e91579f3e7",
         intel: "a39bc15dcae3b681d698014cd8503621be26cc94697fd98947b77f1cb60d4f5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
