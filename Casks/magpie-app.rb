cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4403"
  sha256 arm:   "78fcbb7cded9722712bd6042df137a755c13177dfe9e2634216cd8671186619d",
         intel: "a05375e50df358674ed04af078e28dfe6a3f31094a7a964deffdeb5a52410445"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
