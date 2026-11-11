cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3699"
  sha256 arm:   "e40a6d650c74fc6a5fc89c229f1a41f82ec35e34cbd5a7406ead85b4099d1a22",
         intel: "66e1abd6cc9d7c98cca093039b1894437d6f2f416758aac13cfd7e6c0d448d12"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
