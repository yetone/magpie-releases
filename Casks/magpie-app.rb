cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3356"
  sha256 arm:   "3cdd0d37124b069d11e9f180e088423a17b4dd1bc630c890717e8e598983b677",
         intel: "de6e689e97f7349a8c611f158b1a240573e61b6dc2fb7fea5835649e87dbaa4a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
